\ Model RSDEE
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  0 Ps[1] + 0 Ps[2] + 0 Ps[3] + 0 Ps[4] + 0 Ps[5] + 0 Ps[6] + 0 Ps[7]
   + 0 Ps[8] + 0 Ps[9] + 0 Ps[10] + 0 Ps[11] + 0 Ps[12] + 0 Ps[13]
   + 0 Qs[1] + 0 Qs[2] + 0 Qs[3] + 0 Qs[4] + 0 Qs[5] + 0 Qs[6] + 0 Qs[7]
   + 0 Qs[8] + 0 Qs[9] + 0 Qs[10] + 0 Qs[11] + 0 Qs[12] + 0 Qs[13]
   + 0.04 i_sqr[6,12] + 0.08 i_sqr[2,4] + 0.04 i_sqr[1,2]
   + 0.04 i_sqr[10,11] + 0.09 i_sqr[3,4] + 0.04 i_sqr[2,1]
   + 0.11 i_sqr[14,4] + 0.09 i_sqr[4,3] + 0.04 i_sqr[3,7]
   + 0.09 i_sqr[11,13] + 0.04 i_sqr[11,10] + 0.08 i_sqr[12,13]
   + 0.04 i_sqr[7,3] + 0.11 i_sqr[7,9] + 0.075 i_sqr[14,13]
   + 0.08 i_sqr[8,9] + 0.08 i_sqr[9,8] + 0.11 i_sqr[9,14] + 0.11 i_sqr[8,6]
   + 0.09 i_sqr[13,11] + 0.075 i_sqr[13,14] + 0.08 i_sqr[5,8]
   + 0.11 i_sqr[6,8] + 0.09 i_sqr[10,1] + 0.08 i_sqr[4,2]
   + 0.04 i_sqr[12,6] + 0.11 i_sqr[14,9] + 0.09 i_sqr[1,10]
   + 0.11 i_sqr[4,14] + 0.08 i_sqr[13,12] + 0.11 i_sqr[9,7]
   + 0.08 i_sqr[8,5]
