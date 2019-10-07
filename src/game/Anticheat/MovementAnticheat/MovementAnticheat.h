#ifndef _HEADER_CHEATS
#define _HEADER_CHEATS

#include <array>

#include "Common.h"
#include "Player.h"
#include "Anticheat.h"

enum CheatType
{
    CHEAT_TYPE_TIME_BACK,
    CHEAT_TYPE_NULL_CLIENT_TIME,
    CHEAT_TYPE_SKIPPED_HEARTBEATS,
    CHEAT_TYPE_TIME_DESYNC,
    CHEAT_TYPE_NUM_DESYNC,
    CHEAT_TYPE_OVERSPEED_DIST,
    CHEAT_TYPE_OVERSPEED_Z,
    CHEAT_TYPE_OVERSPEED_JUMP,
    CHEAT_TYPE_JUMP_SPEED_CHANGE,
    CHEAT_TYPE_MULTI_JUMP,
    CHEAT_TYPE_WALL_CLIMB,
    CHEAT_TYPE_PVE_FLYHACK,
    CHEAT_TYPE_FLY_HACK_SWIM,
    CHEAT_TYPE_NO_FALL_TIME,
    CHEAT_TYPE_TELEPORT,
    CHEAT_TYPE_TELEPORT_TRANSPORT,
    CHEAT_TYPE_FAKE_TRANSPORT,
    CHEAT_TYPE_WATER_WALK,
    CHEAT_TYPE_SLOW_FALL,
    CHEAT_TYPE_HOVER,
    CHEAT_TYPE_FIXED_Z,
    CHEAT_TYPE_ROOT_MOVE,
    CHEAT_TYPE_SELF_ROOT,
    CHEAT_TYPE_WRONG_ACK_DATA,
    CHEAT_TYPE_PENDING_ACK_DELAY,
    CHEAT_TYPE_EXPLORE,
    CHEAT_TYPE_EXPLORE_HIGH_LEVEL,
    CHEAT_TYPE_FORBIDDEN_AREA,
    CHEATS_COUNT
};

#define CHEATS_UPDATE_INTERVAL      4000
const char* GetMovementCheatName(CheatType type);

class ChatHandler;
class WorldSession;
class WorldPacket;

class MovementCheatData: public MovementAnticheatInterface
{
    public:
        explicit MovementCheatData(Player* _me) : me(_me), m_session(_me->GetSession()) {}

        void Init() override;
        void InitNewPlayer(Player* pPlayer) override;
        void InitSpeeds(Unit* unit) override;
        void ResetJumpCounters() override;

        void AddCheats(uint32 cheats, uint32 count = 1) override;
        void StoreCheat(uint32 type, uint32 count = 1);
        uint32 ComputeCheatAction(std::stringstream& reason);

        void HandleCommand(ChatHandler* handler) const override;
        uint32 Update(uint32 diff, std::stringstream& reason) override;
        uint32 Finalize(std::stringstream& reason) override;

        // Public methods called from the movement handler upon received a packet.
        bool HandlePositionTests(Player* pPlayer, MovementInfo& movementInfo, uint16 opcode) override;
        bool HandleSpeedChangeAck(Player* pPlayer, MovementInfo& movementInfo, float speedReceived, UnitMoveType moveType, uint16 opcode) override;
        bool HandleFlagTests(Player* pPlayer, MovementInfo& movementInfo, uint16 opcode) override;

        void OnKnockBack(Player* pPlayer, float speedxy, float speedz, float cos, float sin) override;
        void OnUnreachable(Unit* attacker) override;
        void OnExplore(AreaEntry const* pArea) override;
        void OnTransport(Player* plMover, ObjectGuid transportGuid) override;
        void OnWrongAckData() override;
        void OnFailedToAckChange() override;

private:
        bool CheckTeleport(MovementInfo const& movementInfo) const;
        bool IsTeleportAllowed(MovementInfo const& movementInfo) const;
        bool CheckForbiddenArea(MovementInfo const& movementInfo) const;
        bool CheckMultiJump(uint16 opcode);
        bool CheckWallClimb(MovementInfo const& movementInfo, uint16 opcode) const;
        bool CheckNoFallTime(MovementInfo const& movementInfo, uint16 opcode);
        bool CheckTeleportToTransport(MovementInfo const& movementInfo) const;
        uint32 CheckSpeedHack(MovementInfo const& movementInfo, uint16 opcode);
        bool InterpolateMovement(MovementInfo const& mi, uint32 diffMs, float &x, float &y, float &z, float &o) const override;
        bool GetMaxAllowedDist(MovementInfo const& mi, uint32 diffMs, float &dxy, float &dz) const;
        uint32 CheckTimeDesync(MovementInfo const& movementInfo);

        MovementInfo& GetLastMovementInfo() { return me->m_movementInfo; }
        MovementInfo const& GetLastMovementInfo() const { return me->m_movementInfo; }
        float GetClientSpeed(UnitMoveType m) const { return m_clientSpeeds[m]; }
        float GetSpeedForMovementInfo(MovementInfo const& movementInfo) const;
        bool IsInKnockBack() const override { return m_knockBack; }
        bool m_knockBack = false;

        // Multi jump
        uint32 m_jumpCount = 0;

        // No fall time
        uint32 m_jumpFlagCount = 0;
        uint32 m_jumpFlagTime = 0;

        // Speed hack
        int32 m_clientDesync = 0;
        uint32 m_maxClientDesync = 0;
        float m_jumpInitialSpeed = 0.0f;
        float m_overspeedDistance = 0.0f;
        float m_maxOverspeedDistance = 0.0f;
        std::array<float, MAX_MOVE_TYPE> m_clientSpeeds = {};

        Player* me = nullptr; // current player object that checks run on, changes on mind control
        WorldSession* const m_session = nullptr; // session to which the cheat data belongs, does not change

        uint32 m_updateCheckTimer = 0;
        std::array<uint32, CHEATS_COUNT> m_cheatOccuranceTick = {};    // gets reset every anticheat update tick
        std::array<uint32, CHEATS_COUNT> m_cheatOccuranceTotal = {};   // gets reset when total treshold is reached
};

#endif
