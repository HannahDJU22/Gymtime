       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAM1.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VERTICAL-SIGN PIC X(1) VALUE '|'.
       01 HORIZONTAL-SIGN PIC X(25) VALUE '*************************'.
       01 BACKSLASH-SIGN PIC X(1) VALUE '\'.
       01 SLASH-SIGN PIC X(1) VALUE '/'.

       SCREEN SECTION.

       01 INIT-SCREEN.
         03 LINE 1 COLUMN 1 PIC X(25) FROM HORIZONTAL-SIGN.
         03 LINE 1 COLUMN 26 PIC X(25) FROM HORIZONTAL-SIGN.
         03 LINE 2 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 2 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 3 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 3 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 4 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 4 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 5 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 5 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 6 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 6 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 7 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 7 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 8 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 8 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 9 COLUMN 1 PIC X FROM VERTICAL-SIGN.
         03 LINE 9 COLUMN 50 PIC X FROM VERTICAL-SIGN.
         03 LINE 10 COLUMN 1 PIC X(25) FROM HORIZONTAL-SIGN.
         03 LINE 10 COLUMN 26 PIC X(25) FROM HORIZONTAL-SIGN.

       01 WELCOME-SCREEN.
         03 LINE 5 COLUMN 10 PIC X FROM SLASH-SIGN.
         03 LINE 6 COLUMN 10 PIC X FROM SLASH-SIGN.
         03 LINE 5 COLUMN 11 PIC X FROM SLASH-SIGN.
         03 LINE 6 COLUMN 11 PIC X FROM SLASH-SIGN.

       PROCEDURE DIVISION.
           DISPLAY INIT-SCREEN
           DISPLAY WELCOME-SCREEN

           GOBACK.

       END PROGRAM PROGRAM1.
