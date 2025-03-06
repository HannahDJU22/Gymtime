       IDENTIFICATION DIVISION.
       PROGRAM-ID. GYM_PROGRAM.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       LINKAGE SECTION.
              COPY "TRAINING_PLAN.CPY".
       SCREEN SECTION.
       01 CHOOSE-TRAINING-SCREEN.
         03 BLANK SCREEN.
         03 LINE 9 COLUMN 15 PIC X(19) VALUE 'PUSH, PULL OR LEGS?'.
         03 LINE 10 COLUMN 15 PIC X(18) VALUE 'MAKE YOUR CHOICE: '.
         03 LINE 12 COLUMN 15 PIC X(4) USING TRAINING-PLAN.

       PROCEDURE DIVISION USING TRAINING-PLAN.

           DISPLAY CHOOSE-TRAINING-SCREEN
           ACCEPT CHOOSE-TRAINING-SCREEN
           EVALUATE TRUE
               WHEN PUSH-PLAN
                   *> L�GG IN ATT MAN RETURNERAR V�RDE TILL MAIN
      *            DISPLAY ' YOU CHOSE PUSH'
               WHEN PULL-PLAN
      *            DISPLAY ' YOU CHOSE PULL'
               WHEN LEGS-PLAN
      *            DISPLAY ' YOU CHOSE LEGS'
               WHEN OTHER
      *            DISPLAY '????'

           END-EVALUATE

           GOBACK.
