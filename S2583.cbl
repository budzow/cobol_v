      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. S2583.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 W-DATA.
           05  WW-SPARTE             PIC  9(02).
               88  WW-SPARTE-BS      VALUE 03.
               88  WW-SPARTE-AH      VALUE 05.
               88  WW-SPARTE-LEBEN   VALUE 02 21 THRU 23.
       PROCEDURE DIVISION.
           MOVE 5 TO WW-SPARTE
      * After moving 5 to WW-SPARTE:
      * WW-SPARTE-LEBEN is FALSE
      * WW-SPARTE-BS is FALSE   
      * WW-SPARTE-AH is TRUE
           IF  NOT (WW-SPARTE-LEBEN OR WW-SPARTE-BS)
      * False Positive of cobol:S2583 on line 21 as the value 
      * of WW-SPARTE-LEBEN and WW-SPARTE-BS does not 
      * guarantee that WW-SPARTE-AH is false.
               IF  WW-SPARTE-AH
                   DISPLAY "IT WORKS!"
               END-IF
           END-IF
           STOP RUN.
