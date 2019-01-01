
       IDENTIFICATION   DIVISION.
       PROGRAM-ID.      prog.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           SOURCE-COMPUTER. mine WITH DEBUGGING MODE.
       DATA             DIVISION.
       WORKING-STORAGE  SECTION.
       01  DATA-FIELD   PIC X(40) VALUE "ABCD" BASED.
       PROCEDURE        DIVISION.
       DECLARATIVES.
       TEST-DEBUG SECTION.
           USE FOR DEBUGGING ON ALL REFERENCES OF DATA-FIELD.
           DISPLAY DEBUG-ITEM "|" END-DISPLAY.
       END DECLARATIVES.
       SOME-PAR.
           ALLOCATE DATA-FIELD INITIALIZED.
           FREE DATA-FIELD.
           STOP RUN.
