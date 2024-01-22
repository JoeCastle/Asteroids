   10 MODE 5
   20 OFF
   30
   40 REM Player co-ordinates
   50 Player_X%=600
   60 Player_Y%=600
   70
   80 REM Asteroid 1 co-ordinates
   90 A%=200
  100 B%=500
  110 C%=2
  120 D%=3
  130
  140 REM Asteroid 2 co-ordinates
  150 G%=500
  160 H%=300
  170 I%=4
  180 J%=5
  190 K%=1
  200
  210 Shoot%=0
  220 Fx%=Player_X%+26
  230 Fy%=Player_Y%+50
  240 Score%=0
  250
  260 MOVE Player_X%, Player_Y%
  270
  280 REM Welcome Screen
  290 COLOUR 2
  300 PRINT TAB(6,13)"Asteroids"
  310 PRINT TAB(3,18)"Press Any Key To"
  320 PRINT TAB(6,19)"Continue"
  330 Anykey%=GET
  340 CLS
  350
  360 REM Game loop
  370 REPEAT
  380   Key%=INKEY(1)
  390
  400   REM Reset player position to opposite side when leaving the other
  410   IF Player_X% > 1350 THEN Player_X%=0
  420   IF Player_X% < -100 THEN Player_X%=1350
  430   IF Player_Y% > 1100 THEN Player_Y%=0
  440   IF Player_Y% < -100 THEN Player_Y%=1100
  450
  460   REM Draw the player
  470   GCOL 0,0
  480   MOVE Player_X%,Player_Y%
  490   DRAW Player_X%+50, Player_Y%
  500   DRAW Player_X%+25, Player_Y%+50
  510   DRAW Player_X%, Player_Y%
  520
  530   REM Draw asteroid 1
  540   GCOL 0,0
  550   MOVE A%, B%
  560   DRAW A%+50, B%+50
  570   DRAW A%+50, B%+100
  580   DRAW A%, B%+150
  590   DRAW A%-50, B%+100
  600   DRAW A%-50, B%+50
  610   DRAW A%, B%
  620
  630   REM Draw asteroid 2
  640   GCOL 0,0
  650   MOVE G%, H%
  660   DRAW G%+50, H%+50
  670   DRAW G%+50, H%+100
  680   DRAW G%, H%+150
  690   DRAW G%-50, H%+100
  700   DRAW G%-50, H%+50
  710   DRAW G%, H%
  720
  730   REM Move asteroid 1
  740   A%=A%+C%
  750   B%=B%+D%
  760
  770   REM Move asteroid 2
  780   G%=G%+I%
  790   H%=H%+J%
  800
  810   REM Reset asteroid 1 position to opposite side when leaving the other
  820   IF A% > 1300 THEN A%=0
  830   IF B% > 1000 THEN B%=0
  840
  850   REM Reset asteroid 2 position to opposite side when leaving the other
  860   IF G% > 1300 THEN G%=0
  870   IF H% > 1000 THEN H%=0
  880
  890   REM Handle player movement.
  900   IF Key%=97 THEN Player_X%=Player_X%-20
  910   IF Key%=100 THEN Player_X%=Player_X%+20
  920   IF Key%=119 THEN Player_Y%=Player_Y%+20
  930   IF Key%=115 THEN Player_Y%=Player_Y%-20
  940
  950   REM I don't remember what this does
  960   REM 136 to 139 are Unassigned
  970   REM And I don't know why I would want to update asteroid position on keypress
  980   IF Key%=136 THEN A%=A%-C%
  990   IF Key%=137 THEN A%=A%+C%
 1000   IF Key%=138 THEN B%=B%-C%
 1010   IF Key%=139 THEN B%=B%+C%
 1020
 1030   REM Handle shooting
 1040   IF Key%=32 THEN
 1050     Shoot%=1
 1060     Fx%=Player_X%+26
 1070     Fy%=Player_Y%+50
 1080   ENDIF
 1090
 1100   IF Shoot%=1 THEN
 1110     GCOL 0,0
 1120     MOVE Fx%,Fy%
 1130     DRAW Fx%,Fy%+20
 1140     Flocation%=GET(Fx%,Fy%)
 1150     IF Flocation%=A%, B% OR G%, H% THEN Score%=Score%+10
 1160     Fy%=Fy%+10
 1170     GCOL 0,1
 1180     MOVE Fx%,Fy%
 1190     DRAW Fx%,Fy%+20
 1200   ENDIF
 1210
 1220   REM Draw the player
 1230   GCOL 0,15
 1240   MOVE Player_X%,Player_Y%
 1250   DRAW Player_X%+50, Player_Y%
 1260   DRAW Player_X%+25, Player_Y%+50
 1270   DRAW Player_X%, Player_Y%
 1280
 1290   REM Draw asteroid 1
 1300   GCOL 0,15
 1310   MOVE A%, B%
 1320   DRAW A%+50, B%+50
 1330   DRAW A%+50, B%+100
 1340   DRAW A%, B%+150
 1350   DRAW A%-50, B%+100
 1360   DRAW A%-50, B%+50
 1370   DRAW A%, B%
 1380
 1390   REM Draw asteroid 2
 1400   GCOL 0,15
 1410   MOVE G%, H%
 1420   DRAW G%+50, H%+50
 1430   DRAW G%+50, H%+100
 1440   DRAW G%, H%+150
 1450   DRAW G%-50, H%+100
 1460   DRAW G%-50, H%+50
 1470   DRAW G%, H%
 1480
 1490 UNTIL Key%=101
 1500
 1510 END
 1520
