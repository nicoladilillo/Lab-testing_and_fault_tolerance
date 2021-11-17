/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : O-2018.06-SP4
// Date      : Thu Nov 11 20:44:07 2021
/////////////////////////////////////////////////////////////


module b12_SCCOMP_DECOMPRESSOR ( din, dout, sel );
  input [1:0] din;
  output [9:0] dout;
  input [1:0] sel;
  wire   n3, n4, n5, n6, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31;
  assign dout[1] = din[1];
  assign dout[0] = din[0];

  INV_GATE U1 ( .I1(sel[1]), .O(n3) );
  NAND_GATE U2 ( .I1(n4), .I2(n5), .O(dout[7]) );
  NAND3_GATE U3 ( .I1(n6), .I2(n15), .I3(n16), .O(dout[8]) );
  NAND_GATE U4 ( .I1(n17), .I2(din[0]), .O(n15) );
  NAND_GATE U5 ( .I1(n18), .I2(din[1]), .O(n6) );
  NAND3_GATE U6 ( .I1(n19), .I2(n20), .I3(n4), .O(dout[9]) );
  NAND_GATE U7 ( .I1(n17), .I2(din[1]), .O(n20) );
  NAND_GATE U8 ( .I1(n18), .I2(din[0]), .O(n19) );
  NAND_GATE U9 ( .I1(n4), .I2(n21), .O(dout[2]) );
  AND_GATE U10 ( .I1(n22), .I2(n23), .O(n4) );
  NAND_GATE U11 ( .I1(din[0]), .I2(n24), .O(n23) );
  NAND_GATE U12 ( .I1(n25), .I2(din[1]), .O(n22) );
  NAND_GATE U13 ( .I1(n16), .I2(n5), .O(dout[3]) );
  NAND_GATE U14 ( .I1(n21), .I2(n26), .O(dout[4]) );
  NAND_GATE U15 ( .I1(din[1]), .I2(n27), .O(n26) );
  NAND_GATE U16 ( .I1(n5), .I2(n28), .O(dout[5]) );
  NAND_GATE U17 ( .I1(din[0]), .I2(n27), .O(n28) );
  OR_GATE U18 ( .I1(n25), .I2(n24), .O(n27) );
  NAND_GATE U19 ( .I1(din[1]), .I2(n29), .O(n5) );
  NAND_GATE U20 ( .I1(n16), .I2(n21), .O(dout[6]) );
  NAND_GATE U21 ( .I1(din[0]), .I2(n29), .O(n21) );
  OR_GATE U22 ( .I1(n18), .I2(n17), .O(n29) );
  AND_GATE U23 ( .I1(sel[1]), .I2(sel[0]), .O(n17) );
  AND_GATE U24 ( .I1(sel[0]), .I2(n3), .O(n18) );
  AND_GATE U25 ( .I1(n30), .I2(n31), .O(n16) );
  NAND_GATE U26 ( .I1(n24), .I2(din[1]), .O(n31) );
  NOR_GATE U27 ( .I1(n3), .I2(sel[0]), .O(n24) );
  NAND_GATE U28 ( .I1(n25), .I2(din[0]), .O(n30) );
  NOR_GATE U29 ( .I1(sel[1]), .I2(sel[0]), .O(n25) );
endmodule


module b12_SCCOMP_COMPRESSOR ( din, dout );
  input [9:0] din;
  output [3:0] dout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40;

  INV_GATE U1 ( .I1(din[9]), .O(n1) );
  INV_GATE U2 ( .I1(din[8]), .O(n2) );
  INV_GATE U3 ( .I1(din[7]), .O(n3) );
  INV_GATE U4 ( .I1(n15), .O(n4) );
  INV_GATE U5 ( .I1(din[0]), .O(n5) );
  NAND_GATE U6 ( .I1(n6), .I2(n7), .O(dout[3]) );
  NAND_GATE U7 ( .I1(n8), .I2(n9), .O(n7) );
  OR_GATE U8 ( .I1(n9), .I2(n8), .O(n6) );
  AND_GATE U9 ( .I1(n10), .I2(n11), .O(n9) );
  NAND_GATE U10 ( .I1(din[1]), .I2(n12), .O(n11) );
  OR_GATE U11 ( .I1(n12), .I2(din[1]), .O(n10) );
  NAND_GATE U12 ( .I1(n13), .I2(n14), .O(dout[2]) );
  NAND_GATE U13 ( .I1(n15), .I2(n16), .O(n14) );
  OR_GATE U14 ( .I1(n16), .I2(n15), .O(n13) );
  AND_GATE U15 ( .I1(n17), .I2(n18), .O(n16) );
  NAND_GATE U16 ( .I1(din[4]), .I2(n12), .O(n18) );
  OR_GATE U17 ( .I1(n12), .I2(din[4]), .O(n17) );
  AND_GATE U18 ( .I1(n19), .I2(n20), .O(n12) );
  NAND_GATE U19 ( .I1(din[9]), .I2(n2), .O(n20) );
  NAND_GATE U20 ( .I1(din[8]), .I2(n1), .O(n19) );
  NAND_GATE U21 ( .I1(n21), .I2(n22), .O(dout[1]) );
  NAND_GATE U22 ( .I1(n23), .I2(n24), .O(n22) );
  OR_GATE U23 ( .I1(n24), .I2(n23), .O(n21) );
  NAND_GATE U24 ( .I1(n25), .I2(n26), .O(n23) );
  NAND_GATE U25 ( .I1(din[9]), .I2(n3), .O(n26) );
  NAND_GATE U26 ( .I1(din[7]), .I2(n1), .O(n25) );
  AND_GATE U27 ( .I1(n27), .I2(n28), .O(n24) );
  NAND_GATE U28 ( .I1(din[3]), .I2(n4), .O(n28) );
  OR_GATE U29 ( .I1(n4), .I2(din[3]), .O(n27) );
  NAND_GATE U30 ( .I1(n29), .I2(n30), .O(n15) );
  NAND_GATE U31 ( .I1(din[6]), .I2(n5), .O(n30) );
  OR_GATE U32 ( .I1(n5), .I2(din[6]), .O(n29) );
  NAND_GATE U33 ( .I1(n31), .I2(n32), .O(dout[0]) );
  NAND_GATE U34 ( .I1(n33), .I2(n34), .O(n32) );
  OR_GATE U35 ( .I1(n34), .I2(n33), .O(n31) );
  NAND_GATE U36 ( .I1(n35), .I2(n36), .O(n33) );
  OR_GATE U37 ( .I1(n2), .I2(din[2]), .O(n36) );
  NAND_GATE U38 ( .I1(din[2]), .I2(n2), .O(n35) );
  AND_GATE U39 ( .I1(n37), .I2(n38), .O(n34) );
  OR_GATE U40 ( .I1(n5), .I2(n8), .O(n38) );
  NAND_GATE U41 ( .I1(n8), .I2(n5), .O(n37) );
  NAND_GATE U42 ( .I1(n39), .I2(n40), .O(n8) );
  OR_GATE U43 ( .I1(n3), .I2(din[5]), .O(n40) );
  NAND_GATE U44 ( .I1(din[5]), .I2(n3), .O(n39) );
endmodule


module b12_DW01_decode_width1 ( A, B );
  input [0:0] A;
  output [1:0] B;

  assign B[1] = A[0];

  INV_GATE U2 ( .I1(A[0]), .O(B[0]) );
endmodule


