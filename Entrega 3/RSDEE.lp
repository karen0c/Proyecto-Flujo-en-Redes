\ Model RSDEE
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  4 i_sqr[6,12,1] + 8 i_sqr[2,4,1] + 4 i_sqr[1,2,1] + 4 i_sqr[10,11,1]
   + 9 i_sqr[3,4,1] + 4 i_sqr[2,1,1] + 11 i_sqr[14,4,1] + 9 i_sqr[4,3,1]
   + 4 i_sqr[3,7,1] + 9 i_sqr[11,13,1] + 4 i_sqr[11,10,1]
   + 8 i_sqr[12,13,1] + 4 i_sqr[7,3,1] + 11 i_sqr[7,9,1]
   + 7.5 i_sqr[14,13,1] + 8 i_sqr[8,9,1] + 8 i_sqr[9,8,1]
   + 11 i_sqr[9,14,1] + 11 i_sqr[8,6,1] + 9 i_sqr[13,11,1]
   + 7.5 i_sqr[13,14,1] + 8 i_sqr[5,8,1] + 11 i_sqr[6,8,1]
   + 9 i_sqr[10,1,1] + 8 i_sqr[4,2,1] + 4 i_sqr[12,6,1] + 11 i_sqr[14,9,1]
   + 9 i_sqr[1,10,1] + 11 i_sqr[4,14,1] + 8 i_sqr[13,12,1]
   + 11 i_sqr[9,7,1] + 8 i_sqr[8,5,1]
