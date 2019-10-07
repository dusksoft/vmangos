INSERT INTO `migrations` VALUES ('20170504203632'); 

-- Added missing WP to creature 10807 (Brumeran) in Winterspring
UPDATE creature_template SET MovementType = 2 WHERE Entry = 10807;
UPDATE creature SET MovementType = 2 WHERE id = 10807;
DELETE FROM creature_movement_template WHERE entry = 10807;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(10807, 1, 5794.21, -4756.73, 776.631, 0, 0, 0, 0, 0),
(10807, 2, 5767.78, -4750.23, 776.266, 0, 0, 0, 0, 0),
(10807, 3, 5741.93, -4739.3, 776.337, 0, 0, 0, 0, 0),
(10807, 4, 5729.39, -4728.64, 776.861, 0, 0, 0, 0, 0),
(10807, 5, 5716.83, -4712.63, 780.549, 0, 0, 0, 0, 0),
(10807, 6, 5701.37, -4690.78, 780.221, 0, 0, 0, 0, 0),
(10807, 7, 5685.64, -4666.45, 775.247, 0, 0, 0, 0, 0),
(10807, 8, 5663.94, -4633.49, 770.941, 0, 0, 0, 0, 0),
(10807, 9, 5652.06, -4612.04, 769.91, 0, 0, 0, 0, 0),
(10807, 10, 5605.16, -4523.35, 761.301, 0, 0, 0, 0, 0),
(10807, 11, 5596.44, -4510.74, 761.037, 0, 0, 0, 0, 0),
(10807, 12, 5578.46, -4501.28, 758.607, 0, 0, 0, 0, 0),
(10807, 13, 5546.2, -4498.32, 757.152, 0, 0, 0, 0, 0),
(10807, 14, 5536.28, -4498.46, 756.273, 0, 0, 0, 0, 0),
(10807, 15, 5548.03, -4498.12, 757.283, 0, 0, 0, 0, 0),
(10807, 16, 5580.57, -4501.62, 758.791, 0, 0, 0, 0, 0),
(10807, 17, 5596.8, -4510.74, 761.013, 0, 0, 0, 0, 0),
(10807, 18, 5607.1, -4525.25, 761.14, 0, 0, 0, 0, 0),
(10807, 19, 5652.85, -4611.9, 769.809, 0, 0, 0, 0, 0),
(10807, 20, 5663.82, -4632.54, 770.918, 0, 0, 0, 0, 0),
(10807, 21, 5688.06, -4666.14, 775.173, 0, 0, 0, 0, 0),
(10807, 22, 5701.32, -4688.96, 779.968, 0, 0, 0, 0, 0),
(10807, 23, 5716.02, -4709.93, 780.711, 0, 0, 0, 0, 0),
(10807, 24, 5732.58, -4729.74, 776.94, 0, 0, 0, 0, 0),
(10807, 25, 5743.5, -4739.83, 776.143, 0, 0, 0, 0, 0),
(10807, 26, 5768.83, -4750.62, 776.265, 0, 0, 0, 0, 0),
(10807, 27, 5791.36, -4756.39, 776.534, 0, 0, 0, 0, 0),
(10807, 28, 5800.65, -4754.66, 775.339, 0, 0, 0, 0, 0),
(10807, 29, 5810.53, -4747.72, 770.679, 0, 0, 0, 0, 0),
(10807, 30, 5825.56, -4722.8, 761.2, 0, 0, 0, 0, 0),
(10807, 31, 5847.45, -4695.13, 756.06, 0, 0, 0, 0, 0),
(10807, 32, 5846.56, -4653.15, 751.855, 0, 0, 0, 0, 0),
(10807, 33, 5852.02, -4626.78, 748.715, 0, 0, 0, 0, 0),
(10807, 34, 5857.67, -4617.24, 746.566, 0, 0, 0, 0, 0),
(10807, 35, 5873.96, -4604.09, 740.28, 0, 0, 0, 0, 0),
(10807, 36, 5906.14, -4580.95, 726.465, 0, 0, 0, 0, 0),
(10807, 37, 5933.6, -4552.5, 719.467, 0, 0, 0, 0, 0),
(10807, 38, 5948.97, -4526.39, 714.178, 0, 0, 0, 0, 0),
(10807, 39, 5966, -4490.83, 706.834, 0, 0, 0, 0, 0),
(10807, 40, 5983.18, -4454.48, 707.231, 0, 0, 0, 0, 0),
(10807, 41, 6004.34, -4417.37, 710.368, 0, 0, 0, 0, 0),
(10807, 42, 6043.83, -4367.21, 715.066, 0, 0, 0, 0, 0),
(10807, 43, 6083.28, -4327.06, 725.178, 0, 0, 0, 0, 0),
(10807, 44, 6120.37, -4306.62, 731.31, 0, 0, 0, 0, 0),
(10807, 45, 6166.59, -4284.45, 744.508, 0, 0, 0, 0, 0),
(10807, 46, 6191.89, -4270.68, 738.337, 0, 0, 0, 0, 0),
(10807, 47, 6245.56, -4242.19, 736.044, 0, 0, 0, 0, 0),
(10807, 48, 6307.77, -4218.71, 722.994, 0, 0, 0, 0, 0),
(10807, 49, 6355.26, -4200.94, 713.745, 0, 0, 0, 0, 0),
(10807, 50, 6392.92, -4182.05, 703.888, 0, 0, 0, 0, 0),
(10807, 51, 6357.57, -4201.57, 713.224, 0, 0, 0, 0, 0),
(10807, 52, 6311.36, -4220.95, 723.374, 0, 0, 0, 0, 0),
(10807, 53, 6246.39, -4244.92, 735.806, 0, 0, 0, 0, 0),
(10807, 54, 6192.39, -4270.93, 738.002, 0, 0, 0, 0, 0),
(10807, 55, 6168.06, -4284.54, 744.458, 0, 0, 0, 0, 0),
(10807, 56, 6124.04, -4304.35, 731.797, 0, 0, 0, 0, 0),
(10807, 57, 6081.23, -4327.11, 724.821, 0, 0, 0, 0, 0),
(10807, 58, 6044.83, -4366.46, 715.08, 0, 0, 0, 0, 0),
(10807, 59, 6007.47, -4413.15, 710.907, 0, 0, 0, 0, 0),
(10807, 60, 5983.53, -4455.11, 707.048, 0, 0, 0, 0, 0),
(10807, 61, 5965.38, -4490.02, 706.943, 0, 0, 0, 0, 0),
(10807, 62, 5948.68, -4526.07, 714.223, 0, 0, 0, 0, 0),
(10807, 63, 5934.61, -4551.4, 719.322, 0, 0, 0, 0, 0),
(10807, 64, 5907.66, -4580.78, 725.546, 0, 0, 0, 0, 0),
(10807, 65, 5873.21, -4606.02, 740.637, 0, 0, 0, 0, 0),
(10807, 66, 5862.26, -4614.75, 744.791, 0, 0, 0, 0, 0),
(10807, 67, 5853.82, -4625.17, 748.087, 0, 0, 0, 0, 0),
(10807, 68, 5845.46, -4654.04, 752.156, 0, 0, 0, 0, 0),
(10807, 69, 5844.74, -4689.32, 755.539, 0, 0, 0, 0, 0),
(10807, 70, 5824.63, -4722.99, 761.315, 0, 0, 0, 0, 0),
(10807, 71, 5809.48, -4746.69, 770.559, 0, 0, 0, 0, 0),
(10807, 72, 5799.53, -4755.23, 775.666, 0, 0, 0, 0, 0);