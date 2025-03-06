       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAM1.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VERTICAL-SIGN PIC X(2) VALUE '||'.
       01 HORIZONTAL-SIGN PIC X(1) VALUE '='.
       01 SLASH-SIGN PIC X(1) VALUE '/'.
       01 YES-OR-NO PIC X(1).
         88 YES-TO-GYM VALUE 'Y', 'y'.
         88 NO-TO-GYM VALUE 'N', 'n'.
       01 WS-START-TABLE.
         03 OCCURS 25 TIMES.
           05 WS-SIDE-LINE PIC X VALUE '|'.
       01 WS-STAR-LINE PIC X(100) VALUE ALL '*'.
      *01 WS-COUNTER PIC 99 VALUE 0.
       COPY "TRAINING_PLAN.CPY".
       COPY "PUSH_PROGRAM.CPY".

       SCREEN SECTION.

       01 INIT-SCREEN.
         03 HORIZONTAL-LINE1.
           05 LINE 1 COL 1 PIC X(80) USING WS-STAR-LINE.

         03 HORIZONTAL-LINE2.
           05 LINE 26 COL 1 PIC X(80) USING WS-STAR-LINE.

         03 VERTICAL-LINE1.
           05 LINE 1 COL 1.
           05 OCCURS 25 TIMES.
             10 USING WS-SIDE-LINE LINE + 1 COL 01 PIC X.

         03 VERTICAL-LINE2.
           05 LINE 1 COL 1.
           05 OCCURS 25 TIMES.
             10 USING WS-SIDE-LINE LINE + 1 COL 80 PIC X.

       01 WELCOME-SCREEN.

         03 LINE 9 COLUMN 5 PIC XX FROM VERTICAL-SIGN.
         03 LINE 8 COLUMN 6 PIC XX FROM VERTICAL-SIGN.
         03 LINE 7 COLUMN 7 PIC XX FROM VERTICAL-SIGN.
         03 LINE 6 COLUMN 8 PIC XX FROM VERTICAL-SIGN.
         03 LINE 10 COLUMN 6 PIC XX FROM VERTICAL-SIGN.
         03 LINE 11 COLUMN 7 PIC XX FROM VERTICAL-SIGN.
         03 LINE 12 COLUMN 8 PIC XX FROM VERTICAL-SIGN.
         03 LINE 9 COLUMN 7 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 8 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 9 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 10 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 11 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 12 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 13 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 14 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 15 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 16 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 17 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 18 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 19 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 20 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 21 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 22 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 23 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 24 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 25 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 26 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 27 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 28 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 29 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 30 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 31 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 32 PIC X FROM HORIZONTAL-SIGN.
         03 LINE 9 COLUMN 33 PIC XX FROM VERTICAL-SIGN.
         03 LINE 8 COLUMN 32 PIC XX FROM VERTICAL-SIGN.
         03 LINE 7 COLUMN 31 PIC XX FROM VERTICAL-SIGN.
         03 LINE 6 COLUMN 30 PIC XX FROM VERTICAL-SIGN.
         03 LINE 10 COLUMN 6 PIC XX FROM VERTICAL-SIGN.
         03 LINE 11 COLUMN 7 PIC XX FROM VERTICAL-SIGN.
         03 LINE 12 COLUMN 8 PIC XX FROM VERTICAL-SIGN.
         03 LINE 10 COLUMN 32 PIC XX FROM VERTICAL-SIGN.
         03 LINE 11 COLUMN 31 PIC XX FROM VERTICAL-SIGN.
         03 LINE 12 COLUMN 30 PIC XX FROM VERTICAL-SIGN.
         03 LINE 9 COLUMN 45 PIC X FROM SLASH-SIGN.
         03 LINE 9 COLUMN 47 PIC X(10) VALUE 'GYMTIME!'.
         03 LINE 15 COLUMN 45 PIC X(21) VALUE 'ENTER THE GYM --->  Y'.
         03 LINE 17 COLUMN 45 PIC X(21) VALUE 'SNOOOOOZZZING --->  N'.
         03 LINE 18 COLUMN 45 PIC X(17) VALUE 'MAKE YOUR CHOICE '.
         03 LINE 18 COLUMN 65 PIC X USING YES-OR-NO.

         *> en screen ELLER SUBMODUL? f�r uppl�gget 5*5 alt 3*10

       01 SNOOZE-SCREEN.
         03 BLANK SCREEN.
         *> endast en knapp f�r att hoppa till submodulen d�r man
         *> v�ljer vilken tr�ning (push/pull/legs)
         03 LINE 9 COLUMN 15 PIC X(12) VALUE 'LAZY BASTARD'.
         03 LINE 12 COLUMN 15 PIC X(30) VALUE 'PRESS ENTER!'.
 
       01 PLAN-SCREEN.
         03 BLANK SCREEN.

       01 PUSH-SCREEN.
         03 LINE 9 COLUMN 15 PIC X(30)
            VALUE 'EXERCISES FOR PUSH TRAINING'.
         03 LINE 10 COLUMN 15 PIC X VALUE SPACE.
      

       PROCEDURE DIVISION.
           DISPLAY INIT-SCREEN
           DISPLAY WELCOME-SCREEN
           ACCEPT WELCOME-SCREEN
           PERFORM CHOOSE

           GOBACK.

       CHOOSE SECTION.
           EVALUATE TRUE
               WHEN YES-TO-GYM
                   CALL 'gym_program' USING TRAINING-PLAN
                   DISPLAY PLAN-SCREEN
                   PERFORM PLAN
               WHEN NO-TO-GYM
                   DISPLAY SNOOZE-SCREEN
           END-EVALUATE.

       PLAN SECTION.
           EVALUATE TRUE
               WHEN PUSH-PLAN
                   DISPLAY PUSH-SCREEN
                   CALL 'push_program' USING PUSH-PROGRAM
               WHEN PULL-PLAN
                   DISPLAY 'EXERCISES FOR PULL TRAINING'
               WHEN LEGS-PLAN
                   DISPLAY 'EXERCISES FOR LEGS TRAINING'
           END-EVALUATE.