Subject To
 balance_de_potencia_activa_1_1: Ps[1,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 2100
 balance_de_potencia_activa_2_1: Ps[2,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 1000
 balance_de_potencia_activa_3_1: Ps[3,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 1000
 balance_de_potencia_activa_4_1: Ps[4,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 1000
 balance_de_potencia_activa_5_1: Ps[5,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 4500
 balance_de_potencia_activa_6_1: Ps[6,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 600
 balance_de_potencia_activa_7_1: Ps[7,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 1000
 balance_de_potencia_activa_8_1: Ps[8,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 5000
 balance_de_potencia_activa_9_1: Ps[9,1] - 4 i_sqr[6,12,1] - 8 i_sqr[2,4,1]
   - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1] - 4 i_sqr[2,1,1]
   - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1] - 9 i_sqr[11,13,1]
   - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1] - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1]
   - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1] - 8 i_sqr[9,8,1]
   - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 4000
 balance_de_potencia_activa_10_1: Ps[10,1] - 4 i_sqr[6,12,1]
   - 8 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 9 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1]
   - 8 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 1500
 balance_de_potencia_activa_11_1: Ps[11,1] - 4 i_sqr[6,12,1]
   - 8 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 9 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1]
   - 8 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 2000
 balance_de_potencia_activa_12_1: Ps[12,1] - 4 i_sqr[6,12,1]
   - 8 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 9 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1]
   - 8 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 3000
 balance_de_potencia_activa_13_1: Ps[13,1] - 4 i_sqr[6,12,1]
   - 8 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 9 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1]
   - 8 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 2000
 balance_de_potencia_activa_14_1: Ps[14,1] - 4 i_sqr[6,12,1]
   - 8 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 9 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 9 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 9 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 8 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 7.5 i_sqr[14,13,1] - 8 i_sqr[8,9,1]
   - 8 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1] - 9 i_sqr[13,11,1]
   - 7.5 i_sqr[13,14,1] - 8 i_sqr[5,8,1] - 11 i_sqr[6,8,1]
   - 9 i_sqr[10,1,1] - 8 i_sqr[4,2,1] - 4 i_sqr[12,6,1] - 11 i_sqr[14,9,1]
   - 9 i_sqr[1,10,1] - 11 i_sqr[4,14,1] - 8 i_sqr[13,12,1]
   - 11 i_sqr[9,7,1] - 8 i_sqr[8,5,1] = 0
 balance_de_potencia_reactiva1_1: Qs[1,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 1000
 balance_de_potencia_reactiva2_1: Qs[2,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 900
 balance_de_potencia_reactiva3_1: Qs[3,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 700
 balance_de_potencia_reactiva4_1: Qs[4,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 900
 balance_de_potencia_reactiva5_1: Qs[5,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 2000
 balance_de_potencia_reactiva6_1: Qs[6,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 100
 balance_de_potencia_reactiva7_1: Qs[7,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 900
 balance_de_potencia_reactiva8_1: Qs[8,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 3000
 balance_de_potencia_reactiva9_1: Qs[9,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 2700
 balance_de_potencia_reactiva10_1: Qs[10,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 1200
 balance_de_potencia_reactiva11_1: Qs[11,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 800
 balance_de_potencia_reactiva12_1: Qs[12,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 1500
 balance_de_potencia_reactiva13_1: Qs[13,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 1600
 balance_de_potencia_reactiva14_1: Qs[14,1] - 4 i_sqr[6,12,1]
   - 11 i_sqr[2,4,1] - 4 i_sqr[1,2,1] - 4 i_sqr[10,11,1] - 12 i_sqr[3,4,1]
   - 4 i_sqr[2,1,1] - 11 i_sqr[14,4,1] - 12 i_sqr[4,3,1] - 4 i_sqr[3,7,1]
   - 18 i_sqr[11,13,1] - 4 i_sqr[11,10,1] - 11 i_sqr[12,13,1]
   - 4 i_sqr[7,3,1] - 11 i_sqr[7,9,1] - 10 i_sqr[14,13,1] - 11 i_sqr[8,9,1]
   - 11 i_sqr[9,8,1] - 11 i_sqr[9,14,1] - 11 i_sqr[8,6,1]
   - 18 i_sqr[13,11,1] - 10 i_sqr[13,14,1] - 11 i_sqr[5,8,1]
   - 11 i_sqr[6,8,1] - 12 i_sqr[10,1,1] - 11 i_sqr[4,2,1] - 4 i_sqr[12,6,1]
   - 11 i_sqr[14,9,1] - 12 i_sqr[1,10,1] - 11 i_sqr[4,14,1]
   - 11 i_sqr[13,12,1] - 11 i_sqr[9,7,1] - 11 i_sqr[8,5,1] = 0
 disminucion_voltaje_6_12_1: - 8 P[6,12,1] - 8 q[6,12,1] + 32 i_sqr[6,12,1]
   + v_sqr[6,1] - v_sqr[12,1] - Delta_Discretización[6,12,1] = 0
 disminucion_voltaje_2_4_1: - 16 P[2,4,1] - 22 q[2,4,1] + 185 i_sqr[2,4,1]
   + v_sqr[2,1] - v_sqr[4,1] - Delta_Discretización[2,4,1] = 0
 disminucion_voltaje_1_2_1: - 8 P[1,2,1] - 8 q[1,2,1] + 32 i_sqr[1,2,1]
   + v_sqr[1,1] - v_sqr[2,1] - Delta_Discretización[1,2,1] = 0
 disminucion_voltaje_10_11_1: - 8 P[10,11,1] - 8 q[10,11,1]
   + 32 i_sqr[10,11,1] + v_sqr[10,1] - v_sqr[11,1]
   - Delta_Discretización[10,11,1] = 0
 disminucion_voltaje_3_4_1: - 18 P[3,4,1] - 24 q[3,4,1] + 225 i_sqr[3,4,1]
   + v_sqr[3,1] - v_sqr[4,1] - Delta_Discretización[3,4,1] = 0
 disminucion_voltaje_2_1_1: - 8 P[2,1,1] - 8 q[2,1,1] + 32 i_sqr[2,1,1]
   - v_sqr[1,1] + v_sqr[2,1] - Delta_Discretización[2,1,1] = 0
 disminucion_voltaje_14_4_1: - 22 P[14,4,1] - 22 q[14,4,1]
   + 242 i_sqr[14,4,1] - v_sqr[4,1] + v_sqr[14,1]
   - Delta_Discretización[14,4,1] = 0
 disminucion_voltaje_4_3_1: - 18 P[4,3,1] - 24 q[4,3,1] + 225 i_sqr[4,3,1]
   - v_sqr[3,1] + v_sqr[4,1] - Delta_Discretización[4,3,1] = 0
 disminucion_voltaje_3_7_1: - 8 P[3,7,1] - 8 q[3,7,1] + 32 i_sqr[3,7,1]
   + v_sqr[3,1] - v_sqr[7,1] - Delta_Discretización[3,7,1] = 0
 disminucion_voltaje_11_13_1: - 18 P[11,13,1] - 36 q[11,13,1]
   + 405 i_sqr[11,13,1] + v_sqr[11,1] - v_sqr[13,1]
   - Delta_Discretización[11,13,1] = 0
 disminucion_voltaje_11_10_1: - 8 P[11,10,1] - 8 q[11,10,1]
   + 32 i_sqr[11,10,1] - v_sqr[10,1] + v_sqr[11,1]
   - Delta_Discretización[11,10,1] = 0
 disminucion_voltaje_12_13_1: - 16 P[12,13,1] - 22 q[12,13,1]
   + 185 i_sqr[12,13,1] + v_sqr[12,1] - v_sqr[13,1]
   - Delta_Discretización[12,13,1] = 0
 disminucion_voltaje_7_3_1: - 8 P[7,3,1] - 8 q[7,3,1] + 32 i_sqr[7,3,1]
   - v_sqr[3,1] + v_sqr[7,1] - Delta_Discretización[7,3,1] = 0
 disminucion_voltaje_7_9_1: - 22 P[7,9,1] - 22 q[7,9,1] + 242 i_sqr[7,9,1]
   + v_sqr[7,1] - v_sqr[9,1] - Delta_Discretización[7,9,1] = 0
 disminucion_voltaje_14_13_1: - 15 P[14,13,1] - 20 q[14,13,1]
   + 156.25 i_sqr[14,13,1] - v_sqr[13,1] + v_sqr[14,1]
   - Delta_Discretización[14,13,1] = 0
 disminucion_voltaje_8_9_1: - 16 P[8,9,1] - 22 q[8,9,1] + 185 i_sqr[8,9,1]
   + v_sqr[8,1] - v_sqr[9,1] - Delta_Discretización[8,9,1] = 0
 disminucion_voltaje_9_8_1: - 16 P[9,8,1] - 22 q[9,8,1] + 185 i_sqr[9,8,1]
   - v_sqr[8,1] + v_sqr[9,1] - Delta_Discretización[9,8,1] = 0
 disminucion_voltaje_9_14_1: - 22 P[9,14,1] - 22 q[9,14,1]
   + 242 i_sqr[9,14,1] + v_sqr[9,1] - v_sqr[14,1]
   - Delta_Discretización[9,14,1] = 0
 disminucion_voltaje_8_6_1: - 22 P[8,6,1] - 22 q[8,6,1] + 242 i_sqr[8,6,1]
   - v_sqr[6,1] + v_sqr[8,1] - Delta_Discretización[8,6,1] = 0
 disminucion_voltaje_13_11_1: - 18 P[13,11,1] - 36 q[13,11,1]
   + 405 i_sqr[13,11,1] - v_sqr[11,1] + v_sqr[13,1]
   - Delta_Discretización[13,11,1] = 0
 disminucion_voltaje_13_14_1: - 15 P[13,14,1] - 20 q[13,14,1]
   + 156.25 i_sqr[13,14,1] + v_sqr[13,1] - v_sqr[14,1]
   - Delta_Discretización[13,14,1] = 0
 disminucion_voltaje_5_8_1: - 16 P[5,8,1] - 22 q[5,8,1] + 185 i_sqr[5,8,1]
   + v_sqr[5,1] - v_sqr[8,1] - Delta_Discretización[5,8,1] = 0
 disminucion_voltaje_6_8_1: - 22 P[6,8,1] - 22 q[6,8,1] + 242 i_sqr[6,8,1]
   + v_sqr[6,1] - v_sqr[8,1] - Delta_Discretización[6,8,1] = 0
 disminucion_voltaje_10_1_1: - 18 P[10,1,1] - 24 q[10,1,1]
   + 225 i_sqr[10,1,1] - v_sqr[1,1] + v_sqr[10,1]
   - Delta_Discretización[10,1,1] = 0
 disminucion_voltaje_4_2_1: - 16 P[4,2,1] - 22 q[4,2,1] + 185 i_sqr[4,2,1]
   - v_sqr[2,1] + v_sqr[4,1] - Delta_Discretización[4,2,1] = 0
 disminucion_voltaje_12_6_1: - 8 P[12,6,1] - 8 q[12,6,1] + 32 i_sqr[12,6,1]
   - v_sqr[6,1] + v_sqr[12,1] - Delta_Discretización[12,6,1] = 0
 disminucion_voltaje_14_9_1: - 22 P[14,9,1] - 22 q[14,9,1]
   + 242 i_sqr[14,9,1] - v_sqr[9,1] + v_sqr[14,1]
   - Delta_Discretización[14,9,1] = 0
 disminucion_voltaje_1_10_1: - 18 P[1,10,1] - 24 q[1,10,1]
   + 225 i_sqr[1,10,1] + v_sqr[1,1] - v_sqr[10,1]
   - Delta_Discretización[1,10,1] = 0
 disminucion_voltaje_4_14_1: - 22 P[4,14,1] - 22 q[4,14,1]
   + 242 i_sqr[4,14,1] + v_sqr[4,1] - v_sqr[14,1]
   - Delta_Discretización[4,14,1] = 0
 disminucion_voltaje_13_12_1: - 16 P[13,12,1] - 22 q[13,12,1]
   + 185 i_sqr[13,12,1] - v_sqr[12,1] + v_sqr[13,1]
   - Delta_Discretización[13,12,1] = 0
 disminucion_voltaje_9_7_1: - 22 P[9,7,1] - 22 q[9,7,1] + 242 i_sqr[9,7,1]
   - v_sqr[7,1] + v_sqr[9,1] - Delta_Discretización[9,7,1] = 0
 disminucion_voltaje_8_5_1: - 16 P[8,5,1] - 22 q[8,5,1] + 185 i_sqr[8,5,1]
   - v_sqr[5,1] + v_sqr[8,1] - Delta_Discretización[8,5,1] = 0
 lower_bound_6_12_1: - Delta_Discretización[6,12,1] + 0.1 y[6,12,1] <= 0.1
 upper_bound_6_12_1: Delta_Discretización[6,12,1] + 0.1 y[6,12,1] <= 0.1
 lower_bound_2_4_1: - Delta_Discretización[2,4,1] + 0.1 y[2,4,1] <= 0.1
 upper_bound_2_4_1: Delta_Discretización[2,4,1] + 0.1 y[2,4,1] <= 0.1
 lower_bound_1_2_1: - Delta_Discretización[1,2,1] + 0.1 y[1,2,1] <= 0.1
 upper_bound_1_2_1: Delta_Discretización[1,2,1] + 0.1 y[1,2,1] <= 0.1
 lower_bound_10_11_1: - Delta_Discretización[10,11,1] + 0.1 y[10,11,1]
   <= 0.1
 upper_bound_10_11_1: Delta_Discretización[10,11,1] + 0.1 y[10,11,1]
   <= 0.1
 lower_bound_3_4_1: - Delta_Discretización[3,4,1] + 0.1 y[3,4,1] <= 0.1
 upper_bound_3_4_1: Delta_Discretización[3,4,1] + 0.1 y[3,4,1] <= 0.1
 lower_bound_2_1_1: - Delta_Discretización[2,1,1] + 0.1 y[2,1,1] <= 0.1
 upper_bound_2_1_1: Delta_Discretización[2,1,1] + 0.1 y[2,1,1] <= 0.1
 lower_bound_14_4_1: - Delta_Discretización[14,4,1] + 0.1 y[14,4,1] <= 0.1
 upper_bound_14_4_1: Delta_Discretización[14,4,1] + 0.1 y[14,4,1] <= 0.1
 lower_bound_4_3_1: - Delta_Discretización[4,3,1] + 0.1 y[4,3,1] <= 0.1
 upper_bound_4_3_1: Delta_Discretización[4,3,1] + 0.1 y[4,3,1] <= 0.1
 lower_bound_3_7_1: - Delta_Discretización[3,7,1] + 0.1 y[3,7,1] <= 0.1
 upper_bound_3_7_1: Delta_Discretización[3,7,1] + 0.1 y[3,7,1] <= 0.1
 lower_bound_11_13_1: - Delta_Discretización[11,13,1] + 0.1 y[11,13,1]
   <= 0.1
 upper_bound_11_13_1: Delta_Discretización[11,13,1] + 0.1 y[11,13,1]
   <= 0.1
 lower_bound_11_10_1: - Delta_Discretización[11,10,1] + 0.1 y[11,10,1]
   <= 0.1
 upper_bound_11_10_1: Delta_Discretización[11,10,1] + 0.1 y[11,10,1]
   <= 0.1
 lower_bound_12_13_1: - Delta_Discretización[12,13,1] + 0.1 y[12,13,1]
   <= 0.1
 upper_bound_12_13_1: Delta_Discretización[12,13,1] + 0.1 y[12,13,1]
   <= 0.1
 lower_bound_7_3_1: - Delta_Discretización[7,3,1] + 0.1 y[7,3,1] <= 0.1
 upper_bound_7_3_1: Delta_Discretización[7,3,1] + 0.1 y[7,3,1] <= 0.1
 lower_bound_7_9_1: - Delta_Discretización[7,9,1] + 0.1 y[7,9,1] <= 0.1
 upper_bound_7_9_1: Delta_Discretización[7,9,1] + 0.1 y[7,9,1] <= 0.1
 lower_bound_14_13_1: - Delta_Discretización[14,13,1] + 0.1 y[14,13,1]
   <= 0.1
 upper_bound_14_13_1: Delta_Discretización[14,13,1] + 0.1 y[14,13,1]
   <= 0.1
 lower_bound_8_9_1: - Delta_Discretización[8,9,1] + 0.1 y[8,9,1] <= 0.1
 upper_bound_8_9_1: Delta_Discretización[8,9,1] + 0.1 y[8,9,1] <= 0.1
 lower_bound_9_8_1: - Delta_Discretización[9,8,1] + 0.1 y[9,8,1] <= 0.1
 upper_bound_9_8_1: Delta_Discretización[9,8,1] + 0.1 y[9,8,1] <= 0.1
 lower_bound_9_14_1: - Delta_Discretización[9,14,1] + 0.1 y[9,14,1] <= 0.1
 upper_bound_9_14_1: Delta_Discretización[9,14,1] + 0.1 y[9,14,1] <= 0.1
 lower_bound_8_6_1: - Delta_Discretización[8,6,1] + 0.1 y[8,6,1] <= 0.1
 upper_bound_8_6_1: Delta_Discretización[8,6,1] + 0.1 y[8,6,1] <= 0.1
 lower_bound_13_11_1: - Delta_Discretización[13,11,1] + 0.1 y[13,11,1]
   <= 0.1
 upper_bound_13_11_1: Delta_Discretización[13,11,1] + 0.1 y[13,11,1]
   <= 0.1
 lower_bound_13_14_1: - Delta_Discretización[13,14,1] + 0.1 y[13,14,1]
   <= 0.1
 upper_bound_13_14_1: Delta_Discretización[13,14,1] + 0.1 y[13,14,1]
   <= 0.1
 lower_bound_5_8_1: - Delta_Discretización[5,8,1] + 0.1 y[5,8,1] <= 0.1
 upper_bound_5_8_1: Delta_Discretización[5,8,1] + 0.1 y[5,8,1] <= 0.1
 lower_bound_6_8_1: - Delta_Discretización[6,8,1] + 0.1 y[6,8,1] <= 0.1
 upper_bound_6_8_1: Delta_Discretización[6,8,1] + 0.1 y[6,8,1] <= 0.1
 lower_bound_10_1_1: - Delta_Discretización[10,1,1] + 0.1 y[10,1,1] <= 0.1
 upper_bound_10_1_1: Delta_Discretización[10,1,1] + 0.1 y[10,1,1] <= 0.1
 lower_bound_4_2_1: - Delta_Discretización[4,2,1] + 0.1 y[4,2,1] <= 0.1
 upper_bound_4_2_1: Delta_Discretización[4,2,1] + 0.1 y[4,2,1] <= 0.1
 lower_bound_12_6_1: - Delta_Discretización[12,6,1] + 0.1 y[12,6,1] <= 0.1
 upper_bound_12_6_1: Delta_Discretización[12,6,1] + 0.1 y[12,6,1] <= 0.1
 lower_bound_14_9_1: - Delta_Discretización[14,9,1] + 0.1 y[14,9,1] <= 0.1
 upper_bound_14_9_1: Delta_Discretización[14,9,1] + 0.1 y[14,9,1] <= 0.1
 lower_bound_1_10_1: - Delta_Discretización[1,10,1] + 0.1 y[1,10,1] <= 0.1
 upper_bound_1_10_1: Delta_Discretización[1,10,1] + 0.1 y[1,10,1] <= 0.1
 lower_bound_4_14_1: - Delta_Discretización[4,14,1] + 0.1 y[4,14,1] <= 0.1
 upper_bound_4_14_1: Delta_Discretización[4,14,1] + 0.1 y[4,14,1] <= 0.1
 lower_bound_13_12_1: - Delta_Discretización[13,12,1] + 0.1 y[13,12,1]
   <= 0.1
 upper_bound_13_12_1: Delta_Discretización[13,12,1] + 0.1 y[13,12,1]
   <= 0.1
 lower_bound_9_7_1: - Delta_Discretización[9,7,1] + 0.1 y[9,7,1] <= 0.1
 upper_bound_9_7_1: Delta_Discretización[9,7,1] + 0.1 y[9,7,1] <= 0.1
 lower_bound_8_5_1: - Delta_Discretización[8,5,1] + 0.1 y[8,5,1] <= 0.1
 upper_bound_8_5_1: Delta_Discretización[8,5,1] + 0.1 y[8,5,1] <= 0.1
 lower_bound_1_1: v_sqr[1,1] >= 0.8649
 upper_bound_1_1: v_sqr[1,1] <= 1.1025
 lower_bound_2_1: v_sqr[2,1] >= 0.8649
 upper_bound_2_1: v_sqr[2,1] <= 1.1025
 lower_bound_3_1: v_sqr[3,1] >= 0.8649
 upper_bound_3_1: v_sqr[3,1] <= 1.1025
 lower_bound_4_1: v_sqr[4,1] >= 0.8649
 upper_bound_4_1: v_sqr[4,1] <= 1.1025
 lower_bound_5_1: v_sqr[5,1] >= 0.8649
 upper_bound_5_1: v_sqr[5,1] <= 1.1025
 lower_bound_6_1: v_sqr[6,1] >= 0.8649
 upper_bound_6_1: v_sqr[6,1] <= 1.1025
 lower_bound_7_1: v_sqr[7,1] >= 0.8649
 upper_bound_7_1: v_sqr[7,1] <= 1.1025
 lower_bound_8_1: v_sqr[8,1] >= 0.8649
 upper_bound_8_1: v_sqr[8,1] <= 1.1025
 lower_bound_9_1: v_sqr[9,1] >= 0.8649
 upper_bound_9_1: v_sqr[9,1] <= 1.1025
 lower_bound_10_1: v_sqr[10,1] >= 0.8649
 upper_bound_10_1: v_sqr[10,1] <= 1.1025
 lower_bound_11_1: v_sqr[11,1] >= 0.8649
 upper_bound_11_1: v_sqr[11,1] <= 1.1025
 lower_bound_12_1: v_sqr[12,1] >= 0.8649
 upper_bound_12_1: v_sqr[12,1] <= 1.1025
 lower_bound_13_1: v_sqr[13,1] >= 0.8649
 upper_bound_13_1: v_sqr[13,1] <= 1.1025
 lower_bound_14_1: v_sqr[14,1] >= 0.8649
 upper_bound_14_1: v_sqr[14,1] <= 1.1025
 lower_bound_6_12_1: i_sqr[6,12,1] >= 0
 upper_bound_6_12_1: i_sqr[6,12,1] - y[6,12,1] <= 0
 lower_bound_2_4_1: i_sqr[2,4,1] >= 0
 upper_bound_2_4_1: i_sqr[2,4,1] - y[2,4,1] <= 0
 lower_bound_1_2_1: i_sqr[1,2,1] >= 0
 upper_bound_1_2_1: i_sqr[1,2,1] - y[1,2,1] <= 0
 lower_bound_10_11_1: i_sqr[10,11,1] >= 0
 upper_bound_10_11_1: i_sqr[10,11,1] - y[10,11,1] <= 0
 lower_bound_3_4_1: i_sqr[3,4,1] >= 0
 upper_bound_3_4_1: i_sqr[3,4,1] - y[3,4,1] <= 0
 lower_bound_2_1_1: i_sqr[2,1,1] >= 0
 upper_bound_2_1_1: i_sqr[2,1,1] - y[2,1,1] <= 0
 lower_bound_14_4_1: i_sqr[14,4,1] >= 0
 upper_bound_14_4_1: i_sqr[14,4,1] - y[14,4,1] <= 0
 lower_bound_4_3_1: i_sqr[4,3,1] >= 0
 upper_bound_4_3_1: i_sqr[4,3,1] - y[4,3,1] <= 0
 lower_bound_3_7_1: i_sqr[3,7,1] >= 0
 upper_bound_3_7_1: i_sqr[3,7,1] - y[3,7,1] <= 0
 lower_bound_11_13_1: i_sqr[11,13,1] >= 0
 upper_bound_11_13_1: i_sqr[11,13,1] - y[11,13,1] <= 0
 lower_bound_11_10_1: i_sqr[11,10,1] >= 0
 upper_bound_11_10_1: i_sqr[11,10,1] - y[11,10,1] <= 0
 lower_bound_12_13_1: i_sqr[12,13,1] >= 0
 upper_bound_12_13_1: i_sqr[12,13,1] - y[12,13,1] <= 0
 lower_bound_7_3_1: i_sqr[7,3,1] >= 0
 upper_bound_7_3_1: i_sqr[7,3,1] - y[7,3,1] <= 0
 lower_bound_7_9_1: i_sqr[7,9,1] >= 0
 upper_bound_7_9_1: i_sqr[7,9,1] - y[7,9,1] <= 0
 lower_bound_14_13_1: i_sqr[14,13,1] >= 0
 upper_bound_14_13_1: i_sqr[14,13,1] - y[14,13,1] <= 0
 lower_bound_8_9_1: i_sqr[8,9,1] >= 0
 upper_bound_8_9_1: i_sqr[8,9,1] - y[8,9,1] <= 0
 lower_bound_9_8_1: i_sqr[9,8,1] >= 0
 upper_bound_9_8_1: i_sqr[9,8,1] - y[9,8,1] <= 0
 lower_bound_9_14_1: i_sqr[9,14,1] >= 0
 upper_bound_9_14_1: i_sqr[9,14,1] - y[9,14,1] <= 0
 lower_bound_8_6_1: i_sqr[8,6,1] >= 0
 upper_bound_8_6_1: i_sqr[8,6,1] - y[8,6,1] <= 0
 lower_bound_13_11_1: i_sqr[13,11,1] >= 0
 upper_bound_13_11_1: i_sqr[13,11,1] - y[13,11,1] <= 0
 lower_bound_13_14_1: i_sqr[13,14,1] >= 0
 upper_bound_13_14_1: i_sqr[13,14,1] - y[13,14,1] <= 0
 lower_bound_5_8_1: i_sqr[5,8,1] >= 0
 upper_bound_5_8_1: i_sqr[5,8,1] - y[5,8,1] <= 0
 lower_bound_6_8_1: i_sqr[6,8,1] >= 0
 upper_bound_6_8_1: i_sqr[6,8,1] - y[6,8,1] <= 0
 lower_bound_10_1_1: i_sqr[10,1,1] >= 0
 upper_bound_10_1_1: i_sqr[10,1,1] - y[10,1,1] <= 0
 lower_bound_4_2_1: i_sqr[4,2,1] >= 0
 upper_bound_4_2_1: i_sqr[4,2,1] - y[4,2,1] <= 0
 lower_bound_12_6_1: i_sqr[12,6,1] >= 0
 upper_bound_12_6_1: i_sqr[12,6,1] - y[12,6,1] <= 0
 lower_bound_14_9_1: i_sqr[14,9,1] >= 0
 upper_bound_14_9_1: i_sqr[14,9,1] - y[14,9,1] <= 0
 lower_bound_1_10_1: i_sqr[1,10,1] >= 0
 upper_bound_1_10_1: i_sqr[1,10,1] - y[1,10,1] <= 0
 lower_bound_4_14_1: i_sqr[4,14,1] >= 0
 upper_bound_4_14_1: i_sqr[4,14,1] - y[4,14,1] <= 0
 lower_bound_13_12_1: i_sqr[13,12,1] >= 0
 upper_bound_13_12_1: i_sqr[13,12,1] - y[13,12,1] <= 0
 lower_bound_9_7_1: i_sqr[9,7,1] >= 0
 upper_bound_9_7_1: i_sqr[9,7,1] - y[9,7,1] <= 0
 lower_bound_8_5_1: i_sqr[8,5,1] >= 0
 upper_bound_8_5_1: i_sqr[8,5,1] - y[8,5,1] <= 0
 topologÃ­a_radial: y[6,12,1] + y[2,4,1] + y[1,2,1] + y[10,11,1] + y[3,4,1]
   + y[2,1,1] + y[14,4,1] + y[4,3,1] + y[3,7,1] + y[11,13,1] + y[11,10,1]
   + y[12,13,1] + y[7,3,1] + y[7,9,1] + y[14,13,1] + y[8,9,1] + y[9,8,1]
   + y[9,14,1] + y[8,6,1] + y[13,11,1] + y[13,14,1] + y[5,8,1] + y[6,8,1]
   + y[10,1,1] + y[4,2,1] + y[12,6,1] + y[14,9,1] + y[1,10,1] + y[4,14,1]
   + y[13,12,1] + y[9,7,1] + y[8,5,1] = 13
 arco_unitario: y[6,12,1] + y[12,6,1] <= 1
 arco_unitario: y[2,4,1] + y[4,2,1] <= 1
 arco_unitario: y[1,2,1] + y[2,1,1] <= 1
 arco_unitario: y[10,11,1] + y[11,10,1] <= 1
 arco_unitario: y[3,4,1] + y[4,3,1] <= 1
 arco_unitario: y[1,2,1] + y[2,1,1] <= 1
 arco_unitario: y[14,4,1] + y[4,14,1] <= 1
 arco_unitario: y[3,4,1] + y[4,3,1] <= 1
 arco_unitario: y[3,7,1] + y[7,3,1] <= 1
 arco_unitario: y[11,13,1] + y[13,11,1] <= 1
 arco_unitario: y[10,11,1] + y[11,10,1] <= 1
 arco_unitario: y[12,13,1] + y[13,12,1] <= 1
 arco_unitario: y[3,7,1] + y[7,3,1] <= 1
 arco_unitario: y[7,9,1] + y[9,7,1] <= 1
 arco_unitario: y[14,13,1] + y[13,14,1] <= 1
 arco_unitario: y[8,9,1] + y[9,8,1] <= 1
 arco_unitario: y[8,9,1] + y[9,8,1] <= 1
 arco_unitario: y[9,14,1] + y[14,9,1] <= 1
 arco_unitario: y[8,6,1] + y[6,8,1] <= 1
 arco_unitario: y[11,13,1] + y[13,11,1] <= 1
 arco_unitario: y[14,13,1] + y[13,14,1] <= 1
 arco_unitario: y[5,8,1] + y[8,5,1] <= 1
 arco_unitario: y[8,6,1] + y[6,8,1] <= 1
 arco_unitario: y[10,1,1] + y[1,10,1] <= 1
 arco_unitario: y[2,4,1] + y[4,2,1] <= 1
 arco_unitario: y[6,12,1] + y[12,6,1] <= 1
 arco_unitario: y[9,14,1] + y[14,9,1] <= 1
 arco_unitario: y[10,1,1] + y[1,10,1] <= 1
 arco_unitario: y[14,4,1] + y[4,14,1] <= 1
 arco_unitario: y[12,13,1] + y[13,12,1] <= 1
 arco_unitario: y[7,9,1] + y[9,7,1] <= 1
 arco_unitario: y[5,8,1] + y[8,5,1] <= 1
 intervalo_(6,_12)_1: [ - P[6,12,1] ^2 - q[6,12,1] ^2
   + i_sqr[6,12,1] * v_sqr[6,1] ] >= 0
 intervalo_(2,_4)_1: [ - P[2,4,1] ^2 - q[2,4,1] ^2
   + i_sqr[2,4,1] * v_sqr[2,1] ] >= 0
 intervalo_(1,_2)_1: [ - P[1,2,1] ^2 - q[1,2,1] ^2
   + i_sqr[1,2,1] * v_sqr[1,1] ] >= 0
 intervalo_(10,_11)_1: [ - P[10,11,1] ^2 - q[10,11,1] ^2
   + i_sqr[10,11,1] * v_sqr[10,1] ] >= 0
 intervalo_(3,_4)_1: [ - P[3,4,1] ^2 - q[3,4,1] ^2
   + i_sqr[3,4,1] * v_sqr[3,1] ] >= 0
 intervalo_(2,_1)_1: [ - P[2,1,1] ^2 - q[2,1,1] ^2
   + i_sqr[2,1,1] * v_sqr[2,1] ] >= 0
 intervalo_(14,_4)_1: [ - P[14,4,1] ^2 - q[14,4,1] ^2
   + i_sqr[14,4,1] * v_sqr[14,1] ] >= 0
 intervalo_(4,_3)_1: [ - P[4,3,1] ^2 - q[4,3,1] ^2
   + i_sqr[4,3,1] * v_sqr[4,1] ] >= 0
 intervalo_(3,_7)_1: [ - P[3,7,1] ^2 - q[3,7,1] ^2
   + i_sqr[3,7,1] * v_sqr[3,1] ] >= 0
 intervalo_(11,_13)_1: [ - P[11,13,1] ^2 - q[11,13,1] ^2
   + i_sqr[11,13,1] * v_sqr[11,1] ] >= 0
 intervalo_(11,_10)_1: [ - P[11,10,1] ^2 - q[11,10,1] ^2
   + i_sqr[11,10,1] * v_sqr[11,1] ] >= 0
 intervalo_(12,_13)_1: [ - P[12,13,1] ^2 - q[12,13,1] ^2
   + i_sqr[12,13,1] * v_sqr[12,1] ] >= 0
 intervalo_(7,_3)_1: [ - P[7,3,1] ^2 - q[7,3,1] ^2
   + i_sqr[7,3,1] * v_sqr[7,1] ] >= 0
 intervalo_(7,_9)_1: [ - P[7,9,1] ^2 - q[7,9,1] ^2
   + i_sqr[7,9,1] * v_sqr[7,1] ] >= 0
 intervalo_(14,_13)_1: [ - P[14,13,1] ^2 - q[14,13,1] ^2
   + i_sqr[14,13,1] * v_sqr[14,1] ] >= 0
 intervalo_(8,_9)_1: [ - P[8,9,1] ^2 - q[8,9,1] ^2
   + i_sqr[8,9,1] * v_sqr[8,1] ] >= 0
 intervalo_(9,_8)_1: [ - P[9,8,1] ^2 - q[9,8,1] ^2
   + i_sqr[9,8,1] * v_sqr[9,1] ] >= 0
 intervalo_(9,_14)_1: [ - P[9,14,1] ^2 - q[9,14,1] ^2
   + i_sqr[9,14,1] * v_sqr[9,1] ] >= 0
 intervalo_(8,_6)_1: [ - P[8,6,1] ^2 - q[8,6,1] ^2
   + i_sqr[8,6,1] * v_sqr[8,1] ] >= 0
 intervalo_(13,_11)_1: [ - P[13,11,1] ^2 - q[13,11,1] ^2
   + i_sqr[13,11,1] * v_sqr[13,1] ] >= 0
 intervalo_(13,_14)_1: [ - P[13,14,1] ^2 - q[13,14,1] ^2
   + i_sqr[13,14,1] * v_sqr[13,1] ] >= 0
 intervalo_(5,_8)_1: [ - P[5,8,1] ^2 - q[5,8,1] ^2
   + i_sqr[5,8,1] * v_sqr[5,1] ] >= 0
 intervalo_(6,_8)_1: [ - P[6,8,1] ^2 - q[6,8,1] ^2
   + i_sqr[6,8,1] * v_sqr[6,1] ] >= 0
 intervalo_(10,_1)_1: [ - P[10,1,1] ^2 - q[10,1,1] ^2
   + i_sqr[10,1,1] * v_sqr[10,1] ] >= 0
 intervalo_(4,_2)_1: [ - P[4,2,1] ^2 - q[4,2,1] ^2
   + i_sqr[4,2,1] * v_sqr[4,1] ] >= 0
 intervalo_(12,_6)_1: [ - P[12,6,1] ^2 - q[12,6,1] ^2
   + i_sqr[12,6,1] * v_sqr[12,1] ] >= 0
 intervalo_(14,_9)_1: [ - P[14,9,1] ^2 - q[14,9,1] ^2
   + i_sqr[14,9,1] * v_sqr[14,1] ] >= 0
 intervalo_(1,_10)_1: [ - P[1,10,1] ^2 - q[1,10,1] ^2
   + i_sqr[1,10,1] * v_sqr[1,1] ] >= 0
 intervalo_(4,_14)_1: [ - P[4,14,1] ^2 - q[4,14,1] ^2
   + i_sqr[4,14,1] * v_sqr[4,1] ] >= 0
 intervalo_(13,_12)_1: [ - P[13,12,1] ^2 - q[13,12,1] ^2
   + i_sqr[13,12,1] * v_sqr[13,1] ] >= 0
 intervalo_(9,_7)_1: [ - P[9,7,1] ^2 - q[9,7,1] ^2
   + i_sqr[9,7,1] * v_sqr[9,1] ] >= 0
 intervalo_(8,_5)_1: [ - P[8,5,1] ^2 - q[8,5,1] ^2
   + i_sqr[8,5,1] * v_sqr[8,1] ] >= 0
Bounds
Binaries
 y[6,12,1] y[2,4,1] y[1,2,1] y[10,11,1] y[3,4,1] y[2,1,1] y[14,4,1]
 y[4,3,1] y[3,7,1] y[11,13,1] y[11,10,1] y[12,13,1] y[7,3,1] y[7,9,1]
 y[14,13,1] y[8,9,1] y[9,8,1] y[9,14,1] y[8,6,1] y[13,11,1] y[13,14,1]
 y[5,8,1] y[6,8,1] y[10,1,1] y[4,2,1] y[12,6,1] y[14,9,1] y[1,10,1]
 y[4,14,1] y[13,12,1] y[9,7,1] y[8,5,1]
End