Subject To
 lower_bound_1: v_sqr[1] >= 0.8649
 upper_bound_1: v_sqr[1] <= 1.1025
 lower_bound_2: v_sqr[2] >= 0.8649
 upper_bound_2: v_sqr[2] <= 1.1025
 lower_bound_3: v_sqr[3] >= 0.8649
 upper_bound_3: v_sqr[3] <= 1.1025
 lower_bound_4: v_sqr[4] >= 0.8649
 upper_bound_4: v_sqr[4] <= 1.1025
 lower_bound_5: v_sqr[5] >= 0.8649
 upper_bound_5: v_sqr[5] <= 1.1025
 lower_bound_6: v_sqr[6] >= 0.8649
 upper_bound_6: v_sqr[6] <= 1.1025
 lower_bound_7: v_sqr[7] >= 0.8649
 upper_bound_7: v_sqr[7] <= 1.1025
 lower_bound_8: v_sqr[8] >= 0.8649
 upper_bound_8: v_sqr[8] <= 1.1025
 lower_bound_9: v_sqr[9] >= 0.8649
 upper_bound_9: v_sqr[9] <= 1.1025
 lower_bound_10: v_sqr[10] >= 0.8649
 upper_bound_10: v_sqr[10] <= 1.1025
 lower_bound_11: v_sqr[11] >= 0.8649
 upper_bound_11: v_sqr[11] <= 1.1025
 lower_bound_12: v_sqr[12] >= 0.8649
 upper_bound_12: v_sqr[12] <= 1.1025
 lower_bound_13: v_sqr[13] >= 0.8649
 upper_bound_13: v_sqr[13] <= 1.1025
 lower_bound_14: v_sqr[14] >= 0.8649
 upper_bound_14: v_sqr[14] <= 1.1025
 balance_de_potencia_activa_sub_14: - P[6,12] - P[2,4] - P[1,2] - P[10,11]
   - P[3,4] - P[2,1] - P[14,4] - P[4,3] - P[3,7] - P[11,13] - P[11,10]
   - P[12,13] - P[7,3] - P[7,9] - P[14,13] - P[8,9] - P[9,8] - P[9,14]
   - P[8,6] - P[13,11] - P[13,14] - P[5,8] - P[6,8] - P[10,1] - P[4,2]
   - P[12,6] - P[14,9] - P[1,10] - P[4,14] - P[13,12] - P[9,7] - P[8,5]
   + Ps[14] - 0.04 i_sqr[6,12] - 0.08 i_sqr[2,4] - 0.04 i_sqr[1,2]
   - 0.04 i_sqr[10,11] - 0.09 i_sqr[3,4] - 0.04 i_sqr[2,1]
   - 0.11 i_sqr[14,4] - 0.09 i_sqr[4,3] - 0.04 i_sqr[3,7]
   - 0.09 i_sqr[11,13] - 0.04 i_sqr[11,10] - 0.08 i_sqr[12,13]
   - 0.04 i_sqr[7,3] - 0.11 i_sqr[7,9] - 0.075 i_sqr[14,13]
   - 0.08 i_sqr[8,9] - 0.08 i_sqr[9,8] - 0.11 i_sqr[9,14] - 0.11 i_sqr[8,6]
   - 0.09 i_sqr[13,11] - 0.075 i_sqr[13,14] - 0.08 i_sqr[5,8]
   - 0.11 i_sqr[6,8] - 0.09 i_sqr[10,1] - 0.08 i_sqr[4,2]
   - 0.04 i_sqr[12,6] - 0.11 i_sqr[14,9] - 0.09 i_sqr[1,10]
   - 0.11 i_sqr[4,14] - 0.08 i_sqr[13,12] - 0.11 i_sqr[9,7]
   - 0.08 i_sqr[8,5] = 0
 balance_de_potencia_reactiva_sub_14: - q[6,12] - q[2,4] - q[1,2]
   - q[10,11] - q[3,4] - q[2,1] - q[14,4] - q[4,3] - q[3,7] - q[11,13]
   - q[11,10] - q[12,13] - q[7,3] - q[7,9] - q[14,13] - q[8,9] - q[9,8]
   - q[9,14] - q[8,6] - q[13,11] - q[13,14] - q[5,8] - q[6,8] - q[10,1]
   - q[4,2] - q[12,6] - q[14,9] - q[1,10] - q[4,14] - q[13,12] - q[9,7]
   - q[8,5] + Qs[14] - 0.04 i_sqr[6,12] - 0.11 i_sqr[2,4] - 0.04 i_sqr[1,2]
   - 0.04 i_sqr[10,11] - 0.12 i_sqr[3,4] - 0.04 i_sqr[2,1]
   - 0.11 i_sqr[14,4] - 0.12 i_sqr[4,3] - 0.04 i_sqr[3,7]
   - 0.18 i_sqr[11,13] - 0.04 i_sqr[11,10] - 0.11 i_sqr[12,13]
   - 0.04 i_sqr[7,3] - 0.11 i_sqr[7,9] - 0.1 i_sqr[14,13] - 0.11 i_sqr[8,9]
   - 0.11 i_sqr[9,8] - 0.11 i_sqr[9,14] - 0.11 i_sqr[8,6]
   - 0.18 i_sqr[13,11] - 0.1 i_sqr[13,14] - 0.11 i_sqr[5,8]
   - 0.11 i_sqr[6,8] - 0.12 i_sqr[10,1] - 0.11 i_sqr[4,2]
   - 0.04 i_sqr[12,6] - 0.11 i_sqr[14,9] - 0.12 i_sqr[1,10]
   - 0.11 i_sqr[4,14] - 0.11 i_sqr[13,12] - 0.11 i_sqr[9,7]
   - 0.11 i_sqr[8,5] = 0
 lower_bound_6_12: - Delta_Discretización[6,12] + 1.1025 y[6,12] <= 1.1025
 upper_bound_6_12: Delta_Discretización[6,12] + 1.1025 y[6,12] <= 1.1025
 lower_bound_6_12: i_sqr[6,12] >= 0
 upper_bound_6_12: i_sqr[6,12] - 25 y[6,12] <= 0
 arco_unitario: y[6,12] + y[12,6] <= 1
 lower_bound_2_4: - Delta_Discretización[2,4] + 1.1025 y[2,4] <= 1.1025
 upper_bound_2_4: Delta_Discretización[2,4] + 1.1025 y[2,4] <= 1.1025
 lower_bound_2_4: i_sqr[2,4] >= 0
 upper_bound_2_4: i_sqr[2,4] - 25 y[2,4] <= 0
 arco_unitario: y[2,4] + y[4,2] <= 1
 lower_bound_1_2: - Delta_Discretización[1,2] + 1.1025 y[1,2] <= 1.1025
 upper_bound_1_2: Delta_Discretización[1,2] + 1.1025 y[1,2] <= 1.1025
 lower_bound_1_2: i_sqr[1,2] >= 0
 upper_bound_1_2: i_sqr[1,2] - 25 y[1,2] <= 0
 arco_unitario: y[1,2] + y[2,1] <= 1
 lower_bound_10_11: - Delta_Discretización[10,11] + 1.1025 y[10,11]
   <= 1.1025
 upper_bound_10_11: Delta_Discretización[10,11] + 1.1025 y[10,11]
   <= 1.1025
 lower_bound_10_11: i_sqr[10,11] >= 0
 upper_bound_10_11: i_sqr[10,11] - 25 y[10,11] <= 0
 arco_unitario: y[10,11] + y[11,10] <= 1
 lower_bound_3_4: - Delta_Discretización[3,4] + 1.1025 y[3,4] <= 1.1025
 upper_bound_3_4: Delta_Discretización[3,4] + 1.1025 y[3,4] <= 1.1025
 lower_bound_3_4: i_sqr[3,4] >= 0
 upper_bound_3_4: i_sqr[3,4] - 25 y[3,4] <= 0
 arco_unitario: y[3,4] + y[4,3] <= 1
 lower_bound_2_1: - Delta_Discretización[2,1] + 1.1025 y[2,1] <= 1.1025
 upper_bound_2_1: Delta_Discretización[2,1] + 1.1025 y[2,1] <= 1.1025
 lower_bound_2_1: i_sqr[2,1] >= 0
 upper_bound_2_1: i_sqr[2,1] - 25 y[2,1] <= 0
 arco_unitario: y[1,2] + y[2,1] <= 1
 lower_bound_14_4: - Delta_Discretización[14,4] + 1.1025 y[14,4] <= 1.1025
 upper_bound_14_4: Delta_Discretización[14,4] + 1.1025 y[14,4] <= 1.1025
 lower_bound_14_4: i_sqr[14,4] >= 0
 upper_bound_14_4: i_sqr[14,4] - 25 y[14,4] <= 0
 arco_unitario: y[14,4] + y[4,14] <= 1
 lower_bound_4_3: - Delta_Discretización[4,3] + 1.1025 y[4,3] <= 1.1025
 upper_bound_4_3: Delta_Discretización[4,3] + 1.1025 y[4,3] <= 1.1025
 lower_bound_4_3: i_sqr[4,3] >= 0
 upper_bound_4_3: i_sqr[4,3] - 25 y[4,3] <= 0
 arco_unitario: y[3,4] + y[4,3] <= 1
 lower_bound_3_7: - Delta_Discretización[3,7] + 1.1025 y[3,7] <= 1.1025
 upper_bound_3_7: Delta_Discretización[3,7] + 1.1025 y[3,7] <= 1.1025
 lower_bound_3_7: i_sqr[3,7] >= 0
 upper_bound_3_7: i_sqr[3,7] - 25 y[3,7] <= 0
 arco_unitario: y[3,7] + y[7,3] <= 1
 lower_bound_11_13: - Delta_Discretización[11,13] + 1.1025 y[11,13]
   <= 1.1025
 upper_bound_11_13: Delta_Discretización[11,13] + 1.1025 y[11,13]
   <= 1.1025
 lower_bound_11_13: i_sqr[11,13] >= 0
 upper_bound_11_13: i_sqr[11,13] - 25 y[11,13] <= 0
 arco_unitario: y[11,13] + y[13,11] <= 1
 lower_bound_11_10: - Delta_Discretización[11,10] + 1.1025 y[11,10]
   <= 1.1025
 upper_bound_11_10: Delta_Discretización[11,10] + 1.1025 y[11,10]
   <= 1.1025
 lower_bound_11_10: i_sqr[11,10] >= 0
 upper_bound_11_10: i_sqr[11,10] - 25 y[11,10] <= 0
 arco_unitario: y[10,11] + y[11,10] <= 1
 lower_bound_12_13: - Delta_Discretización[12,13] + 1.1025 y[12,13]
   <= 1.1025
 upper_bound_12_13: Delta_Discretización[12,13] + 1.1025 y[12,13]
   <= 1.1025
 lower_bound_12_13: i_sqr[12,13] >= 0
 upper_bound_12_13: i_sqr[12,13] - 25 y[12,13] <= 0
 arco_unitario: y[12,13] + y[13,12] <= 1
 lower_bound_7_3: - Delta_Discretización[7,3] + 1.1025 y[7,3] <= 1.1025
 upper_bound_7_3: Delta_Discretización[7,3] + 1.1025 y[7,3] <= 1.1025
 lower_bound_7_3: i_sqr[7,3] >= 0
 upper_bound_7_3: i_sqr[7,3] - 25 y[7,3] <= 0
 arco_unitario: y[3,7] + y[7,3] <= 1
 lower_bound_7_9: - Delta_Discretización[7,9] + 1.1025 y[7,9] <= 1.1025
 upper_bound_7_9: Delta_Discretización[7,9] + 1.1025 y[7,9] <= 1.1025
 lower_bound_7_9: i_sqr[7,9] >= 0
 upper_bound_7_9: i_sqr[7,9] - 25 y[7,9] <= 0
 arco_unitario: y[7,9] + y[9,7] <= 1
 lower_bound_14_13: - Delta_Discretización[14,13] + 1.1025 y[14,13]
   <= 1.1025
 upper_bound_14_13: Delta_Discretización[14,13] + 1.1025 y[14,13]
   <= 1.1025
 lower_bound_14_13: i_sqr[14,13] >= 0
 upper_bound_14_13: i_sqr[14,13] - 25 y[14,13] <= 0
 arco_unitario: y[14,13] + y[13,14] <= 1
 lower_bound_8_9: - Delta_Discretización[8,9] + 1.1025 y[8,9] <= 1.1025
 upper_bound_8_9: Delta_Discretización[8,9] + 1.1025 y[8,9] <= 1.1025
 lower_bound_8_9: i_sqr[8,9] >= 0
 upper_bound_8_9: i_sqr[8,9] - 25 y[8,9] <= 0
 arco_unitario: y[8,9] + y[9,8] <= 1
 lower_bound_9_8: - Delta_Discretización[9,8] + 1.1025 y[9,8] <= 1.1025
 upper_bound_9_8: Delta_Discretización[9,8] + 1.1025 y[9,8] <= 1.1025
 lower_bound_9_8: i_sqr[9,8] >= 0
 upper_bound_9_8: i_sqr[9,8] - 25 y[9,8] <= 0
 arco_unitario: y[8,9] + y[9,8] <= 1
 lower_bound_9_14: - Delta_Discretización[9,14] + 1.1025 y[9,14] <= 1.1025
 upper_bound_9_14: Delta_Discretización[9,14] + 1.1025 y[9,14] <= 1.1025
 lower_bound_9_14: i_sqr[9,14] >= 0
 upper_bound_9_14: i_sqr[9,14] - 25 y[9,14] <= 0
 arco_unitario: y[9,14] + y[14,9] <= 1
 lower_bound_8_6: - Delta_Discretización[8,6] + 1.1025 y[8,6] <= 1.1025
 upper_bound_8_6: Delta_Discretización[8,6] + 1.1025 y[8,6] <= 1.1025
 lower_bound_8_6: i_sqr[8,6] >= 0
 upper_bound_8_6: i_sqr[8,6] - 25 y[8,6] <= 0
 arco_unitario: y[8,6] + y[6,8] <= 1
 lower_bound_13_11: - Delta_Discretización[13,11] + 1.1025 y[13,11]
   <= 1.1025
 upper_bound_13_11: Delta_Discretización[13,11] + 1.1025 y[13,11]
   <= 1.1025
 lower_bound_13_11: i_sqr[13,11] >= 0
 upper_bound_13_11: i_sqr[13,11] - 25 y[13,11] <= 0
 arco_unitario: y[11,13] + y[13,11] <= 1
 lower_bound_13_14: - Delta_Discretización[13,14] + 1.1025 y[13,14]
   <= 1.1025
 upper_bound_13_14: Delta_Discretización[13,14] + 1.1025 y[13,14]
   <= 1.1025
 lower_bound_13_14: i_sqr[13,14] >= 0
 upper_bound_13_14: i_sqr[13,14] - 25 y[13,14] <= 0
 arco_unitario: y[14,13] + y[13,14] <= 1
 lower_bound_5_8: - Delta_Discretización[5,8] + 1.1025 y[5,8] <= 1.1025
 upper_bound_5_8: Delta_Discretización[5,8] + 1.1025 y[5,8] <= 1.1025
 lower_bound_5_8: i_sqr[5,8] >= 0
 upper_bound_5_8: i_sqr[5,8] - 25 y[5,8] <= 0
 arco_unitario: y[5,8] + y[8,5] <= 1
 lower_bound_6_8: - Delta_Discretización[6,8] + 1.1025 y[6,8] <= 1.1025
 upper_bound_6_8: Delta_Discretización[6,8] + 1.1025 y[6,8] <= 1.1025
 lower_bound_6_8: i_sqr[6,8] >= 0
 upper_bound_6_8: i_sqr[6,8] - 25 y[6,8] <= 0
 arco_unitario: y[8,6] + y[6,8] <= 1
 lower_bound_10_1: - Delta_Discretización[10,1] + 1.1025 y[10,1] <= 1.1025
 upper_bound_10_1: Delta_Discretización[10,1] + 1.1025 y[10,1] <= 1.1025
 lower_bound_10_1: i_sqr[10,1] >= 0
 upper_bound_10_1: i_sqr[10,1] - 25 y[10,1] <= 0
 arco_unitario: y[10,1] + y[1,10] <= 1
 lower_bound_4_2: - Delta_Discretización[4,2] + 1.1025 y[4,2] <= 1.1025
 upper_bound_4_2: Delta_Discretización[4,2] + 1.1025 y[4,2] <= 1.1025
 lower_bound_4_2: i_sqr[4,2] >= 0
 upper_bound_4_2: i_sqr[4,2] - 25 y[4,2] <= 0
 arco_unitario: y[2,4] + y[4,2] <= 1
 lower_bound_12_6: - Delta_Discretización[12,6] + 1.1025 y[12,6] <= 1.1025
 upper_bound_12_6: Delta_Discretización[12,6] + 1.1025 y[12,6] <= 1.1025
 lower_bound_12_6: i_sqr[12,6] >= 0
 upper_bound_12_6: i_sqr[12,6] - 25 y[12,6] <= 0
 arco_unitario: y[6,12] + y[12,6] <= 1
 lower_bound_14_9: - Delta_Discretización[14,9] + 1.1025 y[14,9] <= 1.1025
 upper_bound_14_9: Delta_Discretización[14,9] + 1.1025 y[14,9] <= 1.1025
 lower_bound_14_9: i_sqr[14,9] >= 0
 upper_bound_14_9: i_sqr[14,9] - 25 y[14,9] <= 0
 arco_unitario: y[9,14] + y[14,9] <= 1
 lower_bound_1_10: - Delta_Discretización[1,10] + 1.1025 y[1,10] <= 1.1025
 upper_bound_1_10: Delta_Discretización[1,10] + 1.1025 y[1,10] <= 1.1025
 lower_bound_1_10: i_sqr[1,10] >= 0
 upper_bound_1_10: i_sqr[1,10] - 25 y[1,10] <= 0
 arco_unitario: y[10,1] + y[1,10] <= 1
 lower_bound_4_14: - Delta_Discretización[4,14] + 1.1025 y[4,14] <= 1.1025
 upper_bound_4_14: Delta_Discretización[4,14] + 1.1025 y[4,14] <= 1.1025
 lower_bound_4_14: i_sqr[4,14] >= 0
 upper_bound_4_14: i_sqr[4,14] - 25 y[4,14] <= 0
 arco_unitario: y[14,4] + y[4,14] <= 1
 lower_bound_13_12: - Delta_Discretización[13,12] + 1.1025 y[13,12]
   <= 1.1025
 upper_bound_13_12: Delta_Discretización[13,12] + 1.1025 y[13,12]
   <= 1.1025
 lower_bound_13_12: i_sqr[13,12] >= 0
 upper_bound_13_12: i_sqr[13,12] - 25 y[13,12] <= 0
 arco_unitario: y[12,13] + y[13,12] <= 1
 lower_bound_9_7: - Delta_Discretización[9,7] + 1.1025 y[9,7] <= 1.1025
 upper_bound_9_7: Delta_Discretización[9,7] + 1.1025 y[9,7] <= 1.1025
 lower_bound_9_7: i_sqr[9,7] >= 0
 upper_bound_9_7: i_sqr[9,7] - 25 y[9,7] <= 0
 arco_unitario: y[7,9] + y[9,7] <= 1
 lower_bound_8_5: - Delta_Discretización[8,5] + 1.1025 y[8,5] <= 1.1025
 upper_bound_8_5: Delta_Discretización[8,5] + 1.1025 y[8,5] <= 1.1025
 lower_bound_8_5: i_sqr[8,5] >= 0
 upper_bound_8_5: i_sqr[8,5] - 25 y[8,5] <= 0
 arco_unitario: y[5,8] + y[8,5] <= 1
 topologÃ­a_radial: y[6,12] + y[2,4] + y[1,2] + y[10,11] + y[3,4] + y[2,1]
   + y[14,4] + y[4,3] + y[3,7] + y[11,13] + y[11,10] + y[12,13] + y[7,3]
   + y[7,9] + y[14,13] + y[8,9] + y[9,8] + y[9,14] + y[8,6] + y[13,11]
   + y[13,14] + y[5,8] + y[6,8] + y[10,1] + y[4,2] + y[12,6] + y[14,9]
   + y[1,10] + y[4,14] + y[13,12] + y[9,7] + y[8,5] = 13
 balance_de_potencia_activa_1: P[2,1] + P[10,1] + [ - P[1,2] * y[1,2]
   - P[1,10] * y[1,10] - 0.04 i_sqr[1,2] * y[1,2]
   - 0.09 i_sqr[1,10] * y[1,10] ] = 0.021
 balance_de_potencia_reactiva_1: q[2,1] + q[10,1] + [ - q[1,2] * y[1,2]
   - q[1,10] * y[1,10] - 0.04 i_sqr[1,2] * y[1,2]
   - 0.12 i_sqr[1,10] * y[1,10] ] = 0.01
 balance_de_potencia_activa_2: P[1,2] + P[4,2] + [ - P[2,4] * y[2,4]
   - P[2,1] * y[2,1] - 0.08 i_sqr[2,4] * y[2,4] - 0.04 i_sqr[2,1] * y[2,1]
   ] = 0.01
 balance_de_potencia_reactiva_2: q[1,2] + q[4,2] + [ - q[2,4] * y[2,4]
   - q[2,1] * y[2,1] - 0.11 i_sqr[2,4] * y[2,4] - 0.04 i_sqr[2,1] * y[2,1]
   ] = 0.009
 balance_de_potencia_activa_3: P[4,3] + P[7,3] + [ - P[3,4] * y[3,4]
   - P[3,7] * y[3,7] - 0.09 i_sqr[3,4] * y[3,4] - 0.04 i_sqr[3,7] * y[3,7]
   ] = 0.01
 balance_de_potencia_reactiva_3: q[4,3] + q[7,3] + [ - q[3,4] * y[3,4]
   - q[3,7] * y[3,7] - 0.12 i_sqr[3,4] * y[3,4] - 0.04 i_sqr[3,7] * y[3,7]
   ] = 0.007
 balance_de_potencia_activa_4: P[2,4] + P[3,4] + P[14,4] + [
   - P[4,3] * y[4,3] - P[4,2] * y[4,2] - P[4,14] * y[4,14]
   - 0.09 i_sqr[4,3] * y[4,3] - 0.08 i_sqr[4,2] * y[4,2]
   - 0.11 i_sqr[4,14] * y[4,14] ] = 0.01
 balance_de_potencia_reactiva_4: q[2,4] + q[3,4] + q[14,4] + [
   - q[4,3] * y[4,3] - q[4,2] * y[4,2] - q[4,14] * y[4,14]
   - 0.12 i_sqr[4,3] * y[4,3] - 0.11 i_sqr[4,2] * y[4,2]
   - 0.11 i_sqr[4,14] * y[4,14] ] = 0.009
 balance_de_potencia_activa_5: P[8,5] + [ - P[5,8] * y[5,8]
   - 0.08 i_sqr[5,8] * y[5,8] ] = 0.045
 balance_de_potencia_reactiva_5: q[8,5] + [ - q[5,8] * y[5,8]
   - 0.11 i_sqr[5,8] * y[5,8] ] = 0.02
 balance_de_potencia_activa_6: P[8,6] + P[12,6] + [ - P[6,12] * y[6,12]
   - P[6,8] * y[6,8] - 0.04 i_sqr[6,12] * y[6,12]
   - 0.11 i_sqr[6,8] * y[6,8] ] = 0.006
 balance_de_potencia_reactiva_6: q[8,6] + q[12,6] + [ - q[6,12] * y[6,12]
   - q[6,8] * y[6,8] - 0.04 i_sqr[6,12] * y[6,12]
   - 0.11 i_sqr[6,8] * y[6,8] ] = 0.001
 balance_de_potencia_activa_7: P[3,7] + P[9,7] + [ - P[7,3] * y[7,3]
   - P[7,9] * y[7,9] - 0.04 i_sqr[7,3] * y[7,3] - 0.11 i_sqr[7,9] * y[7,9]
   ] = 0.01
 balance_de_potencia_reactiva_7: q[3,7] + q[9,7] + [ - q[7,3] * y[7,3]
   - q[7,9] * y[7,9] - 0.04 i_sqr[7,3] * y[7,3] - 0.11 i_sqr[7,9] * y[7,9]
   ] = 0.009
 balance_de_potencia_activa_8: P[9,8] + P[5,8] + P[6,8] + [
   - P[8,9] * y[8,9] - P[8,6] * y[8,6] - P[8,5] * y[8,5]
   - 0.08 i_sqr[8,9] * y[8,9] - 0.11 i_sqr[8,6] * y[8,6]
   - 0.08 i_sqr[8,5] * y[8,5] ] = 0.05
 balance_de_potencia_reactiva_8: q[9,8] + q[5,8] + q[6,8] + [
   - q[8,9] * y[8,9] - q[8,6] * y[8,6] - q[8,5] * y[8,5]
   - 0.11 i_sqr[8,9] * y[8,9] - 0.11 i_sqr[8,6] * y[8,6]
   - 0.11 i_sqr[8,5] * y[8,5] ] = 0.03
 balance_de_potencia_activa_9: P[7,9] + P[8,9] + P[14,9] + [
   - P[9,8] * y[9,8] - P[9,14] * y[9,14] - P[9,7] * y[9,7]
   - 0.08 i_sqr[9,8] * y[9,8] - 0.11 i_sqr[9,14] * y[9,14]
   - 0.11 i_sqr[9,7] * y[9,7] ] = 0.04
 balance_de_potencia_reactiva_9: q[7,9] + q[8,9] + q[14,9] + [
   - q[9,8] * y[9,8] - q[9,14] * y[9,14] - q[9,7] * y[9,7]
   - 0.11 i_sqr[9,8] * y[9,8] - 0.11 i_sqr[9,14] * y[9,14]
   - 0.11 i_sqr[9,7] * y[9,7] ] = 0.027
 balance_de_potencia_activa_10: P[11,10] + P[1,10] + [
   - P[10,11] * y[10,11] - P[10,1] * y[10,1] - 0.04 i_sqr[10,11] * y[10,11]
   - 0.09 i_sqr[10,1] * y[10,1] ] = 0.015
 balance_de_potencia_reactiva_10: q[11,10] + q[1,10] + [
   - q[10,11] * y[10,11] - q[10,1] * y[10,1] - 0.04 i_sqr[10,11] * y[10,11]
   - 0.12 i_sqr[10,1] * y[10,1] ] = 0.012
 balance_de_potencia_activa_11: P[10,11] + P[13,11] + [
   - P[11,13] * y[11,13] - P[11,10] * y[11,10]
   - 0.09 i_sqr[11,13] * y[11,13] - 0.04 i_sqr[11,10] * y[11,10] ] = 0.02
 balance_de_potencia_reactiva_11: q[10,11] + q[13,11] + [
   - q[11,13] * y[11,13] - q[11,10] * y[11,10]
   - 0.18 i_sqr[11,13] * y[11,13] - 0.04 i_sqr[11,10] * y[11,10] ] = 0.008
 balance_de_potencia_activa_12: P[6,12] + P[13,12] + [
   - P[12,13] * y[12,13] - P[12,6] * y[12,6] - 0.08 i_sqr[12,13] * y[12,13]
   - 0.04 i_sqr[12,6] * y[12,6] ] = 0.03
 balance_de_potencia_reactiva_12: q[6,12] + q[13,12] + [
   - q[12,13] * y[12,13] - q[12,6] * y[12,6] - 0.11 i_sqr[12,13] * y[12,13]
   - 0.04 i_sqr[12,6] * y[12,6] ] = 0.015
 balance_de_potencia_activa_13: P[11,13] + P[12,13] + P[14,13] + [
   - P[13,11] * y[13,11] - P[13,14] * y[13,14] - P[13,12] * y[13,12]
   - 0.09 i_sqr[13,11] * y[13,11] - 0.075 i_sqr[13,14] * y[13,14]
   - 0.08 i_sqr[13,12] * y[13,12] ] = 0.02
 balance_de_potencia_reactiva_13: q[11,13] + q[12,13] + q[14,13] + [
   - q[13,11] * y[13,11] - q[13,14] * y[13,14] - q[13,12] * y[13,12]
   - 0.18 i_sqr[13,11] * y[13,11] - 0.1 i_sqr[13,14] * y[13,14]
   - 0.11 i_sqr[13,12] * y[13,12] ] = 0.016
 disminucion_voltaje_6_12: [ - 0.08 P[6,12] * y[6,12]
   - 0.08 q[6,12] * y[6,12] - 0.0032 i_sqr[6,12] * y[6,12]
   + v_sqr[6] * y[6,12] - v_sqr[12] * y[6,12]
   - Delta_Discretización[6,12] * y[6,12] ] = 0
 intervalo_(6,_12): [ - P[6,12] ^2 - q[6,12] ^2 + i_sqr[6,12] * v_sqr[6] ]
   >= 0
 disminucion_voltaje_2_4: [ - 0.16 P[2,4] * y[2,4] - 0.22 q[2,4] * y[2,4]
   - 0.0185 i_sqr[2,4] * y[2,4] + v_sqr[2] * y[2,4] - v_sqr[4] * y[2,4]
   - Delta_Discretización[2,4] * y[2,4] ] = 0
 intervalo_(2,_4): [ - P[2,4] ^2 - q[2,4] ^2 + i_sqr[2,4] * v_sqr[2] ]
   >= 0
 disminucion_voltaje_1_2: [ - 0.08 P[1,2] * y[1,2] - 0.08 q[1,2] * y[1,2]
   - 0.0032 i_sqr[1,2] * y[1,2] + v_sqr[1] * y[1,2] - v_sqr[2] * y[1,2]
   - Delta_Discretización[1,2] * y[1,2] ] = 0
 intervalo_(1,_2): [ - P[1,2] ^2 - q[1,2] ^2 + i_sqr[1,2] * v_sqr[1] ]
   >= 0
 disminucion_voltaje_10_11: [ - 0.08 P[10,11] * y[10,11]
   - 0.08 q[10,11] * y[10,11] - 0.0032 i_sqr[10,11] * y[10,11]
   + v_sqr[10] * y[10,11] - v_sqr[11] * y[10,11]
   - Delta_Discretización[10,11] * y[10,11] ] = 0
 intervalo_(10,_11): [ - P[10,11] ^2 - q[10,11] ^2
   + i_sqr[10,11] * v_sqr[10] ] >= 0
 disminucion_voltaje_3_4: [ - 0.18 P[3,4] * y[3,4] - 0.24 q[3,4] * y[3,4]
   - 0.0225 i_sqr[3,4] * y[3,4] + v_sqr[3] * y[3,4] - v_sqr[4] * y[3,4]
   - Delta_Discretización[3,4] * y[3,4] ] = 0
 intervalo_(3,_4): [ - P[3,4] ^2 - q[3,4] ^2 + i_sqr[3,4] * v_sqr[3] ]
   >= 0
 disminucion_voltaje_2_1: [ - 0.08 P[2,1] * y[2,1] - 0.08 q[2,1] * y[2,1]
   - 0.0032 i_sqr[2,1] * y[2,1] - v_sqr[1] * y[2,1] + v_sqr[2] * y[2,1]
   - Delta_Discretización[2,1] * y[2,1] ] = 0
 intervalo_(2,_1): [ - P[2,1] ^2 - q[2,1] ^2 + i_sqr[2,1] * v_sqr[2] ]
   >= 0
 disminucion_voltaje_14_4: [ - 0.22 P[14,4] * y[14,4]
   - 0.22 q[14,4] * y[14,4] - 0.0242 i_sqr[14,4] * y[14,4]
   - v_sqr[4] * y[14,4] + v_sqr[14] * y[14,4]
   - Delta_Discretización[14,4] * y[14,4] ] = 0
 intervalo_(14,_4): [ - P[14,4] ^2 - q[14,4] ^2 + i_sqr[14,4] * v_sqr[14] ]
   >= 0
 disminucion_voltaje_4_3: [ - 0.18 P[4,3] * y[4,3] - 0.24 q[4,3] * y[4,3]
   - 0.0225 i_sqr[4,3] * y[4,3] - v_sqr[3] * y[4,3] + v_sqr[4] * y[4,3]
   - Delta_Discretización[4,3] * y[4,3] ] = 0
 intervalo_(4,_3): [ - P[4,3] ^2 - q[4,3] ^2 + i_sqr[4,3] * v_sqr[4] ]
   >= 0
 disminucion_voltaje_3_7: [ - 0.08 P[3,7] * y[3,7] - 0.08 q[3,7] * y[3,7]
   - 0.0032 i_sqr[3,7] * y[3,7] + v_sqr[3] * y[3,7] - v_sqr[7] * y[3,7]
   - Delta_Discretización[3,7] * y[3,7] ] = 0
 intervalo_(3,_7): [ - P[3,7] ^2 - q[3,7] ^2 + i_sqr[3,7] * v_sqr[3] ]
   >= 0
 disminucion_voltaje_11_13: [ - 0.18 P[11,13] * y[11,13]
   - 0.36 q[11,13] * y[11,13] - 0.0405 i_sqr[11,13] * y[11,13]
   + v_sqr[11] * y[11,13] - v_sqr[13] * y[11,13]
   - Delta_Discretización[11,13] * y[11,13] ] = 0
 intervalo_(11,_13): [ - P[11,13] ^2 - q[11,13] ^2
   + i_sqr[11,13] * v_sqr[11] ] >= 0
 disminucion_voltaje_11_10: [ - 0.08 P[11,10] * y[11,10]
   - 0.08 q[11,10] * y[11,10] - 0.0032 i_sqr[11,10] * y[11,10]
   - v_sqr[10] * y[11,10] + v_sqr[11] * y[11,10]
   - Delta_Discretización[11,10] * y[11,10] ] = 0
 intervalo_(11,_10): [ - P[11,10] ^2 - q[11,10] ^2
   + i_sqr[11,10] * v_sqr[11] ] >= 0
 disminucion_voltaje_12_13: [ - 0.16 P[12,13] * y[12,13]
   - 0.22 q[12,13] * y[12,13] - 0.0185 i_sqr[12,13] * y[12,13]
   + v_sqr[12] * y[12,13] - v_sqr[13] * y[12,13]
   - Delta_Discretización[12,13] * y[12,13] ] = 0
 intervalo_(12,_13): [ - P[12,13] ^2 - q[12,13] ^2
   + i_sqr[12,13] * v_sqr[12] ] >= 0
 disminucion_voltaje_7_3: [ - 0.08 P[7,3] * y[7,3] - 0.08 q[7,3] * y[7,3]
   - 0.0032 i_sqr[7,3] * y[7,3] - v_sqr[3] * y[7,3] + v_sqr[7] * y[7,3]
   - Delta_Discretización[7,3] * y[7,3] ] = 0
 intervalo_(7,_3): [ - P[7,3] ^2 - q[7,3] ^2 + i_sqr[7,3] * v_sqr[7] ]
   >= 0
 disminucion_voltaje_7_9: [ - 0.22 P[7,9] * y[7,9] - 0.22 q[7,9] * y[7,9]
   - 0.0242 i_sqr[7,9] * y[7,9] + v_sqr[7] * y[7,9] - v_sqr[9] * y[7,9]
   - Delta_Discretización[7,9] * y[7,9] ] = 0
 intervalo_(7,_9): [ - P[7,9] ^2 - q[7,9] ^2 + i_sqr[7,9] * v_sqr[7] ]
   >= 0
 disminucion_voltaje_14_13: [ - 0.15 P[14,13] * y[14,13]
   - 0.2 q[14,13] * y[14,13] - 0.015625 i_sqr[14,13] * y[14,13]
   - v_sqr[13] * y[14,13] + v_sqr[14] * y[14,13]
   - Delta_Discretización[14,13] * y[14,13] ] = 0
 intervalo_(14,_13): [ - P[14,13] ^2 - q[14,13] ^2
   + i_sqr[14,13] * v_sqr[14] ] >= 0
 disminucion_voltaje_8_9: [ - 0.16 P[8,9] * y[8,9] - 0.22 q[8,9] * y[8,9]
   - 0.0185 i_sqr[8,9] * y[8,9] + v_sqr[8] * y[8,9] - v_sqr[9] * y[8,9]
   - Delta_Discretización[8,9] * y[8,9] ] = 0
 intervalo_(8,_9): [ - P[8,9] ^2 - q[8,9] ^2 + i_sqr[8,9] * v_sqr[8] ]
   >= 0
 disminucion_voltaje_9_8: [ - 0.16 P[9,8] * y[9,8] - 0.22 q[9,8] * y[9,8]
   - 0.0185 i_sqr[9,8] * y[9,8] - v_sqr[8] * y[9,8] + v_sqr[9] * y[9,8]
   - Delta_Discretización[9,8] * y[9,8] ] = 0
 intervalo_(9,_8): [ - P[9,8] ^2 - q[9,8] ^2 + i_sqr[9,8] * v_sqr[9] ]
   >= 0
 disminucion_voltaje_9_14: [ - 0.22 P[9,14] * y[9,14]
   - 0.22 q[9,14] * y[9,14] - 0.0242 i_sqr[9,14] * y[9,14]
   + v_sqr[9] * y[9,14] - v_sqr[14] * y[9,14]
   - Delta_Discretización[9,14] * y[9,14] ] = 0
 intervalo_(9,_14): [ - P[9,14] ^2 - q[9,14] ^2 + i_sqr[9,14] * v_sqr[9] ]
   >= 0
 disminucion_voltaje_8_6: [ - 0.22 P[8,6] * y[8,6] - 0.22 q[8,6] * y[8,6]
   - 0.0242 i_sqr[8,6] * y[8,6] - v_sqr[6] * y[8,6] + v_sqr[8] * y[8,6]
   - Delta_Discretización[8,6] * y[8,6] ] = 0
 intervalo_(8,_6): [ - P[8,6] ^2 - q[8,6] ^2 + i_sqr[8,6] * v_sqr[8] ]
   >= 0
 disminucion_voltaje_13_11: [ - 0.18 P[13,11] * y[13,11]
   - 0.36 q[13,11] * y[13,11] - 0.0405 i_sqr[13,11] * y[13,11]
   - v_sqr[11] * y[13,11] + v_sqr[13] * y[13,11]
   - Delta_Discretización[13,11] * y[13,11] ] = 0
 intervalo_(13,_11): [ - P[13,11] ^2 - q[13,11] ^2
   + i_sqr[13,11] * v_sqr[13] ] >= 0
 disminucion_voltaje_13_14: [ - 0.15 P[13,14] * y[13,14]
   - 0.2 q[13,14] * y[13,14] - 0.015625 i_sqr[13,14] * y[13,14]
   + v_sqr[13] * y[13,14] - v_sqr[14] * y[13,14]
   - Delta_Discretización[13,14] * y[13,14] ] = 0
 intervalo_(13,_14): [ - P[13,14] ^2 - q[13,14] ^2
   + i_sqr[13,14] * v_sqr[13] ] >= 0
 disminucion_voltaje_5_8: [ - 0.16 P[5,8] * y[5,8] - 0.22 q[5,8] * y[5,8]
   - 0.0185 i_sqr[5,8] * y[5,8] + v_sqr[5] * y[5,8] - v_sqr[8] * y[5,8]
   - Delta_Discretización[5,8] * y[5,8] ] = 0
 intervalo_(5,_8): [ - P[5,8] ^2 - q[5,8] ^2 + i_sqr[5,8] * v_sqr[5] ]
   >= 0
 disminucion_voltaje_6_8: [ - 0.22 P[6,8] * y[6,8] - 0.22 q[6,8] * y[6,8]
   - 0.0242 i_sqr[6,8] * y[6,8] + v_sqr[6] * y[6,8] - v_sqr[8] * y[6,8]
   - Delta_Discretización[6,8] * y[6,8] ] = 0
 intervalo_(6,_8): [ - P[6,8] ^2 - q[6,8] ^2 + i_sqr[6,8] * v_sqr[6] ]
   >= 0
 disminucion_voltaje_10_1: [ - 0.18 P[10,1] * y[10,1]
   - 0.24 q[10,1] * y[10,1] - 0.0225 i_sqr[10,1] * y[10,1]
   - v_sqr[1] * y[10,1] + v_sqr[10] * y[10,1]
   - Delta_Discretización[10,1] * y[10,1] ] = 0
 intervalo_(10,_1): [ - P[10,1] ^2 - q[10,1] ^2 + i_sqr[10,1] * v_sqr[10] ]
   >= 0
 disminucion_voltaje_4_2: [ - 0.16 P[4,2] * y[4,2] - 0.22 q[4,2] * y[4,2]
   - 0.0185 i_sqr[4,2] * y[4,2] - v_sqr[2] * y[4,2] + v_sqr[4] * y[4,2]
   - Delta_Discretización[4,2] * y[4,2] ] = 0
 intervalo_(4,_2): [ - P[4,2] ^2 - q[4,2] ^2 + i_sqr[4,2] * v_sqr[4] ]
   >= 0
 disminucion_voltaje_12_6: [ - 0.08 P[12,6] * y[12,6]
   - 0.08 q[12,6] * y[12,6] - 0.0032 i_sqr[12,6] * y[12,6]
   - v_sqr[6] * y[12,6] + v_sqr[12] * y[12,6]
   - Delta_Discretización[12,6] * y[12,6] ] = 0
 intervalo_(12,_6): [ - P[12,6] ^2 - q[12,6] ^2 + i_sqr[12,6] * v_sqr[12] ]
   >= 0
 disminucion_voltaje_14_9: [ - 0.22 P[14,9] * y[14,9]
   - 0.22 q[14,9] * y[14,9] - 0.0242 i_sqr[14,9] * y[14,9]
   - v_sqr[9] * y[14,9] + v_sqr[14] * y[14,9]
   - Delta_Discretización[14,9] * y[14,9] ] = 0
 intervalo_(14,_9): [ - P[14,9] ^2 - q[14,9] ^2 + i_sqr[14,9] * v_sqr[14] ]
   >= 0
 disminucion_voltaje_1_10: [ - 0.18 P[1,10] * y[1,10]
   - 0.24 q[1,10] * y[1,10] - 0.0225 i_sqr[1,10] * y[1,10]
   + v_sqr[1] * y[1,10] - v_sqr[10] * y[1,10]
   - Delta_Discretización[1,10] * y[1,10] ] = 0
 intervalo_(1,_10): [ - P[1,10] ^2 - q[1,10] ^2 + i_sqr[1,10] * v_sqr[1] ]
   >= 0
 disminucion_voltaje_4_14: [ - 0.22 P[4,14] * y[4,14]
   - 0.22 q[4,14] * y[4,14] - 0.0242 i_sqr[4,14] * y[4,14]
   + v_sqr[4] * y[4,14] - v_sqr[14] * y[4,14]
   - Delta_Discretización[4,14] * y[4,14] ] = 0
 intervalo_(4,_14): [ - P[4,14] ^2 - q[4,14] ^2 + i_sqr[4,14] * v_sqr[4] ]
   >= 0
 disminucion_voltaje_13_12: [ - 0.16 P[13,12] * y[13,12]
   - 0.22 q[13,12] * y[13,12] - 0.0185 i_sqr[13,12] * y[13,12]
   - v_sqr[12] * y[13,12] + v_sqr[13] * y[13,12]
   - Delta_Discretización[13,12] * y[13,12] ] = 0
 intervalo_(13,_12): [ - P[13,12] ^2 - q[13,12] ^2
   + i_sqr[13,12] * v_sqr[13] ] >= 0
 disminucion_voltaje_9_7: [ - 0.22 P[9,7] * y[9,7] - 0.22 q[9,7] * y[9,7]
   - 0.0242 i_sqr[9,7] * y[9,7] - v_sqr[7] * y[9,7] + v_sqr[9] * y[9,7]
   - Delta_Discretización[9,7] * y[9,7] ] = 0
 intervalo_(9,_7): [ - P[9,7] ^2 - q[9,7] ^2 + i_sqr[9,7] * v_sqr[9] ]
   >= 0
 disminucion_voltaje_8_5: [ - 0.16 P[8,5] * y[8,5] - 0.22 q[8,5] * y[8,5]
   - 0.0185 i_sqr[8,5] * y[8,5] - v_sqr[5] * y[8,5] + v_sqr[8] * y[8,5]
   - Delta_Discretización[8,5] * y[8,5] ] = 0
 intervalo_(8,_5): [ - P[8,5] ^2 - q[8,5] ^2 + i_sqr[8,5] * v_sqr[8] ]
   >= 0
Bounds
Binaries
 y[6,12] y[2,4] y[1,2] y[10,11] y[3,4] y[2,1] y[14,4] y[4,3] y[3,7]
 y[11,13] y[11,10] y[12,13] y[7,3] y[7,9] y[14,13] y[8,9] y[9,8] y[9,14]
 y[8,6] y[13,11] y[13,14] y[5,8] y[6,8] y[10,1] y[4,2] y[12,6] y[14,9]
 y[1,10] y[4,14] y[13,12] y[9,7] y[8,5]
End
