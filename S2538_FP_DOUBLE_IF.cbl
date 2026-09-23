       IDENTIFICATION DIVISION.
       PROGRAM-ID. MINIMAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  RI-TAR PIC 99 VALUE 21.
       01  FLAG-1 PIC X.
           88 EINMALBEITRAG-SELBST-RECHNEN VALUE 'Y'.
       01  FLAG-2 PIC X.
           88 FEHLER                       VALUE 'Y'.
       01  FLAG-3 PIC X.
           88 TARIF-ITEM                   VALUE 'Y'.

       PROCEDURE DIVISION.
       MAIN-SECTION SECTION.
           IF RI-TAR = 21 OR 20 OR 30 OR 40
      *        DEAD CODE 1: Impossible condition. RI-TAR cannot equal 99
      *        because control only enters here if RI-TAR is 21, 20, 30, or 40.
               IF RI-TAR = 99
                   DISPLAY "HELLO"
               END-IF
               SET EINMALBEITRAG-SELBST-RECHNEN    TO TRUE
               SET FEHLER                          TO TRUE
               SET TARIF-ITEM                      TO TRUE
               EXIT SECTION
           END-IF

      *    DEAD CODE 2: Unreachable block. 
      *    - If RI-TAR was 21, the first IF handled it and called EXIT SECTION.
      *    - If RI-TAR was not 21, this IF condition evaluates to FALSE.
           IF RI-TAR = 21
               SET EINMALBEITRAG-SELBST-RECHNEN    TO TRUE
               SET FEHLER                          TO TRUE
               SET TARIF-ITEM                      TO TRUE
               EXIT SECTION
           END-IF.

           STOP RUN.