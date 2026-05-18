       IDENTIFICATION DIVISION.
       PROGRAM-ID. S2589.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 W-DATA.
           05  WW-SPARTE             PIC  9(02).
               88  BS                VALUE 03.
               88  LEBEN             VALUE 02 21 THRU 23.

       PROCEDURE DIVISION.
           MOVE 3 TO WW-SPARTE
           IF  (LEBEN OR BS)
               DISPLAY "LEBEN is false."  
               DISPLAY "BS is true."               
               DISPLAY "LEBEN is not redundant"
      *| LEBEN |  BS    | (LEBEN OR BS) |
      *| true  | true   |   true        |
      *| true  | false  |   true        |
      *| false | *true* |  *true*       |
      *| false | false  |   false       |
           END-IF
           STOP RUN.
