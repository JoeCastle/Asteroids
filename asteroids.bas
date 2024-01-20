      MODE 5
      OFF

      X%=600
      Y%=600
      A%=200
      B%=500
      C%=2
      D%=3
      E%=X%
      F%=X%
      G%=500
      H%=300
      I%=4
      J%=5
      K%=1
      Shoot%=0
      Fx%=X%+26
      Fy%=Y%+50
      Score%=0
      MOVE X%, Y%

      REM Welcome Screen
      COLOUR 2
      PRINT TAB(6,13)"Asteroids"
      PRINT TAB(3,18)"Press Any Key To"
      PRINT TAB(6,19)"Continue"
      Anykey%=GET
      CLS


      REPEAT

        Key%=INKEY(1)
        IF X% > 1350 THEN X%=0
        IF X% < -100 THEN X%=1350
        IF Y% > 1100 THEN Y%=0
        IF Y% < -100 THEN Y%=1100

        GCOL 0,0
        MOVE X%,Y%
        DRAW X%+50, Y%
        DRAW X%+25, Y%+50
        DRAW X%, Y%

        GCOL 0,0
        MOVE A%, B%
        DRAW A%+50, B%+50
        DRAW A%+50, B%+100
        DRAW A%, B%+150
        DRAW A%-50, B%+100
        DRAW A%-50, B%+50
        DRAW A%, B%

        GCOL 0,0
        MOVE G%, H%
        DRAW G%+50, H%+50
        DRAW G%+50, H%+100
        DRAW G%, H%+150
        DRAW G%-50, H%+100
        DRAW G%-50, H%+50
        DRAW G%, H%

        A%=A%+C%
        B%=B%+D%

        G%=G%+I%
        H%=H%+J%

        IF A% > 1300 THEN A%=0
        IF B% > 1000 THEN B%=0

        IF G% > 1300 THEN G%=0
        IF H% > 1000 THEN H%=0


        IF Key%=97 THEN X%=X%-20
        IF Key%=100 THEN X%=X%+20
        IF Key%=119 THEN Y%=Y%+20
        IF Key%=115 THEN Y%=Y%-20

        IF Key%=136 THEN A%=A%-C%
        IF Key%=137 THEN A%=A%+C%
        IF Key%=138 THEN B%=B%-C%
        IF Key%=139 THEN B%=B%+C%
        IF Key%=32 THEN

          Shoot%=1
          Fx%=X%+26
          Fy%=Y%+50

        ENDIF



        IF Shoot%=1 THEN

          GCOL 0,0
          MOVE Fx%,Fy%
          DRAW Fx%,Fy%+20


          Flocation%=GET(Fx%,Fy%)
          IF Flocation%=A%, B% OR G%, H% THEN Score%=Score%+10

          Fy%=Fy%+10

          GCOL 0,1
          MOVE Fx%,Fy%
          DRAW Fx%,Fy%+20


        ENDIF





        GCOL 0,15
        MOVE X%,Y%
        DRAW X%+50, Y%
        DRAW X%+25, Y%+50
        DRAW X%, Y%


        GCOL 0,15
        MOVE A%, B%
        DRAW A%+50, B%+50
        DRAW A%+50, B%+100
        DRAW A%, B%+150
        DRAW A%-50, B%+100
        DRAW A%-50, B%+50
        DRAW A%, B%

        GCOL 0,15
        MOVE G%, H%
        DRAW G%+50, H%+50
        DRAW G%+50, H%+100
        DRAW G%, H%+150
        DRAW G%-50, H%+100
        DRAW G%-50, H%+50
        DRAW G%, H%

      ENDIF




      UNTIL Key%=101


      END