module b12 ( clock, reset, start, k, nloss, nl, speaker, test_si1, test_so1, 
        test_si2, test_so2, test_si3, test_so3, test_si4, test_so4, test_se, 
        test_mode );
  input [3:0] k;
  output [3:0] nl;
  input clock, reset, start, test_si1, test_si2, test_si3, test_si4, test_se,
         test_mode;
  output nloss, speaker, test_so1, test_so2, test_so3, test_so4;
  wire   s, play, N162, N213, N214, N215, N220, memory_31__1_, memory_31__0_,
         memory_30__1_, memory_30__0_, memory_29__1_, memory_29__0_,
         memory_28__1_, memory_28__0_, memory_27__1_, memory_27__0_,
         memory_26__1_, memory_26__0_, memory_25__1_, memory_25__0_,
         memory_24__1_, memory_24__0_, memory_23__1_, memory_23__0_,
         memory_22__1_, memory_22__0_, memory_21__1_, memory_21__0_,
         memory_20__1_, memory_20__0_, memory_19__1_, memory_19__0_,
         memory_18__1_, memory_18__0_, memory_17__1_, memory_17__0_,
         memory_16__1_, memory_16__0_, memory_15__1_, memory_15__0_,
         memory_14__1_, memory_14__0_, memory_13__1_, memory_13__0_,
         memory_12__1_, memory_12__0_, memory_11__1_, memory_11__0_,
         memory_10__1_, memory_10__0_, memory_9__1_, memory_9__0_,
         memory_8__1_, memory_8__0_, memory_7__1_, memory_7__0_, memory_6__1_,
         memory_6__0_, memory_5__1_, memory_5__0_, memory_4__1_, memory_4__0_,
         memory_3__1_, memory_3__0_, memory_2__1_, memory_2__0_, memory_1__1_,
         memory_1__0_, memory_0__1_, memory_0__0_, N286, N287, wr, count_5_,
         count_4_, count_3_, count_2_, count_1_1, count_0_1, N911, N912, N913,
         N914, N915, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n935, n936, n937, n938, n939, n940, n941, n942, n943, n944, n945,
         n946, n947, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1078, n1079, n1080, n1081, n1082,
         n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092,
         n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332,
         n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342,
         n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352,
         n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362,
         n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382,
         n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392,
         n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402,
         n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412,
         n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432,
         n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442,
         n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452,
         n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462,
         n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472,
         n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552,
         n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562,
         n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572,
         n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582,
         n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592,
         n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602,
         n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612,
         n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622,
         n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632,
         n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642,
         n1643, n1644, n1645, n1646, n1647, n1648, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n49, n52, n55, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [1:0] counter;
  wire   [2:0] sound;
  wire   [1:0] snps_count;
  wire   [1:0] num;
  wire   [1:0] data_out;
  wire   [4:0] address;
  wire   [1:0] data_in;
  wire   [4:0] scan;
  wire   [4:0] max;
  wire   [1:0] ind;
  wire   [5:0] timebase;
  wire   [4:0] gamma;

  INV_GATE U7 ( .I1(reset), .O(n683) );
  INV_GATE U784 ( .I1(n1210), .O(n935) );
  INV_GATE U785 ( .I1(n1057), .O(n936) );
  INV_GATE U786 ( .I1(n1209), .O(n937) );
  INV_GATE U787 ( .I1(n1467), .O(n938) );
  INV_GATE U788 ( .I1(n1071), .O(n939) );
  INV_GATE U789 ( .I1(n1070), .O(n940) );
  INV_GATE U790 ( .I1(start), .O(n941) );
  INV_GATE U791 ( .I1(n1464), .O(n942) );
  INV_GATE U792 ( .I1(n1122), .O(n943) );
  INV_GATE U793 ( .I1(n1156), .O(n944) );
  INV_GATE U794 ( .I1(n1491), .O(n945) );
  INV_GATE U795 ( .I1(n1133), .O(n946) );
  INV_GATE U796 ( .I1(n1061), .O(n947) );
  INV_GATE U798 ( .I1(n1056), .O(n949) );
  INV_GATE U799 ( .I1(n1418), .O(n950) );
  INV_GATE U800 ( .I1(n1137), .O(n951) );
  INV_GATE U801 ( .I1(k[2]), .O(n952) );
  INV_GATE U802 ( .I1(n1136), .O(n953) );
  INV_GATE U803 ( .I1(k[1]), .O(n954) );
  INV_GATE U804 ( .I1(k[0]), .O(n955) );
  INV_GATE U805 ( .I1(snps_count[0]), .O(n956) );
  INV_GATE U806 ( .I1(n1155), .O(n957) );
  INV_GATE U807 ( .I1(n1488), .O(n958) );
  INV_GATE U808 ( .I1(n1492), .O(n959) );
  INV_GATE U809 ( .I1(gamma[0]), .O(n960) );
  INV_GATE U810 ( .I1(data_out[1]), .O(n961) );
  INV_GATE U811 ( .I1(gamma[2]), .O(n962) );
  INV_GATE U812 ( .I1(gamma[1]), .O(n963) );
  INV_GATE U813 ( .I1(gamma[4]), .O(n964) );
  INV_GATE U814 ( .I1(data_out[0]), .O(n965) );
  INV_GATE U815 ( .I1(n1446), .O(n966) );
  INV_GATE U816 ( .I1(n1445), .O(n967) );
  INV_GATE U817 ( .I1(counter[0]), .O(n968) );
  INV_GATE U818 ( .I1(counter[1]), .O(n969) );
  INV_GATE U819 ( .I1(N162), .O(n970) );
  INV_GATE U820 ( .I1(n1465), .O(n971) );
  INV_GATE U821 ( .I1(n1125), .O(n972) );
  INV_GATE U822 ( .I1(max[4]), .O(n973) );
  INV_GATE U823 ( .I1(n1345), .O(n974) );
  INV_GATE U824 ( .I1(n1340), .O(n975) );
  INV_GATE U825 ( .I1(n1335), .O(n976) );
  INV_GATE U826 ( .I1(n1330), .O(n977) );
  INV_GATE U827 ( .I1(n1325), .O(n978) );
  INV_GATE U828 ( .I1(n1320), .O(n979) );
  INV_GATE U829 ( .I1(n1315), .O(n980) );
  INV_GATE U830 ( .I1(n1309), .O(n981) );
  INV_GATE U831 ( .I1(n1202), .O(n982) );
  INV_GATE U832 ( .I1(n1196), .O(n983) );
  INV_GATE U833 ( .I1(n1190), .O(n984) );
  INV_GATE U834 ( .I1(n1184), .O(n985) );
  INV_GATE U835 ( .I1(n1178), .O(n986) );
  INV_GATE U836 ( .I1(n1172), .O(n987) );
  INV_GATE U837 ( .I1(n1166), .O(n988) );
  INV_GATE U838 ( .I1(n1159), .O(n989) );
  INV_GATE U839 ( .I1(n1261), .O(n990) );
  INV_GATE U840 ( .I1(n1256), .O(n991) );
  INV_GATE U841 ( .I1(n1251), .O(n992) );
  INV_GATE U842 ( .I1(n1246), .O(n993) );
  INV_GATE U843 ( .I1(n1241), .O(n994) );
  INV_GATE U844 ( .I1(n1236), .O(n995) );
  INV_GATE U845 ( .I1(n1231), .O(n996) );
  INV_GATE U846 ( .I1(n1225), .O(n997) );
  INV_GATE U847 ( .I1(n1303), .O(n998) );
  INV_GATE U848 ( .I1(n1298), .O(n999) );
  INV_GATE U849 ( .I1(n1293), .O(n1000) );
  INV_GATE U850 ( .I1(n1288), .O(n1001) );
  INV_GATE U851 ( .I1(n1283), .O(n1002) );
  INV_GATE U852 ( .I1(n1278), .O(n1003) );
  INV_GATE U853 ( .I1(n1273), .O(n1004) );
  INV_GATE U854 ( .I1(n1267), .O(n1005) );
  INV_GATE U855 ( .I1(address[4]), .O(n1006) );
  INV_GATE U856 ( .I1(max[0]), .O(n1007) );
  INV_GATE U857 ( .I1(max[1]), .O(n1008) );
  INV_GATE U858 ( .I1(max[2]), .O(n1009) );
  INV_GATE U859 ( .I1(max[3]), .O(n1010) );
  INV_GATE U860 ( .I1(timebase[0]), .O(n1011) );
  INV_GATE U861 ( .I1(count_0_1), .O(n1012) );
  INV_GATE U862 ( .I1(n1409), .O(n1013) );
  INV_GATE U863 ( .I1(n1379), .O(n1014) );
  INV_GATE U864 ( .I1(scan[4]), .O(n1015) );
  INV_GATE U865 ( .I1(scan[0]), .O(n1016) );
  INV_GATE U866 ( .I1(scan[1]), .O(n1017) );
  INV_GATE U867 ( .I1(scan[2]), .O(n1018) );
  INV_GATE U868 ( .I1(scan[3]), .O(n1019) );
  INV_GATE U869 ( .I1(ind[0]), .O(n1020) );
  INV_GATE U870 ( .I1(ind[1]), .O(n1021) );
  INV_GATE U871 ( .I1(address[0]), .O(n1022) );
  INV_GATE U872 ( .I1(address[1]), .O(n1023) );
  INV_GATE U873 ( .I1(address[2]), .O(n1024) );
  INV_GATE U874 ( .I1(sound[2]), .O(n1025) );
  INV_GATE U875 ( .I1(address[3]), .O(n1026) );
  INV_GATE U876 ( .I1(sound[1]), .O(n1027) );
  INV_GATE U877 ( .I1(s), .O(n1028) );
  NAND_GATE U878 ( .I1(n1029), .I2(n1030), .O(n790) );
  NAND4_GATE U879 ( .I1(n1031), .I2(max[3]), .I3(max[2]), .I4(n973), .O(n1030)
         );
  NAND_GATE U880 ( .I1(max[4]), .I2(n1032), .O(n1029) );
  NAND_GATE U881 ( .I1(n1033), .I2(n1034), .O(n1032) );
  NAND_GATE U882 ( .I1(n1035), .I2(n1010), .O(n1034) );
  NAND3_GATE U883 ( .I1(n1036), .I2(n1037), .I3(n1038), .O(n789) );
  OR_GATE U884 ( .I1(n973), .I2(n1039), .O(n1038) );
  NAND_GATE U885 ( .I1(n1040), .I2(scan[4]), .O(n1037) );
  OR_GATE U886 ( .I1(n1006), .I2(n1041), .O(n1036) );
  NAND_GATE U887 ( .I1(n1042), .I2(n1043), .O(n788) );
  OR_GATE U888 ( .I1(n1044), .I2(n1007), .O(n1042) );
  NAND_GATE U889 ( .I1(n1045), .I2(n1046), .O(n787) );
  NAND3_GATE U890 ( .I1(max[0]), .I2(n1008), .I3(n1035), .O(n1046) );
  OR_GATE U891 ( .I1(n1008), .I2(n1047), .O(n1045) );
  NAND_GATE U892 ( .I1(n1048), .I2(n1049), .O(n786) );
  NAND_GATE U893 ( .I1(n1031), .I2(n1009), .O(n1049) );
  OR_GATE U894 ( .I1(n1009), .I2(n1050), .O(n1048) );
  NAND_GATE U895 ( .I1(n1051), .I2(n1052), .O(n785) );
  NAND3_GATE U896 ( .I1(max[2]), .I2(n1010), .I3(n1031), .O(n1052) );
  AND3_GATE U897 ( .I1(max[0]), .I2(max[1]), .I3(n1035), .O(n1031) );
  OR_GATE U898 ( .I1(n1010), .I2(n1033), .O(n1051) );
  AND_GATE U899 ( .I1(n1050), .I2(n1053), .O(n1033) );
  NAND_GATE U900 ( .I1(n1035), .I2(n1009), .O(n1053) );
  AND_GATE U901 ( .I1(n1047), .I2(n1054), .O(n1050) );
  NAND_GATE U902 ( .I1(n1035), .I2(n1008), .O(n1054) );
  AND_GATE U903 ( .I1(n1044), .I2(n1043), .O(n1047) );
  NAND_GATE U904 ( .I1(n1035), .I2(n1007), .O(n1043) );
  AND_GATE U905 ( .I1(n1055), .I2(n1044), .O(n1035) );
  NAND_GATE U906 ( .I1(n1056), .I2(n1057), .O(n1055) );
  NAND_GATE U907 ( .I1(n940), .I2(n1058), .O(n1044) );
  NAND_GATE U908 ( .I1(n1013), .I2(n1059), .O(n1058) );
  NAND3_GATE U909 ( .I1(n1060), .I2(n1061), .I3(n1062), .O(n1059) );
  NAND3_GATE U910 ( .I1(n1063), .I2(n1064), .I3(n1065), .O(n784) );
  NAND_GATE U911 ( .I1(timebase[5]), .I2(n1066), .O(n1064) );
  OR_GATE U912 ( .I1(n1066), .I2(timebase[5]), .O(n1063) );
  NAND_GATE U913 ( .I1(n1065), .I2(n1067), .O(n783) );
  NAND_GATE U914 ( .I1(n1068), .I2(n1069), .O(n1067) );
  NAND_GATE U915 ( .I1(timebase[0]), .I2(n1070), .O(n1069) );
  NAND_GATE U916 ( .I1(n940), .I2(n1011), .O(n1068) );
  OR_GATE U917 ( .I1(n1071), .I2(n1072), .O(n782) );
  AND_GATE U918 ( .I1(timebase[1]), .I2(n1073), .O(n1072) );
  NAND_GATE U919 ( .I1(n1074), .I2(n1075), .O(n781) );
  NAND_GATE U920 ( .I1(timebase[2]), .I2(n1076), .O(n1075) );
  OR_GATE U921 ( .I1(n1073), .I2(n1648), .O(n1076) );
  NAND_GATE U923 ( .I1(n1070), .I2(n1078), .O(n1073) );
  NAND_GATE U924 ( .I1(n949), .I2(timebase[0]), .O(n1078) );
  OR_GATE U925 ( .I1(n939), .I2(timebase[2]), .O(n1074) );
  NOR4_GATE U926 ( .I1(n1056), .I2(n940), .I3(timebase[0]), .I4(timebase[1]), 
        .O(n1071) );
  NAND_GATE U927 ( .I1(n1079), .I2(n1080), .O(n780) );
  NAND_GATE U928 ( .I1(timebase[3]), .I2(n940), .O(n1080) );
  NAND3_GATE U929 ( .I1(n1081), .I2(n1070), .I3(n949), .O(n1079) );
  NAND_GATE U930 ( .I1(n1082), .I2(n1083), .O(n1081) );
  NAND_GATE U931 ( .I1(timebase[3]), .I2(n1084), .O(n1082) );
  OR3_GATE U932 ( .I1(timebase[2]), .I2(timebase[1]), .I3(timebase[0]), .O(
        n1084) );
  NAND_GATE U933 ( .I1(n1085), .I2(n1086), .O(n779) );
  NAND_GATE U934 ( .I1(timebase[4]), .I2(n1087), .O(n1086) );
  NAND_GATE U935 ( .I1(n1070), .I2(n1088), .O(n1087) );
  NAND_GATE U936 ( .I1(n949), .I2(n1083), .O(n1088) );
  OR_GATE U937 ( .I1(n1056), .I2(n1066), .O(n1085) );
  OR3_GATE U938 ( .I1(n940), .I2(timebase[4]), .I3(n1083), .O(n1066) );
  OR4_GATE U939 ( .I1(timebase[1]), .I2(timebase[0]), .I3(timebase[3]), .I4(
        timebase[2]), .O(n1083) );
  NAND_GATE U940 ( .I1(n1089), .I2(n1090), .O(n778) );
  NAND_GATE U941 ( .I1(n1091), .I2(n1092), .O(n1090) );
  NAND3_GATE U942 ( .I1(n1093), .I2(n1094), .I3(n1095), .O(n1091) );
  NAND_GATE U943 ( .I1(n1096), .I2(n1012), .O(n1095) );
  NAND_GATE U944 ( .I1(timebase[0]), .I2(n1097), .O(n1093) );
  OR_GATE U945 ( .I1(n1012), .I2(n1092), .O(n1089) );
  NAND_GATE U946 ( .I1(n1098), .I2(n1099), .O(n777) );
  NAND4_GATE U947 ( .I1(n1100), .I2(scan[3]), .I3(scan[2]), .I4(n1015), .O(
        n1099) );
  NAND_GATE U948 ( .I1(scan[4]), .I2(n1101), .O(n1098) );
  NAND_GATE U949 ( .I1(n1102), .I2(n1103), .O(n1101) );
  NAND_GATE U950 ( .I1(n1104), .I2(n1019), .O(n1103) );
  NAND_GATE U951 ( .I1(n1105), .I2(n1106), .O(n776) );
  OR_GATE U952 ( .I1(n1107), .I2(n1016), .O(n1105) );
  NAND_GATE U953 ( .I1(n1108), .I2(n1109), .O(n775) );
  NAND3_GATE U954 ( .I1(scan[0]), .I2(n1017), .I3(n1104), .O(n1109) );
  OR_GATE U955 ( .I1(n1017), .I2(n1110), .O(n1108) );
  NAND_GATE U956 ( .I1(n1111), .I2(n1112), .O(n774) );
  NAND_GATE U957 ( .I1(n1100), .I2(n1018), .O(n1112) );
  OR_GATE U958 ( .I1(n1018), .I2(n1113), .O(n1111) );
  NAND_GATE U959 ( .I1(n1114), .I2(n1115), .O(n773) );
  NAND3_GATE U960 ( .I1(scan[2]), .I2(n1019), .I3(n1100), .O(n1115) );
  AND3_GATE U961 ( .I1(scan[0]), .I2(scan[1]), .I3(n1104), .O(n1100) );
  OR_GATE U962 ( .I1(n1019), .I2(n1102), .O(n1114) );
  AND_GATE U963 ( .I1(n1113), .I2(n1116), .O(n1102) );
  NAND_GATE U964 ( .I1(n1104), .I2(n1018), .O(n1116) );
  AND_GATE U965 ( .I1(n1110), .I2(n1117), .O(n1113) );
  NAND_GATE U966 ( .I1(n1104), .I2(n1017), .O(n1117) );
  AND_GATE U967 ( .I1(n1107), .I2(n1106), .O(n1110) );
  NAND_GATE U968 ( .I1(n1104), .I2(n1016), .O(n1106) );
  AND_GATE U969 ( .I1(n1118), .I2(n1107), .O(n1104) );
  NAND_GATE U970 ( .I1(n1056), .I2(n1119), .O(n1118) );
  OR_GATE U971 ( .I1(n1120), .I2(n972), .O(n1119) );
  NAND_GATE U972 ( .I1(n1121), .I2(n1122), .O(n1107) );
  NAND_GATE U973 ( .I1(n1013), .I2(n1123), .O(n1121) );
  NAND_GATE U974 ( .I1(n1124), .I2(n1120), .O(n1123) );
  NAND_GATE U975 ( .I1(n949), .I2(n1125), .O(n1124) );
  NAND_GATE U976 ( .I1(n1126), .I2(n1127), .O(n772) );
  NAND_GATE U977 ( .I1(n1128), .I2(n955), .O(n1127) );
  NAND_GATE U978 ( .I1(n1129), .I2(n1130), .O(n1128) );
  NAND_GATE U979 ( .I1(n1131), .I2(n952), .O(n1130) );
  NAND_GATE U980 ( .I1(n1020), .I2(n1132), .O(n1131) );
  NAND_GATE U981 ( .I1(k[3]), .I2(n1133), .O(n1132) );
  NAND_GATE U982 ( .I1(k[1]), .I2(n1133), .O(n1129) );
  NAND_GATE U983 ( .I1(ind[0]), .I2(n946), .O(n1126) );
  NAND_GATE U984 ( .I1(n1134), .I2(n1135), .O(n771) );
  NAND3_GATE U985 ( .I1(n1136), .I2(n1137), .I3(n1133), .O(n1135) );
  NAND_GATE U986 ( .I1(ind[1]), .I2(n1138), .O(n1134) );
  NAND_GATE U987 ( .I1(n1133), .I2(n953), .O(n1138) );
  NAND3_GATE U988 ( .I1(n1139), .I2(n1140), .I3(n1141), .O(n770) );
  OR_GATE U989 ( .I1(n1007), .I2(n1039), .O(n1141) );
  NAND_GATE U990 ( .I1(n1040), .I2(scan[0]), .O(n1140) );
  OR_GATE U991 ( .I1(n1022), .I2(n1041), .O(n1139) );
  NAND3_GATE U992 ( .I1(n1142), .I2(n1143), .I3(n1144), .O(n769) );
  OR_GATE U993 ( .I1(n1008), .I2(n1039), .O(n1144) );
  NAND_GATE U994 ( .I1(n1040), .I2(scan[1]), .O(n1143) );
  OR_GATE U995 ( .I1(n1023), .I2(n1041), .O(n1142) );
  NAND3_GATE U996 ( .I1(n1145), .I2(n1146), .I3(n1147), .O(n768) );
  OR_GATE U997 ( .I1(n1009), .I2(n1039), .O(n1147) );
  NAND_GATE U998 ( .I1(n1040), .I2(scan[2]), .O(n1146) );
  OR_GATE U999 ( .I1(n1024), .I2(n1041), .O(n1145) );
  NAND_GATE U1000 ( .I1(n1148), .I2(n1149), .O(n767) );
  NAND_GATE U1001 ( .I1(data_in[0]), .I2(n1122), .O(n1149) );
  NAND_GATE U1002 ( .I1(num[0]), .I2(n943), .O(n1148) );
  NAND_GATE U1003 ( .I1(n1150), .I2(n1151), .O(n766) );
  NAND_GATE U1004 ( .I1(data_in[1]), .I2(n1122), .O(n1151) );
  NAND_GATE U1005 ( .I1(num[1]), .I2(n943), .O(n1150) );
  NAND_GATE U1006 ( .I1(n1122), .I2(n1152), .O(n765) );
  NAND3_GATE U1007 ( .I1(n1153), .I2(n941), .I3(wr), .O(n1152) );
  NAND_GATE U1008 ( .I1(n962), .I2(n1154), .O(n1153) );
  NAND_GATE U1009 ( .I1(n1155), .I2(n944), .O(n1154) );
  NAND_GATE U1010 ( .I1(n1157), .I2(n1158), .O(n764) );
  NAND_GATE U1011 ( .I1(n989), .I2(data_in[0]), .O(n1158) );
  NAND_GATE U1012 ( .I1(memory_15__0_), .I2(n1159), .O(n1157) );
  NAND_GATE U1013 ( .I1(n1160), .I2(n1161), .O(n763) );
  NAND_GATE U1014 ( .I1(n989), .I2(data_in[1]), .O(n1161) );
  NAND_GATE U1015 ( .I1(memory_15__1_), .I2(n1159), .O(n1160) );
  NAND_GATE U1016 ( .I1(n1162), .I2(n1163), .O(n1159) );
  NAND_GATE U1017 ( .I1(n1164), .I2(n1165), .O(n762) );
  NAND_GATE U1018 ( .I1(n988), .I2(data_in[0]), .O(n1165) );
  NAND_GATE U1019 ( .I1(memory_14__0_), .I2(n1166), .O(n1164) );
  NAND_GATE U1020 ( .I1(n1167), .I2(n1168), .O(n761) );
  NAND_GATE U1021 ( .I1(n988), .I2(data_in[1]), .O(n1168) );
  NAND_GATE U1022 ( .I1(memory_14__1_), .I2(n1166), .O(n1167) );
  NAND_GATE U1023 ( .I1(n1169), .I2(n1163), .O(n1166) );
  NAND_GATE U1024 ( .I1(n1170), .I2(n1171), .O(n760) );
  NAND_GATE U1025 ( .I1(n987), .I2(data_in[0]), .O(n1171) );
  NAND_GATE U1026 ( .I1(memory_13__0_), .I2(n1172), .O(n1170) );
  NAND_GATE U1027 ( .I1(n1173), .I2(n1174), .O(n759) );
  NAND_GATE U1028 ( .I1(n987), .I2(data_in[1]), .O(n1174) );
  NAND_GATE U1029 ( .I1(memory_13__1_), .I2(n1172), .O(n1173) );
  NAND_GATE U1030 ( .I1(n1175), .I2(n1163), .O(n1172) );
  NAND_GATE U1031 ( .I1(n1176), .I2(n1177), .O(n758) );
  NAND_GATE U1032 ( .I1(n986), .I2(data_in[0]), .O(n1177) );
  NAND_GATE U1033 ( .I1(memory_12__0_), .I2(n1178), .O(n1176) );
  NAND_GATE U1034 ( .I1(n1179), .I2(n1180), .O(n757) );
  NAND_GATE U1035 ( .I1(n986), .I2(data_in[1]), .O(n1180) );
  NAND_GATE U1036 ( .I1(memory_12__1_), .I2(n1178), .O(n1179) );
  NAND_GATE U1037 ( .I1(n1181), .I2(n1163), .O(n1178) );
  NAND_GATE U1038 ( .I1(n1182), .I2(n1183), .O(n756) );
  NAND_GATE U1039 ( .I1(n985), .I2(data_in[0]), .O(n1183) );
  NAND_GATE U1040 ( .I1(memory_11__0_), .I2(n1184), .O(n1182) );
  NAND_GATE U1041 ( .I1(n1185), .I2(n1186), .O(n755) );
  NAND_GATE U1042 ( .I1(n985), .I2(data_in[1]), .O(n1186) );
  NAND_GATE U1043 ( .I1(memory_11__1_), .I2(n1184), .O(n1185) );
  NAND_GATE U1044 ( .I1(n1187), .I2(n1163), .O(n1184) );
  NAND_GATE U1045 ( .I1(n1188), .I2(n1189), .O(n754) );
  NAND_GATE U1046 ( .I1(n984), .I2(data_in[0]), .O(n1189) );
  NAND_GATE U1047 ( .I1(memory_10__0_), .I2(n1190), .O(n1188) );
  NAND_GATE U1048 ( .I1(n1191), .I2(n1192), .O(n753) );
  NAND_GATE U1049 ( .I1(n984), .I2(data_in[1]), .O(n1192) );
  NAND_GATE U1050 ( .I1(memory_10__1_), .I2(n1190), .O(n1191) );
  NAND_GATE U1051 ( .I1(n1193), .I2(n1163), .O(n1190) );
  NAND_GATE U1052 ( .I1(n1194), .I2(n1195), .O(n752) );
  NAND_GATE U1053 ( .I1(n983), .I2(data_in[0]), .O(n1195) );
  NAND_GATE U1054 ( .I1(memory_9__0_), .I2(n1196), .O(n1194) );
  NAND_GATE U1055 ( .I1(n1197), .I2(n1198), .O(n751) );
  NAND_GATE U1056 ( .I1(n983), .I2(data_in[1]), .O(n1198) );
  NAND_GATE U1057 ( .I1(memory_9__1_), .I2(n1196), .O(n1197) );
  NAND_GATE U1058 ( .I1(n1199), .I2(n1163), .O(n1196) );
  NAND_GATE U1059 ( .I1(n1200), .I2(n1201), .O(n750) );
  NAND_GATE U1060 ( .I1(n982), .I2(data_in[0]), .O(n1201) );
  NAND_GATE U1061 ( .I1(memory_8__0_), .I2(n1202), .O(n1200) );
  NAND_GATE U1062 ( .I1(n1203), .I2(n1204), .O(n749) );
  NAND_GATE U1063 ( .I1(n982), .I2(data_in[1]), .O(n1204) );
  NAND_GATE U1064 ( .I1(memory_8__1_), .I2(n1202), .O(n1203) );
  NAND_GATE U1065 ( .I1(n1205), .I2(n1163), .O(n1202) );
  AND_GATE U1066 ( .I1(n1206), .I2(wr), .O(n1163) );
  NAND_GATE U1067 ( .I1(n1207), .I2(n1208), .O(n748) );
  NAND_GATE U1068 ( .I1(n1209), .I2(n1210), .O(n1208) );
  NAND_GATE U1069 ( .I1(sound[2]), .I2(n935), .O(n1207) );
  NAND_GATE U1070 ( .I1(n935), .I2(n1211), .O(n747) );
  NAND3_GATE U1071 ( .I1(n1065), .I2(n1212), .I3(play), .O(n1211) );
  NAND_GATE U1072 ( .I1(n1013), .I2(n1213), .O(n1212) );
  NAND_GATE U1073 ( .I1(n938), .I2(n1214), .O(n1213) );
  NAND3_GATE U1074 ( .I1(n1215), .I2(n1216), .I3(n1217), .O(n746) );
  OR_GATE U1075 ( .I1(n1010), .I2(n1039), .O(n1217) );
  NAND_GATE U1076 ( .I1(n1040), .I2(scan[3]), .O(n1216) );
  AND_GATE U1077 ( .I1(n1218), .I2(n1041), .O(n1040) );
  OR_GATE U1078 ( .I1(n1219), .I2(n1220), .O(n1218) );
  AND_GATE U1079 ( .I1(n1156), .I2(gamma[0]), .O(n1220) );
  OR_GATE U1080 ( .I1(n1026), .I2(n1041), .O(n1215) );
  NAND3_GATE U1081 ( .I1(n1094), .I2(n1221), .I3(n1222), .O(n1041) );
  NAND_GATE U1082 ( .I1(n1156), .I2(n962), .O(n1222) );
  NAND_GATE U1083 ( .I1(n1223), .I2(n1224), .O(n745) );
  NAND_GATE U1084 ( .I1(n997), .I2(data_in[0]), .O(n1224) );
  NAND_GATE U1085 ( .I1(memory_31__0_), .I2(n1225), .O(n1223) );
  NAND_GATE U1086 ( .I1(n1226), .I2(n1227), .O(n744) );
  NAND_GATE U1087 ( .I1(n997), .I2(data_in[1]), .O(n1227) );
  NAND_GATE U1088 ( .I1(memory_31__1_), .I2(n1225), .O(n1226) );
  NAND_GATE U1089 ( .I1(n1228), .I2(n1162), .O(n1225) );
  NAND_GATE U1090 ( .I1(n1229), .I2(n1230), .O(n743) );
  NAND_GATE U1091 ( .I1(n996), .I2(data_in[0]), .O(n1230) );
  NAND_GATE U1092 ( .I1(memory_30__0_), .I2(n1231), .O(n1229) );
  NAND_GATE U1093 ( .I1(n1232), .I2(n1233), .O(n742) );
  NAND_GATE U1094 ( .I1(n996), .I2(data_in[1]), .O(n1233) );
  NAND_GATE U1095 ( .I1(memory_30__1_), .I2(n1231), .O(n1232) );
  NAND_GATE U1096 ( .I1(n1228), .I2(n1169), .O(n1231) );
  NAND_GATE U1097 ( .I1(n1234), .I2(n1235), .O(n741) );
  NAND_GATE U1098 ( .I1(n995), .I2(data_in[0]), .O(n1235) );
  NAND_GATE U1099 ( .I1(memory_29__0_), .I2(n1236), .O(n1234) );
  NAND_GATE U1100 ( .I1(n1237), .I2(n1238), .O(n740) );
  NAND_GATE U1101 ( .I1(n995), .I2(data_in[1]), .O(n1238) );
  NAND_GATE U1102 ( .I1(memory_29__1_), .I2(n1236), .O(n1237) );
  NAND_GATE U1103 ( .I1(n1228), .I2(n1175), .O(n1236) );
  NAND_GATE U1104 ( .I1(n1239), .I2(n1240), .O(n739) );
  NAND_GATE U1105 ( .I1(n994), .I2(data_in[0]), .O(n1240) );
  NAND_GATE U1106 ( .I1(memory_28__0_), .I2(n1241), .O(n1239) );
  NAND_GATE U1107 ( .I1(n1242), .I2(n1243), .O(n738) );
  NAND_GATE U1108 ( .I1(n994), .I2(data_in[1]), .O(n1243) );
  NAND_GATE U1109 ( .I1(memory_28__1_), .I2(n1241), .O(n1242) );
  NAND_GATE U1110 ( .I1(n1228), .I2(n1181), .O(n1241) );
  NAND_GATE U1111 ( .I1(n1244), .I2(n1245), .O(n737) );
  NAND_GATE U1112 ( .I1(n993), .I2(data_in[0]), .O(n1245) );
  NAND_GATE U1113 ( .I1(memory_27__0_), .I2(n1246), .O(n1244) );
  NAND_GATE U1114 ( .I1(n1247), .I2(n1248), .O(n736) );
  NAND_GATE U1115 ( .I1(n993), .I2(data_in[1]), .O(n1248) );
  NAND_GATE U1116 ( .I1(memory_27__1_), .I2(n1246), .O(n1247) );
  NAND_GATE U1117 ( .I1(n1228), .I2(n1187), .O(n1246) );
  NAND_GATE U1118 ( .I1(n1249), .I2(n1250), .O(n735) );
  NAND_GATE U1119 ( .I1(n992), .I2(data_in[0]), .O(n1250) );
  NAND_GATE U1120 ( .I1(memory_26__0_), .I2(n1251), .O(n1249) );
  NAND_GATE U1121 ( .I1(n1252), .I2(n1253), .O(n734) );
  NAND_GATE U1122 ( .I1(n992), .I2(data_in[1]), .O(n1253) );
  NAND_GATE U1123 ( .I1(memory_26__1_), .I2(n1251), .O(n1252) );
  NAND_GATE U1124 ( .I1(n1228), .I2(n1193), .O(n1251) );
  NAND_GATE U1125 ( .I1(n1254), .I2(n1255), .O(n733) );
  NAND_GATE U1126 ( .I1(n991), .I2(data_in[0]), .O(n1255) );
  NAND_GATE U1127 ( .I1(memory_25__0_), .I2(n1256), .O(n1254) );
  NAND_GATE U1128 ( .I1(n1257), .I2(n1258), .O(n732) );
  NAND_GATE U1129 ( .I1(n991), .I2(data_in[1]), .O(n1258) );
  NAND_GATE U1130 ( .I1(memory_25__1_), .I2(n1256), .O(n1257) );
  NAND_GATE U1131 ( .I1(n1228), .I2(n1199), .O(n1256) );
  NAND_GATE U1132 ( .I1(n1259), .I2(n1260), .O(n731) );
  NAND_GATE U1133 ( .I1(n990), .I2(data_in[0]), .O(n1260) );
  NAND_GATE U1134 ( .I1(memory_24__0_), .I2(n1261), .O(n1259) );
  NAND_GATE U1135 ( .I1(n1262), .I2(n1263), .O(n730) );
  NAND_GATE U1136 ( .I1(n990), .I2(data_in[1]), .O(n1263) );
  NAND_GATE U1137 ( .I1(memory_24__1_), .I2(n1261), .O(n1262) );
  NAND_GATE U1138 ( .I1(n1228), .I2(n1205), .O(n1261) );
  AND_GATE U1139 ( .I1(n1264), .I2(wr), .O(n1228) );
  NAND_GATE U1140 ( .I1(n1265), .I2(n1266), .O(n729) );
  NAND_GATE U1141 ( .I1(n1005), .I2(data_in[0]), .O(n1266) );
  NAND_GATE U1142 ( .I1(memory_23__0_), .I2(n1267), .O(n1265) );
  NAND_GATE U1143 ( .I1(n1268), .I2(n1269), .O(n728) );
  NAND_GATE U1144 ( .I1(n1005), .I2(data_in[1]), .O(n1269) );
  NAND_GATE U1145 ( .I1(memory_23__1_), .I2(n1267), .O(n1268) );
  NAND_GATE U1146 ( .I1(n1270), .I2(n1162), .O(n1267) );
  NAND_GATE U1147 ( .I1(n1271), .I2(n1272), .O(n727) );
  NAND_GATE U1148 ( .I1(n1004), .I2(data_in[0]), .O(n1272) );
  NAND_GATE U1149 ( .I1(memory_22__0_), .I2(n1273), .O(n1271) );
  NAND_GATE U1150 ( .I1(n1274), .I2(n1275), .O(n726) );
  NAND_GATE U1151 ( .I1(n1004), .I2(data_in[1]), .O(n1275) );
  NAND_GATE U1152 ( .I1(memory_22__1_), .I2(n1273), .O(n1274) );
  NAND_GATE U1153 ( .I1(n1270), .I2(n1169), .O(n1273) );
  NAND_GATE U1154 ( .I1(n1276), .I2(n1277), .O(n725) );
  NAND_GATE U1155 ( .I1(n1003), .I2(data_in[0]), .O(n1277) );
  NAND_GATE U1156 ( .I1(memory_21__0_), .I2(n1278), .O(n1276) );
  NAND_GATE U1157 ( .I1(n1279), .I2(n1280), .O(n724) );
  NAND_GATE U1158 ( .I1(n1003), .I2(data_in[1]), .O(n1280) );
  NAND_GATE U1159 ( .I1(memory_21__1_), .I2(n1278), .O(n1279) );
  NAND_GATE U1160 ( .I1(n1270), .I2(n1175), .O(n1278) );
  NAND_GATE U1161 ( .I1(n1281), .I2(n1282), .O(n723) );
  NAND_GATE U1162 ( .I1(n1002), .I2(data_in[0]), .O(n1282) );
  NAND_GATE U1163 ( .I1(memory_20__0_), .I2(n1283), .O(n1281) );
  NAND_GATE U1164 ( .I1(n1284), .I2(n1285), .O(n722) );
  NAND_GATE U1165 ( .I1(n1002), .I2(data_in[1]), .O(n1285) );
  NAND_GATE U1166 ( .I1(memory_20__1_), .I2(n1283), .O(n1284) );
  NAND_GATE U1167 ( .I1(n1270), .I2(n1181), .O(n1283) );
  NAND_GATE U1168 ( .I1(n1286), .I2(n1287), .O(n721) );
  NAND_GATE U1169 ( .I1(n1001), .I2(data_in[0]), .O(n1287) );
  NAND_GATE U1170 ( .I1(memory_19__0_), .I2(n1288), .O(n1286) );
  NAND_GATE U1171 ( .I1(n1289), .I2(n1290), .O(n720) );
  NAND_GATE U1172 ( .I1(n1001), .I2(data_in[1]), .O(n1290) );
  NAND_GATE U1173 ( .I1(memory_19__1_), .I2(n1288), .O(n1289) );
  NAND_GATE U1174 ( .I1(n1270), .I2(n1187), .O(n1288) );
  NAND_GATE U1175 ( .I1(n1291), .I2(n1292), .O(n719) );
  NAND_GATE U1176 ( .I1(n1000), .I2(data_in[0]), .O(n1292) );
  NAND_GATE U1177 ( .I1(memory_18__0_), .I2(n1293), .O(n1291) );
  NAND_GATE U1178 ( .I1(n1294), .I2(n1295), .O(n718) );
  NAND_GATE U1179 ( .I1(n1000), .I2(data_in[1]), .O(n1295) );
  NAND_GATE U1180 ( .I1(memory_18__1_), .I2(n1293), .O(n1294) );
  NAND_GATE U1181 ( .I1(n1270), .I2(n1193), .O(n1293) );
  NAND_GATE U1182 ( .I1(n1296), .I2(n1297), .O(n717) );
  NAND_GATE U1183 ( .I1(n999), .I2(data_in[0]), .O(n1297) );
  NAND_GATE U1184 ( .I1(memory_17__0_), .I2(n1298), .O(n1296) );
  NAND_GATE U1185 ( .I1(n1299), .I2(n1300), .O(n716) );
  NAND_GATE U1186 ( .I1(n999), .I2(data_in[1]), .O(n1300) );
  NAND_GATE U1187 ( .I1(memory_17__1_), .I2(n1298), .O(n1299) );
  NAND_GATE U1188 ( .I1(n1270), .I2(n1199), .O(n1298) );
  NAND_GATE U1189 ( .I1(n1301), .I2(n1302), .O(n715) );
  NAND_GATE U1190 ( .I1(n998), .I2(data_in[0]), .O(n1302) );
  NAND_GATE U1191 ( .I1(memory_16__0_), .I2(n1303), .O(n1301) );
  NAND_GATE U1192 ( .I1(n1304), .I2(n1305), .O(n714) );
  NAND_GATE U1193 ( .I1(n998), .I2(data_in[1]), .O(n1305) );
  NAND_GATE U1194 ( .I1(memory_16__1_), .I2(n1303), .O(n1304) );
  NAND_GATE U1195 ( .I1(n1270), .I2(n1205), .O(n1303) );
  AND_GATE U1196 ( .I1(n1306), .I2(wr), .O(n1270) );
  NAND_GATE U1197 ( .I1(n1307), .I2(n1308), .O(n713) );
  NAND_GATE U1198 ( .I1(n981), .I2(data_in[0]), .O(n1308) );
  NAND_GATE U1199 ( .I1(memory_7__0_), .I2(n1309), .O(n1307) );
  NAND_GATE U1200 ( .I1(n1310), .I2(n1311), .O(n712) );
  NAND_GATE U1201 ( .I1(n981), .I2(data_in[1]), .O(n1311) );
  NAND_GATE U1202 ( .I1(memory_7__1_), .I2(n1309), .O(n1310) );
  NAND_GATE U1203 ( .I1(n1312), .I2(n1162), .O(n1309) );
  NAND_GATE U1204 ( .I1(n1313), .I2(n1314), .O(n711) );
  NAND_GATE U1205 ( .I1(n980), .I2(data_in[0]), .O(n1314) );
  NAND_GATE U1206 ( .I1(memory_6__0_), .I2(n1315), .O(n1313) );
  NAND_GATE U1207 ( .I1(n1316), .I2(n1317), .O(n710) );
  NAND_GATE U1208 ( .I1(n980), .I2(data_in[1]), .O(n1317) );
  NAND_GATE U1209 ( .I1(memory_6__1_), .I2(n1315), .O(n1316) );
  NAND_GATE U1210 ( .I1(n1312), .I2(n1169), .O(n1315) );
  NAND_GATE U1211 ( .I1(n1318), .I2(n1319), .O(n709) );
  NAND_GATE U1212 ( .I1(n979), .I2(data_in[0]), .O(n1319) );
  NAND_GATE U1213 ( .I1(memory_5__0_), .I2(n1320), .O(n1318) );
  NAND_GATE U1214 ( .I1(n1321), .I2(n1322), .O(n708) );
  NAND_GATE U1215 ( .I1(n979), .I2(data_in[1]), .O(n1322) );
  NAND_GATE U1216 ( .I1(memory_5__1_), .I2(n1320), .O(n1321) );
  NAND_GATE U1217 ( .I1(n1312), .I2(n1175), .O(n1320) );
  NAND_GATE U1218 ( .I1(n1323), .I2(n1324), .O(n707) );
  NAND_GATE U1219 ( .I1(n978), .I2(data_in[0]), .O(n1324) );
  NAND_GATE U1220 ( .I1(memory_4__0_), .I2(n1325), .O(n1323) );
  NAND_GATE U1221 ( .I1(n1326), .I2(n1327), .O(n706) );
  NAND_GATE U1222 ( .I1(n978), .I2(data_in[1]), .O(n1327) );
  NAND_GATE U1223 ( .I1(memory_4__1_), .I2(n1325), .O(n1326) );
  NAND_GATE U1224 ( .I1(n1312), .I2(n1181), .O(n1325) );
  NAND_GATE U1225 ( .I1(n1328), .I2(n1329), .O(n705) );
  NAND_GATE U1226 ( .I1(n977), .I2(data_in[0]), .O(n1329) );
  NAND_GATE U1227 ( .I1(memory_3__0_), .I2(n1330), .O(n1328) );
  NAND_GATE U1228 ( .I1(n1331), .I2(n1332), .O(n704) );
  NAND_GATE U1229 ( .I1(n977), .I2(data_in[1]), .O(n1332) );
  NAND_GATE U1230 ( .I1(memory_3__1_), .I2(n1330), .O(n1331) );
  NAND_GATE U1231 ( .I1(n1312), .I2(n1187), .O(n1330) );
  NAND_GATE U1232 ( .I1(n1333), .I2(n1334), .O(n703) );
  NAND_GATE U1233 ( .I1(n976), .I2(data_in[0]), .O(n1334) );
  NAND_GATE U1234 ( .I1(memory_2__0_), .I2(n1335), .O(n1333) );
  NAND_GATE U1235 ( .I1(n1336), .I2(n1337), .O(n702) );
  NAND_GATE U1236 ( .I1(n976), .I2(data_in[1]), .O(n1337) );
  NAND_GATE U1237 ( .I1(memory_2__1_), .I2(n1335), .O(n1336) );
  NAND_GATE U1238 ( .I1(n1312), .I2(n1193), .O(n1335) );
  NAND_GATE U1239 ( .I1(n1338), .I2(n1339), .O(n701) );
  NAND_GATE U1240 ( .I1(n975), .I2(data_in[0]), .O(n1339) );
  NAND_GATE U1241 ( .I1(memory_1__0_), .I2(n1340), .O(n1338) );
  NAND_GATE U1242 ( .I1(n1341), .I2(n1342), .O(n700) );
  NAND_GATE U1243 ( .I1(n975), .I2(data_in[1]), .O(n1342) );
  NAND_GATE U1244 ( .I1(memory_1__1_), .I2(n1340), .O(n1341) );
  NAND_GATE U1245 ( .I1(n1312), .I2(n1199), .O(n1340) );
  NAND_GATE U1246 ( .I1(n1343), .I2(n1344), .O(n699) );
  NAND_GATE U1247 ( .I1(n974), .I2(data_in[0]), .O(n1344) );
  NAND_GATE U1248 ( .I1(memory_0__0_), .I2(n1345), .O(n1343) );
  NAND_GATE U1249 ( .I1(n1346), .I2(n1347), .O(n698) );
  NAND_GATE U1250 ( .I1(n974), .I2(data_in[1]), .O(n1347) );
  NAND_GATE U1251 ( .I1(memory_0__1_), .I2(n1345), .O(n1346) );
  NAND_GATE U1252 ( .I1(n1312), .I2(n1205), .O(n1345) );
  AND_GATE U1253 ( .I1(n1348), .I2(wr), .O(n1312) );
  NAND4_GATE U1254 ( .I1(n1349), .I2(n1350), .I3(n1351), .I4(n1352), .O(n697)
         );
  OR3_GATE U1255 ( .I1(n965), .I2(n1353), .I3(n961), .O(n1351) );
  NAND_GATE U1256 ( .I1(n1354), .I2(ind[1]), .O(n1350) );
  NAND_GATE U1257 ( .I1(nl[3]), .I2(n1355), .O(n1349) );
  NAND4_GATE U1258 ( .I1(n1356), .I2(n1357), .I3(n1358), .I4(n1352), .O(n696)
         );
  OR3_GATE U1259 ( .I1(n1353), .I2(data_out[0]), .I3(n961), .O(n1358) );
  NAND_GATE U1260 ( .I1(n1359), .I2(ind[1]), .O(n1357) );
  NAND_GATE U1261 ( .I1(nl[2]), .I2(n1355), .O(n1356) );
  NAND_GATE U1262 ( .I1(n1360), .I2(n1361), .O(n695) );
  NAND_GATE U1263 ( .I1(n1362), .I2(n1210), .O(n1361) );
  NAND4_GATE U1264 ( .I1(n1363), .I2(n1364), .I3(n1057), .I4(n1365), .O(n1362)
         );
  OR3_GATE U1265 ( .I1(n1366), .I2(k[0]), .I3(n1061), .O(n1364) );
  OR_GATE U1266 ( .I1(n965), .I2(n1367), .O(n1363) );
  NAND_GATE U1267 ( .I1(sound[0]), .I2(n935), .O(n1360) );
  NAND_GATE U1268 ( .I1(n1368), .I2(n1369), .O(n694) );
  NAND_GATE U1269 ( .I1(count_3_), .I2(n1370), .O(n1369) );
  NAND_GATE U1270 ( .I1(n1092), .I2(n1371), .O(n1370) );
  NAND_GATE U1271 ( .I1(n1372), .I2(n1373), .O(n1371) );
  NAND_GATE U1272 ( .I1(n1374), .I2(n1092), .O(n1368) );
  NAND_GATE U1273 ( .I1(n1375), .I2(n1376), .O(n1374) );
  NAND_GATE U1274 ( .I1(n1014), .I2(n1372), .O(n1376) );
  NAND_GATE U1275 ( .I1(n1377), .I2(n1378), .O(n1372) );
  NAND_GATE U1276 ( .I1(timebase[3]), .I2(n1097), .O(n1375) );
  NAND3_GATE U1277 ( .I1(n1380), .I2(n1381), .I3(n1382), .O(n693) );
  NAND_GATE U1278 ( .I1(count_1_1), .I2(n1383), .O(n1382) );
  OR3_GATE U1279 ( .I1(count_0_1), .I2(count_1_1), .I3(n1384), .O(n1381) );
  NAND_GATE U1280 ( .I1(n1385), .I2(timebase[1]), .O(n1380) );
  NAND3_GATE U1281 ( .I1(n1386), .I2(n1387), .I3(n1388), .O(n692) );
  OR_GATE U1282 ( .I1(n1384), .I2(n1373), .O(n1388) );
  NAND_GATE U1283 ( .I1(count_2_), .I2(n1389), .O(n1387) );
  OR_GATE U1284 ( .I1(n1383), .I2(n1390), .O(n1389) );
  AND_GATE U1285 ( .I1(count_1_1), .I2(n1096), .O(n1390) );
  NAND_GATE U1286 ( .I1(n1092), .I2(n1391), .O(n1383) );
  NAND_GATE U1287 ( .I1(count_0_1), .I2(n1096), .O(n1391) );
  NAND_GATE U1288 ( .I1(n1385), .I2(timebase[2]), .O(n1386) );
  NAND3_GATE U1289 ( .I1(n1392), .I2(n1393), .I3(n1394), .O(n691) );
  NAND_GATE U1290 ( .I1(count_4_), .I2(n1395), .O(n1394) );
  OR3_GATE U1291 ( .I1(n1379), .I2(count_4_), .I3(n1384), .O(n1393) );
  NAND_GATE U1292 ( .I1(n1096), .I2(n1092), .O(n1384) );
  NAND_GATE U1293 ( .I1(n1385), .I2(timebase[4]), .O(n1392) );
  AND_GATE U1294 ( .I1(n1097), .I2(n1092), .O(n1385) );
  NAND_GATE U1295 ( .I1(n1396), .I2(n1397), .O(n690) );
  NAND_GATE U1296 ( .I1(count_5_), .I2(n1398), .O(n1397) );
  OR_GATE U1297 ( .I1(n1395), .I2(n1399), .O(n1398) );
  AND_GATE U1298 ( .I1(count_4_), .I2(n1096), .O(n1399) );
  NAND_GATE U1299 ( .I1(n1092), .I2(n1400), .O(n1395) );
  NAND_GATE U1300 ( .I1(n1096), .I2(n1379), .O(n1400) );
  NAND_GATE U1301 ( .I1(n1378), .I2(n1401), .O(n1096) );
  OR_GATE U1302 ( .I1(n1377), .I2(n1013), .O(n1401) );
  AND_GATE U1303 ( .I1(n937), .I2(n938), .O(n1377) );
  AND4_GATE U1304 ( .I1(n1402), .I2(n1403), .I3(n1060), .I4(n1120), .O(n1378)
         );
  NAND3_GATE U1305 ( .I1(n1136), .I2(n951), .I3(n947), .O(n1403) );
  OR_GATE U1306 ( .I1(n1214), .I2(n1013), .O(n1402) );
  NAND_GATE U1307 ( .I1(n1404), .I2(n1092), .O(n1396) );
  NAND4_GATE U1308 ( .I1(n1405), .I2(n1406), .I3(n938), .I4(n1407), .O(n1092)
         );
  AND3_GATE U1309 ( .I1(n1408), .I2(n1094), .I3(n1214), .O(n1407) );
  NAND_GATE U1310 ( .I1(n1409), .I2(n1410), .O(n1408) );
  NAND_GATE U1311 ( .I1(n1060), .I2(n1061), .O(n1410) );
  NAND_GATE U1312 ( .I1(n1411), .I2(n1094), .O(n1404) );
  NAND_GATE U1313 ( .I1(timebase[5]), .I2(n1097), .O(n1411) );
  NAND3_GATE U1314 ( .I1(n1412), .I2(n1413), .I3(n1367), .O(n1097) );
  NAND_GATE U1315 ( .I1(n947), .I2(n1414), .O(n1412) );
  NAND_GATE U1316 ( .I1(n1415), .I2(n1416), .O(n689) );
  NAND_GATE U1317 ( .I1(n947), .I2(n1417), .O(n1416) );
  NAND_GATE U1318 ( .I1(n950), .I2(n1409), .O(n1417) );
  NAND_GATE U1319 ( .I1(nloss), .I2(n1065), .O(n1415) );
  NAND4_GATE U1320 ( .I1(n1419), .I2(n1420), .I3(n1421), .I4(n1352), .O(n688)
         );
  OR3_GATE U1321 ( .I1(data_out[0]), .I2(data_out[1]), .I3(n1353), .O(n1421)
         );
  NAND_GATE U1322 ( .I1(n1359), .I2(n1021), .O(n1420) );
  NOR_GATE U1323 ( .I1(n1422), .I2(ind[0]), .O(n1359) );
  NAND_GATE U1324 ( .I1(nl[0]), .I2(n1355), .O(n1419) );
  NAND4_GATE U1325 ( .I1(n1423), .I2(n1424), .I3(n1425), .I4(n1352), .O(n687)
         );
  OR_GATE U1326 ( .I1(n1426), .I2(n1355), .O(n1352) );
  OR3_GATE U1327 ( .I1(n1353), .I2(data_out[1]), .I3(n965), .O(n1425) );
  NAND_GATE U1328 ( .I1(n1354), .I2(n1021), .O(n1424) );
  NOR_GATE U1329 ( .I1(n1422), .I2(n1020), .O(n1354) );
  NAND_GATE U1330 ( .I1(nl[1]), .I2(n1355), .O(n1423) );
  AND4_GATE U1331 ( .I1(n1065), .I2(n1427), .I3(n1428), .I4(n1413), .O(n1355)
         );
  OR_GATE U1332 ( .I1(n1409), .I2(n1214), .O(n1413) );
  AND_GATE U1333 ( .I1(n1429), .I2(n1430), .O(n1214) );
  OR_GATE U1334 ( .I1(n1431), .I2(n1409), .O(n1428) );
  NAND_GATE U1335 ( .I1(n1432), .I2(n1433), .O(n686) );
  NAND_GATE U1336 ( .I1(n1434), .I2(n1210), .O(n1433) );
  NAND_GATE U1337 ( .I1(n1435), .I2(n1436), .O(n1434) );
  OR_GATE U1338 ( .I1(n961), .I2(n1367), .O(n1436) );
  NAND_GATE U1339 ( .I1(n947), .I2(n1136), .O(n1435) );
  NAND_GATE U1340 ( .I1(sound[1]), .I2(n935), .O(n1432) );
  NAND3_GATE U1341 ( .I1(n1437), .I2(n1438), .I3(n1353), .O(n1210) );
  AND3_GATE U1342 ( .I1(n1439), .I2(n1440), .I3(n1367), .O(n1353) );
  OR_GATE U1343 ( .I1(n1365), .I2(n1409), .O(n1439) );
  OR_GATE U1344 ( .I1(n1409), .I2(n1406), .O(n1438) );
  AND_GATE U1345 ( .I1(n1441), .I2(n1431), .O(n1406) );
  NAND3_GATE U1346 ( .I1(n949), .I2(n972), .I3(n1442), .O(n1441) );
  NAND_GATE U1347 ( .I1(n1133), .I2(n1414), .O(n1437) );
  NAND_GATE U1348 ( .I1(n1136), .I2(n951), .O(n1414) );
  NAND_GATE U1349 ( .I1(n1443), .I2(n1444), .O(n685) );
  NAND_GATE U1350 ( .I1(s), .I2(n1445), .O(n1444) );
  NAND_GATE U1351 ( .I1(n967), .I2(n1028), .O(n1443) );
  NAND_GATE U1352 ( .I1(play), .I2(n1446), .O(n1445) );
  AND_GATE U1353 ( .I1(play), .I2(n1447), .O(n684) );
  NAND_GATE U1354 ( .I1(n1448), .I2(n1449), .O(n1447) );
  NAND_GATE U1355 ( .I1(n1446), .I2(n1028), .O(n1449) );
  NAND_GATE U1356 ( .I1(speaker), .I2(n966), .O(n1448) );
  NAND_GATE U1357 ( .I1(n1450), .I2(n1451), .O(n1446) );
  NAND3_GATE U1358 ( .I1(n1452), .I2(n1025), .I3(N162), .O(n1451) );
  NAND3_GATE U1359 ( .I1(n1453), .I2(n1027), .I3(n1454), .O(n1450) );
  OR_GATE U1360 ( .I1(n1455), .I2(sound[0]), .O(n1454) );
  AND3_GATE U1361 ( .I1(counter[0]), .I2(n1456), .I3(counter[1]), .O(n1455) );
  NAND_GATE U1362 ( .I1(sound[2]), .I2(n970), .O(n1456) );
  NAND_GATE U1363 ( .I1(n1457), .I2(n970), .O(n1453) );
  NAND_GATE U1364 ( .I1(counter[1]), .I2(n1458), .O(n1457) );
  NAND_GATE U1365 ( .I1(sound[0]), .I2(n1025), .O(n1458) );
  NAND5_GATE U1366 ( .I1(n1459), .I2(n938), .I3(n1460), .I4(n1461), .I5(n1462), 
        .O(N915) );
  AND4_GATE U1367 ( .I1(n1463), .I2(n1464), .I3(n1221), .I4(n1060), .O(n1462)
         );
  NAND3_GATE U1368 ( .I1(n949), .I2(n1465), .I3(n1442), .O(n1461) );
  NAND_GATE U1369 ( .I1(n1013), .I2(n1466), .O(n1460) );
  NAND_GATE U1370 ( .I1(n1430), .I2(n1061), .O(n1466) );
  NAND5_GATE U1371 ( .I1(n1468), .I2(n1469), .I3(n1470), .I4(n1471), .I5(n1472), .O(N914) );
  AND4_GATE U1372 ( .I1(n1473), .I2(n1431), .I3(n1426), .I4(n946), .O(n1472)
         );
  OR_GATE U1373 ( .I1(n1056), .I2(n1474), .O(n1471) );
  NAND_GATE U1374 ( .I1(n1219), .I2(n962), .O(n1470) );
  OR_GATE U1375 ( .I1(n1120), .I2(n971), .O(n1469) );
  NAND4_GATE U1376 ( .I1(n1405), .I2(n1429), .I3(n1468), .I4(n1475), .O(N913)
         );
  AND4_GATE U1377 ( .I1(n1476), .I2(n1477), .I3(n1478), .I4(n1479), .O(n1475)
         );
  NAND_GATE U1378 ( .I1(n1133), .I2(n1418), .O(n1478) );
  NAND3_GATE U1379 ( .I1(n1480), .I2(n1481), .I3(n1482), .O(n1418) );
  NAND_GATE U1380 ( .I1(data_out[0]), .I2(n1483), .O(n1482) );
  NAND_GATE U1381 ( .I1(n1484), .I2(n955), .O(n1483) );
  NAND3_GATE U1382 ( .I1(n1137), .I2(n954), .I3(n1485), .O(n1484) );
  NAND_GATE U1383 ( .I1(data_out[1]), .I2(n952), .O(n1485) );
  NAND4_GATE U1384 ( .I1(n1486), .I2(n1487), .I3(n965), .I4(n955), .O(n1481)
         );
  NAND_GATE U1385 ( .I1(n1366), .I2(data_out[1]), .O(n1487) );
  AND_GATE U1386 ( .I1(k[2]), .I2(n954), .O(n1366) );
  NAND_GATE U1387 ( .I1(n951), .I2(n954), .O(n1486) );
  OR_GATE U1388 ( .I1(k[2]), .I2(k[3]), .O(n1137) );
  NAND_GATE U1389 ( .I1(data_out[1]), .I2(n953), .O(n1480) );
  NAND_GATE U1390 ( .I1(n1156), .I2(n1488), .O(n1477) );
  AND_GATE U1391 ( .I1(n1422), .I2(n1489), .O(n1468) );
  NAND3_GATE U1392 ( .I1(gamma[3]), .I2(n1490), .I3(n1491), .O(n1422) );
  NAND_GATE U1393 ( .I1(n958), .I2(n959), .O(n1490) );
  AND4_GATE U1394 ( .I1(n1367), .I2(n1493), .I3(n1494), .I4(n1365), .O(n1405)
         );
  NAND_GATE U1395 ( .I1(n1409), .I2(n1495), .O(n1494) );
  NAND3_GATE U1396 ( .I1(n1056), .I2(n1120), .I3(n1057), .O(n1495) );
  NAND_GATE U1397 ( .I1(n936), .I2(n972), .O(n1493) );
  AND_GATE U1398 ( .I1(n1496), .I2(n1497), .O(n1367) );
  NAND_GATE U1399 ( .I1(n942), .I2(n1488), .O(n1496) );
  NAND5_GATE U1400 ( .I1(n1039), .I2(n1498), .I3(n1499), .I4(n940), .I5(n1500), 
        .O(N912) );
  AND5_GATE U1401 ( .I1(n946), .I2(n1365), .I3(n1497), .I4(n1440), .I5(n1501), 
        .O(n1500) );
  NAND_GATE U1402 ( .I1(n936), .I2(n1465), .O(n1440) );
  NAND3_GATE U1403 ( .I1(n957), .I2(n941), .I3(gamma[2]), .O(n1497) );
  AND_GATE U1404 ( .I1(n947), .I2(n1409), .O(n1133) );
  NAND_GATE U1405 ( .I1(n1065), .I2(n1502), .O(n1070) );
  NAND5_GATE U1406 ( .I1(n963), .I2(n964), .I3(n1474), .I4(gamma[3]), .I5(
        n1503), .O(n1502) );
  NOR_GATE U1407 ( .I1(n971), .I2(n1442), .O(n1474) );
  AND5_GATE U1408 ( .I1(max[4]), .I2(max[2]), .I3(max[3]), .I4(max[0]), .I5(
        max[1]), .O(n1442) );
  AND_GATE U1409 ( .I1(n1504), .I2(n941), .O(n1065) );
  NAND_GATE U1410 ( .I1(n957), .I2(n962), .O(n1504) );
  NAND3_GATE U1411 ( .I1(n1505), .I2(n964), .I3(gamma[0]), .O(n1155) );
  AND_GATE U1412 ( .I1(n1476), .I2(n1506), .O(n1499) );
  NAND_GATE U1413 ( .I1(n1488), .I2(n1219), .O(n1506) );
  AND_GATE U1414 ( .I1(n1221), .I2(n1122), .O(n1039) );
  NAND_GATE U1415 ( .I1(n1488), .I2(n1507), .O(n1221) );
  NAND5_GATE U1416 ( .I1(n1498), .I2(n1062), .I3(n1508), .I4(n1509), .I5(n1510), .O(N911) );
  AND5_GATE U1417 ( .I1(n1479), .I2(n1122), .I3(n1094), .I4(n1511), .I5(n1427), 
        .O(n1510) );
  NAND_GATE U1418 ( .I1(n1013), .I2(n1467), .O(n1427) );
  NAND_GATE U1419 ( .I1(n1476), .I2(n1426), .O(n1467) );
  NAND_GATE U1420 ( .I1(n1512), .I2(n1513), .O(n1426) );
  NAND_GATE U1421 ( .I1(n1492), .I2(n942), .O(n1476) );
  NAND_GATE U1422 ( .I1(n1013), .I2(n1514), .O(n1511) );
  NAND_GATE U1423 ( .I1(n1429), .I2(n1060), .O(n1514) );
  NAND_GATE U1424 ( .I1(n1507), .I2(n1513), .O(n1060) );
  AND3_GATE U1425 ( .I1(n1463), .I2(n1473), .I3(n1501), .O(n1429) );
  NAND_GATE U1426 ( .I1(n1492), .I2(n1156), .O(n1501) );
  NAND_GATE U1427 ( .I1(n1492), .I2(n1219), .O(n1473) );
  NAND_GATE U1428 ( .I1(n1492), .I2(n1507), .O(n1463) );
  NAND_GATE U1429 ( .I1(n1219), .I2(n1513), .O(n1094) );
  NAND_GATE U1430 ( .I1(n1156), .I2(n1513), .O(n1122) );
  NAND3_GATE U1431 ( .I1(n1515), .I2(n1505), .I3(n1492), .O(n1479) );
  NAND_GATE U1432 ( .I1(n947), .I2(n1516), .O(n1509) );
  NAND3_GATE U1433 ( .I1(n1517), .I2(n1409), .I3(n1518), .O(n1516) );
  NAND_GATE U1434 ( .I1(n1519), .I2(n961), .O(n1518) );
  NAND_GATE U1435 ( .I1(n1520), .I2(n1521), .O(n1519) );
  NAND3_GATE U1436 ( .I1(k[1]), .I2(n955), .I3(data_out[0]), .O(n1521) );
  NAND_GATE U1437 ( .I1(k[0]), .I2(n965), .O(n1520) );
  NAND3_GATE U1438 ( .I1(n1136), .I2(n1522), .I3(data_out[1]), .O(n1517) );
  NAND_GATE U1439 ( .I1(n1523), .I2(n1524), .O(n1522) );
  NAND3_GATE U1440 ( .I1(k[3]), .I2(n952), .I3(data_out[0]), .O(n1524) );
  NAND_GATE U1441 ( .I1(k[2]), .I2(n965), .O(n1523) );
  AND_GATE U1442 ( .I1(n954), .I2(n955), .O(n1136) );
  NAND3_GATE U1443 ( .I1(n1513), .I2(gamma[3]), .I3(n1491), .O(n1061) );
  NAND_GATE U1444 ( .I1(n1209), .I2(n1409), .O(n1508) );
  NAND_GATE U1445 ( .I1(n1459), .I2(n1056), .O(n1209) );
  NAND_GATE U1446 ( .I1(n1219), .I2(n1503), .O(n1056) );
  AND3_GATE U1447 ( .I1(gamma[3]), .I2(n963), .I3(n1515), .O(n1219) );
  AND3_GATE U1448 ( .I1(n1057), .I2(n1365), .I3(n1431), .O(n1459) );
  NAND_GATE U1449 ( .I1(n1512), .I2(n1488), .O(n1431) );
  AND_GATE U1450 ( .I1(gamma[0]), .I2(n962), .O(n1488) );
  AND4_GATE U1451 ( .I1(gamma[4]), .I2(gamma[3]), .I3(n963), .I4(n941), .O(
        n1512) );
  NAND_GATE U1452 ( .I1(n942), .I2(n1503), .O(n1365) );
  NAND_GATE U1453 ( .I1(n936), .I2(n1125), .O(n1062) );
  NAND_GATE U1454 ( .I1(n1507), .I2(n1503), .O(n1057) );
  AND3_GATE U1455 ( .I1(n1505), .I2(n941), .I3(gamma[4]), .O(n1507) );
  NOR_GATE U1456 ( .I1(gamma[3]), .I2(gamma[1]), .O(n1505) );
  AND4_GATE U1457 ( .I1(n1489), .I2(n1525), .I3(n1526), .I4(n1527), .O(n1498)
         );
  NAND3_GATE U1458 ( .I1(n1491), .I2(gamma[3]), .I3(n1492), .O(n1527) );
  AND_GATE U1459 ( .I1(gamma[2]), .I2(n960), .O(n1492) );
  OR_GATE U1460 ( .I1(n1120), .I2(n1465), .O(n1526) );
  AND_GATE U1461 ( .I1(n1013), .I2(n972), .O(n1465) );
  NAND4_GATE U1462 ( .I1(n1528), .I2(n1529), .I3(n1530), .I4(n1531), .O(n1125)
         );
  AND4_GATE U1463 ( .I1(n1532), .I2(n1533), .I3(n1534), .I4(n1535), .O(n1531)
         );
  NAND_GATE U1464 ( .I1(scan[1]), .I2(n1008), .O(n1535) );
  NAND_GATE U1465 ( .I1(max[1]), .I2(n1017), .O(n1534) );
  NAND_GATE U1466 ( .I1(scan[0]), .I2(n1007), .O(n1533) );
  NAND_GATE U1467 ( .I1(max[0]), .I2(n1016), .O(n1532) );
  AND4_GATE U1468 ( .I1(n1536), .I2(n1537), .I3(n1538), .I4(n1539), .O(n1530)
         );
  NAND_GATE U1469 ( .I1(scan[2]), .I2(n1009), .O(n1539) );
  NAND_GATE U1470 ( .I1(max[2]), .I2(n1018), .O(n1538) );
  NAND_GATE U1471 ( .I1(scan[4]), .I2(n973), .O(n1537) );
  NAND_GATE U1472 ( .I1(max[4]), .I2(n1015), .O(n1536) );
  NAND_GATE U1473 ( .I1(scan[3]), .I2(n1010), .O(n1529) );
  NAND_GATE U1474 ( .I1(max[3]), .I2(n1019), .O(n1528) );
  NAND_GATE U1475 ( .I1(n1156), .I2(n1503), .O(n1120) );
  NOR_GATE U1476 ( .I1(n945), .I2(gamma[3]), .O(n1156) );
  NAND_GATE U1477 ( .I1(n942), .I2(n1513), .O(n1525) );
  NOR_GATE U1478 ( .I1(gamma[2]), .I2(gamma[0]), .O(n1513) );
  OR4_GATE U1479 ( .I1(n964), .I2(n963), .I3(gamma[3]), .I4(start), .O(n1464)
         );
  OR_GATE U1480 ( .I1(n1430), .I2(n1013), .O(n1489) );
  OR3_GATE U1481 ( .I1(count_4_), .I2(count_5_), .I3(n1379), .O(n1409) );
  OR_GATE U1482 ( .I1(n1373), .I2(count_3_), .O(n1379) );
  OR3_GATE U1483 ( .I1(count_2_), .I2(count_1_1), .I3(count_0_1), .O(n1373) );
  NAND3_GATE U1484 ( .I1(gamma[3]), .I2(n1503), .I3(n1491), .O(n1430) );
  AND_GATE U1485 ( .I1(gamma[1]), .I2(n1515), .O(n1491) );
  NOR_GATE U1486 ( .I1(start), .I2(gamma[4]), .O(n1515) );
  NOR_GATE U1487 ( .I1(n962), .I2(n960), .O(n1503) );
  NAND4_GATE U1488 ( .I1(n1540), .I2(n1541), .I3(n1542), .I4(n1543), .O(N287)
         );
  NAND_GATE U1489 ( .I1(n1348), .I2(n1544), .O(n1543) );
  NAND5_GATE U1490 ( .I1(n1545), .I2(n1546), .I3(n1547), .I4(n1548), .I5(n1549), .O(n1544) );
  AND4_GATE U1491 ( .I1(n1550), .I2(n1551), .I3(n1552), .I4(n1553), .O(n1549)
         );
  NAND_GATE U1492 ( .I1(memory_0__0_), .I2(n1205), .O(n1553) );
  NAND_GATE U1493 ( .I1(memory_1__0_), .I2(n1199), .O(n1552) );
  NAND_GATE U1494 ( .I1(memory_2__0_), .I2(n1193), .O(n1551) );
  NAND_GATE U1495 ( .I1(memory_3__0_), .I2(n1187), .O(n1550) );
  NAND_GATE U1496 ( .I1(memory_4__0_), .I2(n1181), .O(n1548) );
  NAND_GATE U1497 ( .I1(memory_5__0_), .I2(n1175), .O(n1547) );
  NAND_GATE U1498 ( .I1(memory_6__0_), .I2(n1169), .O(n1546) );
  NAND_GATE U1499 ( .I1(memory_7__0_), .I2(n1162), .O(n1545) );
  NAND_GATE U1500 ( .I1(n1206), .I2(n1554), .O(n1542) );
  NAND5_GATE U1501 ( .I1(n1555), .I2(n1556), .I3(n1557), .I4(n1558), .I5(n1559), .O(n1554) );
  AND4_GATE U1502 ( .I1(n1560), .I2(n1561), .I3(n1562), .I4(n1563), .O(n1559)
         );
  NAND_GATE U1503 ( .I1(memory_8__0_), .I2(n1205), .O(n1563) );
  NAND_GATE U1504 ( .I1(memory_9__0_), .I2(n1199), .O(n1562) );
  NAND_GATE U1505 ( .I1(memory_10__0_), .I2(n1193), .O(n1561) );
  NAND_GATE U1506 ( .I1(memory_11__0_), .I2(n1187), .O(n1560) );
  NAND_GATE U1507 ( .I1(memory_12__0_), .I2(n1181), .O(n1558) );
  NAND_GATE U1508 ( .I1(memory_13__0_), .I2(n1175), .O(n1557) );
  NAND_GATE U1509 ( .I1(memory_14__0_), .I2(n1169), .O(n1556) );
  NAND_GATE U1510 ( .I1(memory_15__0_), .I2(n1162), .O(n1555) );
  NAND_GATE U1511 ( .I1(n1306), .I2(n1564), .O(n1541) );
  NAND5_GATE U1512 ( .I1(n1565), .I2(n1566), .I3(n1567), .I4(n1568), .I5(n1569), .O(n1564) );
  AND4_GATE U1513 ( .I1(n1570), .I2(n1571), .I3(n1572), .I4(n1573), .O(n1569)
         );
  NAND_GATE U1514 ( .I1(memory_16__0_), .I2(n1205), .O(n1573) );
  NAND_GATE U1515 ( .I1(memory_17__0_), .I2(n1199), .O(n1572) );
  NAND_GATE U1516 ( .I1(memory_18__0_), .I2(n1193), .O(n1571) );
  NAND_GATE U1517 ( .I1(memory_19__0_), .I2(n1187), .O(n1570) );
  NAND_GATE U1518 ( .I1(memory_20__0_), .I2(n1181), .O(n1568) );
  NAND_GATE U1519 ( .I1(memory_21__0_), .I2(n1175), .O(n1567) );
  NAND_GATE U1520 ( .I1(memory_22__0_), .I2(n1169), .O(n1566) );
  NAND_GATE U1521 ( .I1(memory_23__0_), .I2(n1162), .O(n1565) );
  NAND_GATE U1522 ( .I1(n1264), .I2(n1574), .O(n1540) );
  NAND5_GATE U1523 ( .I1(n1575), .I2(n1576), .I3(n1577), .I4(n1578), .I5(n1579), .O(n1574) );
  AND4_GATE U1524 ( .I1(n1580), .I2(n1581), .I3(n1582), .I4(n1583), .O(n1579)
         );
  NAND_GATE U1525 ( .I1(memory_24__0_), .I2(n1205), .O(n1583) );
  NAND_GATE U1526 ( .I1(memory_25__0_), .I2(n1199), .O(n1582) );
  NAND_GATE U1527 ( .I1(memory_26__0_), .I2(n1193), .O(n1581) );
  NAND_GATE U1528 ( .I1(memory_27__0_), .I2(n1187), .O(n1580) );
  NAND_GATE U1529 ( .I1(memory_28__0_), .I2(n1181), .O(n1578) );
  NAND_GATE U1530 ( .I1(memory_29__0_), .I2(n1175), .O(n1577) );
  NAND_GATE U1531 ( .I1(memory_30__0_), .I2(n1169), .O(n1576) );
  NAND_GATE U1532 ( .I1(memory_31__0_), .I2(n1162), .O(n1575) );
  NAND4_GATE U1533 ( .I1(n1584), .I2(n1585), .I3(n1586), .I4(n1587), .O(N286)
         );
  NAND_GATE U1534 ( .I1(n1348), .I2(n1588), .O(n1587) );
  NAND5_GATE U1535 ( .I1(n1589), .I2(n1590), .I3(n1591), .I4(n1592), .I5(n1593), .O(n1588) );
  AND4_GATE U1536 ( .I1(n1594), .I2(n1595), .I3(n1596), .I4(n1597), .O(n1593)
         );
  NAND_GATE U1537 ( .I1(memory_0__1_), .I2(n1205), .O(n1597) );
  NAND_GATE U1538 ( .I1(memory_1__1_), .I2(n1199), .O(n1596) );
  NAND_GATE U1539 ( .I1(memory_2__1_), .I2(n1193), .O(n1595) );
  NAND_GATE U1540 ( .I1(memory_3__1_), .I2(n1187), .O(n1594) );
  NAND_GATE U1541 ( .I1(memory_4__1_), .I2(n1181), .O(n1592) );
  NAND_GATE U1542 ( .I1(memory_5__1_), .I2(n1175), .O(n1591) );
  NAND_GATE U1543 ( .I1(memory_6__1_), .I2(n1169), .O(n1590) );
  NAND_GATE U1544 ( .I1(memory_7__1_), .I2(n1162), .O(n1589) );
  NOR_GATE U1545 ( .I1(address[4]), .I2(address[3]), .O(n1348) );
  NAND_GATE U1546 ( .I1(n1206), .I2(n1598), .O(n1586) );
  NAND5_GATE U1547 ( .I1(n1599), .I2(n1600), .I3(n1601), .I4(n1602), .I5(n1603), .O(n1598) );
  AND4_GATE U1548 ( .I1(n1604), .I2(n1605), .I3(n1606), .I4(n1607), .O(n1603)
         );
  NAND_GATE U1549 ( .I1(memory_8__1_), .I2(n1205), .O(n1607) );
  NAND_GATE U1550 ( .I1(memory_9__1_), .I2(n1199), .O(n1606) );
  NAND_GATE U1551 ( .I1(memory_10__1_), .I2(n1193), .O(n1605) );
  NAND_GATE U1552 ( .I1(memory_11__1_), .I2(n1187), .O(n1604) );
  NAND_GATE U1553 ( .I1(memory_12__1_), .I2(n1181), .O(n1602) );
  NAND_GATE U1554 ( .I1(memory_13__1_), .I2(n1175), .O(n1601) );
  NAND_GATE U1555 ( .I1(memory_14__1_), .I2(n1169), .O(n1600) );
  NAND_GATE U1556 ( .I1(memory_15__1_), .I2(n1162), .O(n1599) );
  NOR_GATE U1557 ( .I1(n1026), .I2(address[4]), .O(n1206) );
  NAND_GATE U1558 ( .I1(n1306), .I2(n1608), .O(n1585) );
  NAND5_GATE U1559 ( .I1(n1609), .I2(n1610), .I3(n1611), .I4(n1612), .I5(n1613), .O(n1608) );
  AND4_GATE U1560 ( .I1(n1614), .I2(n1615), .I3(n1616), .I4(n1617), .O(n1613)
         );
  NAND_GATE U1561 ( .I1(memory_16__1_), .I2(n1205), .O(n1617) );
  NAND_GATE U1562 ( .I1(memory_17__1_), .I2(n1199), .O(n1616) );
  NAND_GATE U1563 ( .I1(memory_18__1_), .I2(n1193), .O(n1615) );
  NAND_GATE U1564 ( .I1(memory_19__1_), .I2(n1187), .O(n1614) );
  NAND_GATE U1565 ( .I1(memory_20__1_), .I2(n1181), .O(n1612) );
  NAND_GATE U1566 ( .I1(memory_21__1_), .I2(n1175), .O(n1611) );
  NAND_GATE U1567 ( .I1(memory_22__1_), .I2(n1169), .O(n1610) );
  NAND_GATE U1568 ( .I1(memory_23__1_), .I2(n1162), .O(n1609) );
  NOR_GATE U1569 ( .I1(n1006), .I2(address[3]), .O(n1306) );
  NAND_GATE U1570 ( .I1(n1264), .I2(n1618), .O(n1584) );
  NAND5_GATE U1571 ( .I1(n1619), .I2(n1620), .I3(n1621), .I4(n1622), .I5(n1623), .O(n1618) );
  AND4_GATE U1572 ( .I1(n1624), .I2(n1625), .I3(n1626), .I4(n1627), .O(n1623)
         );
  NAND_GATE U1573 ( .I1(memory_24__1_), .I2(n1205), .O(n1627) );
  NOR3_GATE U1574 ( .I1(address[2]), .I2(address[1]), .I3(address[0]), .O(
        n1205) );
  NAND_GATE U1575 ( .I1(memory_25__1_), .I2(n1199), .O(n1626) );
  NOR3_GATE U1576 ( .I1(address[1]), .I2(address[2]), .I3(n1022), .O(n1199) );
  NAND_GATE U1577 ( .I1(memory_26__1_), .I2(n1193), .O(n1625) );
  NOR3_GATE U1578 ( .I1(address[0]), .I2(address[2]), .I3(n1023), .O(n1193) );
  NAND_GATE U1579 ( .I1(memory_27__1_), .I2(n1187), .O(n1624) );
  NOR3_GATE U1580 ( .I1(n1022), .I2(address[2]), .I3(n1023), .O(n1187) );
  NAND_GATE U1581 ( .I1(memory_28__1_), .I2(n1181), .O(n1622) );
  NOR3_GATE U1582 ( .I1(address[0]), .I2(address[1]), .I3(n1024), .O(n1181) );
  NAND_GATE U1583 ( .I1(memory_29__1_), .I2(n1175), .O(n1621) );
  NOR3_GATE U1584 ( .I1(n1022), .I2(address[1]), .I3(n1024), .O(n1175) );
  NAND_GATE U1585 ( .I1(memory_30__1_), .I2(n1169), .O(n1620) );
  NOR3_GATE U1586 ( .I1(n1023), .I2(address[0]), .I3(n1024), .O(n1169) );
  NAND_GATE U1587 ( .I1(memory_31__1_), .I2(n1162), .O(n1619) );
  NOR3_GATE U1588 ( .I1(n1023), .I2(n1022), .I3(n1024), .O(n1162) );
  NOR_GATE U1589 ( .I1(n1026), .I2(n1006), .O(n1264) );
  NAND_GATE U1590 ( .I1(n1628), .I2(n1629), .O(N220) );
  NAND_GATE U1591 ( .I1(snps_count[1]), .I2(n956), .O(n1629) );
  OR_GATE U1592 ( .I1(n956), .I2(snps_count[1]), .O(n1628) );
  NAND_GATE U1593 ( .I1(n1630), .I2(n1631), .O(N215) );
  NAND4_GATE U1594 ( .I1(n1632), .I2(counter[1]), .I3(counter[0]), .I4(n970), 
        .O(n1631) );
  NAND_GATE U1595 ( .I1(N162), .I2(n1633), .O(n1630) );
  OR_GATE U1596 ( .I1(N213), .I2(n1634), .O(n1633) );
  AND_GATE U1597 ( .I1(n1632), .I2(n969), .O(n1634) );
  AND_GATE U1598 ( .I1(n1632), .I2(n1635), .O(N214) );
  NAND_GATE U1599 ( .I1(n1636), .I2(n1637), .O(n1635) );
  NAND_GATE U1600 ( .I1(counter[1]), .I2(n968), .O(n1637) );
  NAND_GATE U1601 ( .I1(counter[0]), .I2(n969), .O(n1636) );
  AND_GATE U1602 ( .I1(n1632), .I2(n968), .O(N213) );
  AND_GATE U1603 ( .I1(play), .I2(n1638), .O(n1632) );
  NAND_GATE U1604 ( .I1(n1639), .I2(n1640), .O(n1638) );
  NAND_GATE U1605 ( .I1(n1641), .I2(n1025), .O(n1640) );
  NAND_GATE U1606 ( .I1(n1452), .I2(n1642), .O(n1641) );
  NAND_GATE U1607 ( .I1(n1643), .I2(n970), .O(n1642) );
  NAND_GATE U1608 ( .I1(n1644), .I2(n1027), .O(n1643) );
  OR3_GATE U1609 ( .I1(n1644), .I2(counter[1]), .I3(n1027), .O(n1452) );
  NOR_GATE U1610 ( .I1(n968), .I2(sound[0]), .O(n1644) );
  NAND_GATE U1611 ( .I1(n1645), .I2(n1027), .O(n1639) );
  NAND_GATE U1612 ( .I1(n1646), .I2(n1647), .O(n1645) );
  OR_GATE U1613 ( .I1(counter[1]), .I2(N162), .O(n1647) );
  OR_GATE U1614 ( .I1(n1025), .I2(sound[0]), .O(n1646) );
  AND_GATE U1615 ( .I1(timebase[1]), .I2(n949), .O(n1648) );
  b12_SCCOMP_DECOMPRESSOR b12_U_decompressor_ScanCompression_mode ( .din({
        test_si2, test_si1}), .dout({n37, n38, n40, n42, n44, n46, n49, n52, 
        n55, n58}), .sel({test_si4, test_si3}) );
  b12_SCCOMP_COMPRESSOR b12_U_compressor_ScanCompression_mode ( .din({wr, 
        scan[3], nl[0], memory_26__0_, memory_20__0_, memory_14__0_, 
        memory_8__0_, memory_2__0_, gamma[4], snps_count[1]}), .dout({n39, n41, 
        n43, n45}) );
  FLIP_FLOP_D_RESET_SCAN count_reg_0_ ( .D(n956), .SI(count_5_), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(snps_count[0]) );
  FLIP_FLOP_D_RESET_SCAN num_reg_1_ ( .D(N220), .SI(num[0]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(num[1]) );
  FLIP_FLOP_D_RESET_SCAN count_reg_1_ ( .D(N220), .SI(snps_count[0]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(snps_count[1]) );
  FLIP_FLOP_D_RESET_SCAN num_reg_0_ ( .D(n956), .SI(nloss), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(num[0]) );
  FLIP_FLOP_D_RESET_SCAN gamma_reg_0_ ( .D(N911), .SI(data_out[1]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(gamma[0]) );
  FLIP_FLOP_D_RESET_SCAN data_out_reg_1_ ( .D(N286), .SI(data_out[0]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(data_out[1]) );
  FLIP_FLOP_D_RESET_SCAN gamma_reg_2_ ( .D(N913), .SI(gamma[1]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(gamma[2]) );
  FLIP_FLOP_D_RESET_SCAN gamma_reg_1_ ( .D(N912), .SI(gamma[0]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(gamma[1]) );
  FLIP_FLOP_D_RESET_SCAN gamma_reg_4_ ( .D(N915), .SI(gamma[3]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(gamma[4]) );
  FLIP_FLOP_D_RESET_SCAN gamma_reg_3_ ( .D(N914), .SI(gamma[2]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(gamma[3]) );
  FLIP_FLOP_D_RESET_SCAN data_out_reg_0_ ( .D(N287), .SI(data_in[1]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(data_out[0]) );
  FLIP_FLOP_D_RESET_SCAN counter_reg_0_ ( .D(N213), .SI(n69), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(counter[0]) );
  FLIP_FLOP_D_RESET_SCAN counter_reg_1_ ( .D(N214), .SI(counter[0]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(counter[1]) );
  FLIP_FLOP_D_RESET_SCAN counter_reg_2_ ( .D(N215), .SI(counter[1]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(N162) );
  FLIP_FLOP_D_RESET_SCAN max_reg_4_ ( .D(n790), .SI(n67), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(max[4]) );
  FLIP_FLOP_D_RESET_SCAN address_reg_4_ ( .D(n789), .SI(address[3]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(address[4]) );
  FLIP_FLOP_D_RESET_SCAN max_reg_0_ ( .D(n788), .SI(ind[1]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(max[0]) );
  FLIP_FLOP_D_RESET_SCAN max_reg_1_ ( .D(n787), .SI(max[0]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(max[1]) );
  FLIP_FLOP_D_RESET_SCAN max_reg_2_ ( .D(n786), .SI(max[1]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(max[2]) );
  FLIP_FLOP_D_RESET_SCAN max_reg_3_ ( .D(n785), .SI(max[2]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(max[3]) );
  FLIP_FLOP_D_RESET_SCAN timebase_reg_5_ ( .D(n784), .SI(timebase[4]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(timebase[5]) );
  FLIP_FLOP_D_RESET_SCAN timebase_reg_0_ ( .D(n783), .SI(speaker), .SE(test_se), .CK(clock), .RESET(n683), .Q(timebase[0]) );
  FLIP_FLOP_D_RESET_SCAN timebase_reg_1_ ( .D(n782), .SI(timebase[0]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(timebase[1]) );
  FLIP_FLOP_D_RESET_SCAN timebase_reg_2_ ( .D(n781), .SI(timebase[1]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(timebase[2]) );
  FLIP_FLOP_D_RESET_SCAN timebase_reg_3_ ( .D(n780), .SI(timebase[2]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(timebase[3]) );
  FLIP_FLOP_D_RESET_SCAN timebase_reg_4_ ( .D(n779), .SI(timebase[3]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(timebase[4]) );
  FLIP_FLOP_D_RESET_SCAN count_reg2_0_ ( .D(n778), .SI(address[4]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(count_0_1) );
  FLIP_FLOP_D_RESET_SCAN scan_reg_4_ ( .D(n777), .SI(n59), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(scan[4]) );
  FLIP_FLOP_D_RESET_SCAN scan_reg_0_ ( .D(n776), .SI(s), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(scan[0]) );
  FLIP_FLOP_D_RESET_SCAN scan_reg_1_ ( .D(n775), .SI(scan[0]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(scan[1]) );
  FLIP_FLOP_D_RESET_SCAN scan_reg_2_ ( .D(n774), .SI(scan[1]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(scan[2]) );
  FLIP_FLOP_D_RESET_SCAN scan_reg_3_ ( .D(n773), .SI(scan[2]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(scan[3]) );
  FLIP_FLOP_D_RESET_SCAN ind_reg_0_ ( .D(n772), .SI(n68), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(ind[0]) );
  FLIP_FLOP_D_RESET_SCAN ind_reg_1_ ( .D(n771), .SI(ind[0]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(ind[1]) );
  FLIP_FLOP_D_RESET_SCAN address_reg_0_ ( .D(n770), .SI(n70), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(address[0]) );
  FLIP_FLOP_D_RESET_SCAN address_reg_1_ ( .D(n769), .SI(address[0]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(address[1]) );
  FLIP_FLOP_D_RESET_SCAN address_reg_2_ ( .D(n768), .SI(address[1]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(address[2]) );
  FLIP_FLOP_D_RESET_SCAN data_in_reg_0_ ( .D(n767), .SI(N162), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(data_in[0]) );
  FLIP_FLOP_D_RESET_SCAN data_in_reg_1_ ( .D(n766), .SI(data_in[0]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(data_in[1]) );
  FLIP_FLOP_D_RESET_SCAN wr_reg ( .D(n765), .SI(timebase[5]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(wr) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_15__0_ ( .D(n764), .SI(memory_14__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_15__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_15__1_ ( .D(n763), .SI(memory_15__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_15__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_14__0_ ( .D(n762), .SI(memory_13__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_14__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_14__1_ ( .D(n761), .SI(n64), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(memory_14__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_13__0_ ( .D(n760), .SI(memory_12__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_13__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_13__1_ ( .D(n759), .SI(memory_13__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_13__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_12__0_ ( .D(n758), .SI(memory_11__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_12__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_12__1_ ( .D(n757), .SI(memory_12__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_12__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_11__0_ ( .D(n756), .SI(memory_10__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_11__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_11__1_ ( .D(n755), .SI(memory_11__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_11__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_10__0_ ( .D(n754), .SI(memory_9__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_10__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_10__1_ ( .D(n753), .SI(memory_10__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_10__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_9__0_ ( .D(n752), .SI(memory_8__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_9__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_9__1_ ( .D(n751), .SI(memory_9__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_9__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_8__0_ ( .D(n750), .SI(memory_7__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_8__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_8__1_ ( .D(n749), .SI(n65), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(memory_8__1_) );
  FLIP_FLOP_D_RESET_SCAN sound_reg_2_ ( .D(n748), .SI(sound[1]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(sound[2]) );
  FLIP_FLOP_D_RESET_SCAN play_reg ( .D(n747), .SI(num[1]), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(play) );
  FLIP_FLOP_D_RESET_SCAN address_reg_3_ ( .D(n746), .SI(address[2]), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(address[3]) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_31__0_ ( .D(n745), .SI(memory_30__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_31__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_31__1_ ( .D(n744), .SI(memory_31__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_31__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_30__0_ ( .D(n743), .SI(memory_29__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_30__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_30__1_ ( .D(n742), .SI(memory_30__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_30__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_29__0_ ( .D(n741), .SI(memory_28__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_29__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_29__1_ ( .D(n740), .SI(n61), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(memory_29__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_28__0_ ( .D(n739), .SI(memory_27__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_28__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_28__1_ ( .D(n738), .SI(memory_28__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_28__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_27__0_ ( .D(n737), .SI(memory_26__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_27__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_27__1_ ( .D(n736), .SI(memory_27__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_27__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_26__0_ ( .D(n735), .SI(memory_25__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_26__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_26__1_ ( .D(n734), .SI(n62), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(memory_26__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_25__0_ ( .D(n733), .SI(memory_24__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_25__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_25__1_ ( .D(n732), .SI(memory_25__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_25__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_24__0_ ( .D(n731), .SI(memory_23__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_24__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_24__1_ ( .D(n730), .SI(memory_24__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_24__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_23__0_ ( .D(n729), .SI(memory_22__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_23__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_23__1_ ( .D(n728), .SI(memory_23__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_23__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_22__0_ ( .D(n727), .SI(memory_21__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_22__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_22__1_ ( .D(n726), .SI(memory_22__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_22__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_21__0_ ( .D(n725), .SI(memory_20__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_21__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_21__1_ ( .D(n724), .SI(memory_21__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_21__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_20__0_ ( .D(n723), .SI(memory_19__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_20__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_20__1_ ( .D(n722), .SI(n63), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(memory_20__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_19__0_ ( .D(n721), .SI(memory_18__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_19__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_19__1_ ( .D(n720), .SI(memory_19__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_19__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_18__0_ ( .D(n719), .SI(memory_17__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_18__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_18__1_ ( .D(n718), .SI(memory_18__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_18__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_17__0_ ( .D(n717), .SI(memory_16__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_17__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_17__1_ ( .D(n716), .SI(memory_17__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_17__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_16__0_ ( .D(n715), .SI(memory_15__1_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_16__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_16__1_ ( .D(n714), .SI(memory_16__0_), 
        .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_16__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_7__0_ ( .D(n713), .SI(memory_6__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_7__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_7__1_ ( .D(n712), .SI(memory_7__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_7__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_6__0_ ( .D(n711), .SI(memory_5__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_6__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_6__1_ ( .D(n710), .SI(memory_6__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_6__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_5__0_ ( .D(n709), .SI(memory_4__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_5__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_5__1_ ( .D(n708), .SI(memory_5__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_5__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_4__0_ ( .D(n707), .SI(memory_3__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_4__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_4__1_ ( .D(n706), .SI(memory_4__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_4__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_3__0_ ( .D(n705), .SI(memory_2__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_3__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_3__1_ ( .D(n704), .SI(memory_3__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_3__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_2__0_ ( .D(n703), .SI(memory_1__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_2__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_2__1_ ( .D(n702), .SI(n66), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(memory_2__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_1__0_ ( .D(n701), .SI(memory_0__1_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_1__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_1__1_ ( .D(n700), .SI(memory_1__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_1__1_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_0__0_ ( .D(n699), .SI(max[4]), .SE(test_se), .CK(clock), .RESET(n683), .Q(memory_0__0_) );
  FLIP_FLOP_D_RESET_SCAN memory_reg_0__1_ ( .D(n698), .SI(memory_0__0_), .SE(
        test_se), .CK(clock), .RESET(n683), .Q(memory_0__1_) );
  FLIP_FLOP_D_RESET_SCAN nl_reg_3_ ( .D(n697), .SI(nl[2]), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(nl[3]) );
  FLIP_FLOP_D_RESET_SCAN nl_reg_2_ ( .D(n696), .SI(nl[1]), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(nl[2]) );
  FLIP_FLOP_D_RESET_SCAN sound_reg_0_ ( .D(n695), .SI(scan[4]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(sound[0]) );
  FLIP_FLOP_D_RESET_SCAN count_reg2_3_ ( .D(n694), .SI(count_2_), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(count_3_) );
  FLIP_FLOP_D_RESET_SCAN count_reg2_1_ ( .D(n693), .SI(count_0_1), .SE(test_se), .CK(clock), .RESET(n683), .Q(count_1_1) );
  FLIP_FLOP_D_RESET_SCAN count_reg2_2_ ( .D(n692), .SI(count_1_1), .SE(test_se), .CK(clock), .RESET(n683), .Q(count_2_) );
  FLIP_FLOP_D_RESET_SCAN count_reg2_4_ ( .D(n691), .SI(count_3_), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(count_4_) );
  FLIP_FLOP_D_RESET_SCAN count_reg2_5_ ( .D(n690), .SI(count_4_), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(count_5_) );
  FLIP_FLOP_D_RESET_SCAN nloss_reg ( .D(n689), .SI(nl[3]), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(nloss) );
  FLIP_FLOP_D_RESET_SCAN nl_reg_0_ ( .D(n688), .SI(memory_31__1_), .SE(test_se), .CK(clock), .RESET(n683), .Q(nl[0]) );
  FLIP_FLOP_D_RESET_SCAN nl_reg_1_ ( .D(n687), .SI(n60), .SE(test_se), .CK(
        clock), .RESET(n683), .Q(nl[1]) );
  FLIP_FLOP_D_RESET_SCAN sound_reg_1_ ( .D(n686), .SI(sound[0]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(sound[1]) );
  FLIP_FLOP_D_RESET_SCAN s_reg ( .D(n685), .SI(play), .SE(test_se), .CK(clock), 
        .RESET(n683), .Q(s) );
  FLIP_FLOP_D_RESET_SCAN speaker_reg ( .D(n684), .SI(sound[2]), .SE(test_se), 
        .CK(clock), .RESET(n683), .Q(speaker) );
  b12_DW01_decode_width1 b12_DW_decoder_inst ( .A(test_mode), .B({n33, n34})
         );
  NAND_GATE U1 ( .I1(n1), .I2(n2), .O(n70) );
  NAND_GATE U2 ( .I1(n3), .I2(n4), .O(n69) );
  NAND_GATE U3 ( .I1(n5), .I2(n6), .O(n68) );
  NAND_GATE U4 ( .I1(n7), .I2(n8), .O(n67) );
  NAND_GATE U5 ( .I1(n9), .I2(n10), .O(n66) );
  NAND_GATE U6 ( .I1(n11), .I2(n12), .O(n65) );
  NAND_GATE U8 ( .I1(n13), .I2(n14), .O(n64) );
  NAND_GATE U9 ( .I1(n15), .I2(n16), .O(n63) );
  NAND_GATE U10 ( .I1(n17), .I2(n18), .O(n62) );
  NAND_GATE U11 ( .I1(n19), .I2(n20), .O(n61) );
  NAND_GATE U12 ( .I1(n21), .I2(n22), .O(n60) );
  NAND_GATE U13 ( .I1(n23), .I2(n24), .O(n59) );
  NAND_GATE U14 ( .I1(n25), .I2(n26), .O(test_so1) );
  NAND_GATE U15 ( .I1(n27), .I2(n28), .O(test_so2) );
  NAND_GATE U16 ( .I1(n29), .I2(n30), .O(test_so3) );
  NAND_GATE U17 ( .I1(n31), .I2(n32), .O(test_so4) );
  NAND_GATE U18 ( .I1(test_si1), .I2(n34), .O(n1) );
  NAND_GATE U19 ( .I1(n58), .I2(n33), .O(n2) );
  NAND_GATE U20 ( .I1(n55), .I2(n33), .O(n3) );
  NAND_GATE U21 ( .I1(snps_count[1]), .I2(n34), .O(n4) );
  NAND_GATE U22 ( .I1(n52), .I2(n33), .O(n5) );
  NAND_GATE U23 ( .I1(gamma[4]), .I2(n34), .O(n6) );
  NAND_GATE U24 ( .I1(max[3]), .I2(n33), .O(n7) );
  NAND_GATE U25 ( .I1(test_si2), .I2(n34), .O(n8) );
  NAND_GATE U26 ( .I1(n49), .I2(n33), .O(n9) );
  NAND_GATE U27 ( .I1(memory_2__0_), .I2(n34), .O(n10) );
  NAND_GATE U28 ( .I1(n46), .I2(n33), .O(n11) );
  NAND_GATE U29 ( .I1(memory_8__0_), .I2(n34), .O(n12) );
  NAND_GATE U30 ( .I1(n44), .I2(n33), .O(n13) );
  NAND_GATE U31 ( .I1(test_si3), .I2(n34), .O(n14) );
  NAND_GATE U32 ( .I1(n42), .I2(n33), .O(n15) );
  NAND_GATE U33 ( .I1(memory_20__0_), .I2(n34), .O(n16) );
  NAND_GATE U34 ( .I1(n40), .I2(n33), .O(n17) );
  NAND_GATE U35 ( .I1(memory_26__0_), .I2(n34), .O(n18) );
  NAND_GATE U36 ( .I1(memory_29__0_), .I2(n33), .O(n19) );
  NAND_GATE U37 ( .I1(test_si4), .I2(n34), .O(n20) );
  NAND_GATE U38 ( .I1(n38), .I2(n33), .O(n21) );
  NAND_GATE U39 ( .I1(nl[0]), .I2(n34), .O(n22) );
  NAND_GATE U40 ( .I1(n37), .I2(n33), .O(n23) );
  NAND_GATE U41 ( .I1(scan[3]), .I2(n34), .O(n24) );
  NAND_GATE U42 ( .I1(n45), .I2(n33), .O(n25) );
  NAND_GATE U43 ( .I1(max[3]), .I2(n34), .O(n26) );
  NAND_GATE U44 ( .I1(n43), .I2(n33), .O(n27) );
  NAND_GATE U45 ( .I1(memory_14__0_), .I2(n34), .O(n28) );
  NAND_GATE U46 ( .I1(n41), .I2(n33), .O(n29) );
  NAND_GATE U47 ( .I1(memory_29__0_), .I2(n34), .O(n30) );
  NAND_GATE U48 ( .I1(n33), .I2(n39), .O(n31) );
  NAND_GATE U49 ( .I1(n34), .I2(wr), .O(n32) );
endmodule

