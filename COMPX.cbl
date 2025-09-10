       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPX.     
	   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      
       01  T00 PIC X COMP-X VALUE 062. *> PIC COMP-X is a numeric type, not alphanumeric one 
	                                   *> so cobol:COBOL.DataItemInitialValueCheck should not 
									   *> raise an issue when such field is initialized with a numeric value
       PROCEDURE DIVISION.
       MAIN-LOGIC.                
           DISPLAY T00.                      
           STOP RUN.