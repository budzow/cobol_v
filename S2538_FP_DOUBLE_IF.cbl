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
               IF RI-TAR = 99
                   DISPLAY "HELLO"
               END-IF
               SET EINMALBEITRAG-SELBST-RECHNEN    TO TRUE
               SET FEHLER                          TO TRUE
               SET TARIF-ITEM                      TO TRUE
               EXIT SECTION
           END-IF

           IF RI-TAR = 21
               SET EINMALBEITRAG-SELBST-RECHNEN    TO TRUE
               SET FEHLER                          TO TRUE
               SET TARIF-ITEM                      TO TRUE
               EXIT SECTION
           END-IF.

           STOP RUN.