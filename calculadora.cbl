      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WKS-NUM-1     PIC 9(05)V99.
       77  WKS-NUM-2     PIC 9(05)V9(02).
       77  WKS-RESULTADO PIC 9(10)V99.
       01  GUIONES       PIC X(80)   VALUE ALL "-".
       01  OPCION        PIC 99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM MUESTRO-PROGRAMA.
           PERFORM OPCIONES.
           PERFORM SUMA.


       MUESTRO-PROGRAMA.
           DISPLAY " "                    LINE 1  COL 1 ERASE EOS
                   "CALCULADORA"          LINE 3  COL 32
                   GUIONES                LINE 4  COL 1
                   "01. Suma"             LINE 6  COL 10
                   "02. Resta"            LINE 8  COL 10
                   "02. Multiplicacion"   LINE 10 COL 10
                   "03. Division"         LINE 12 COL 10
                   "OPCION [    ]"         LINE 14 COL 10
                   GUIONES                LINE 16 COL 1.

           DISPLAY "[77 - CERRAR CALCULADORA]" LINE 17 COL 1

           DISPLAY GUIONES                LINE 19 COL 1.

       OPCIONES.
           ACCEPT OPCION                       LINE 14 COL 19.
           EVALUATE OPCION
               WHEN 1
                   PERFORM SUMA
               WHEN 2
                   PERFORM RESTA
               WHEN 3
                   PERFORM MULTIPLICACION
               WHEN 4
                   PERFORM DIVIDIR
               WHEN 77
                   STOP RUN
               WHEN 88
                   PERFORM REGRESAR-PROGRAMA
               WHEN OTHER
                   DISPLAY "OPCION INVALIDA INTENTE DE NUEVO"
           END-EVALUATE.

       SUMA.
           DISPLAY " "    LINE 1  COL 1 ERASE EOS
                   "CALCULADORA | SUMA"         LINE 3  COL 32
                   GUIONES                      LINE 4  COL 1
                   "TU ELECCION FUE LA SUMA"    LINE 5  COL 1
                   "INGRESA EL PRIMER NUMERO:"  LINE 7  COL 1
                   ACCEPT WKS-NUM-1             LINE 8  COL 1.
           DISPLAY "INGRESA EL SEGUNDO NUMERO:" LINE 10 COL 1
                   ACCEPT WKS-NUM-2             LINE 11 COL 1.

           ADD WKS-NUM-1 TO WKS-NUM-2 GIVING WKS-RESULTADO.

           DISPLAY "TU RESULTADO ES "  LINE 12 COL 1
                   WKS-RESULTADO       LINE 13 COL 1.

           DISPLAY GUIONES                      LINE 14 COL 1
                   "[77 - CERRAR] [88 - REGRESAR]" LINE 18 COL 10
                   "OPCION [    ]"              LINE 20 COL 10.
                   ACCEPT OPCION                LINE 20 COL 19.

           PERFORM REGRESAR-PROGRAMA.

       RESTA.
           DISPLAY " "    LINE 1  COL 1 ERASE EOS
                   "CALCULADORA | RESTA"        LINE 3  COL 32
                   GUIONES                      LINE 4  COL 1
                   "TU ELECCION FUE LA SUMA"    LINE 5  COL 1
                   "INGRESA EL PRIMER NUMERO:"  LINE 7  COL 1
                   ACCEPT WKS-NUM-1             LINE 8  COL 1.
           DISPLAY "INGRESA EL SEGUNDO NUMERO:" LINE 10 COL 1
                   ACCEPT WKS-NUM-2             LINE 11 COL 1.

           SUBTRACT WKS-NUM-1 FROM WKS-NUM-2 GIVING WKS-RESULTADO.

           DISPLAY "TU RESULTADO ES "  LINE 12 COL 1
                   WKS-RESULTADO       LINE 13 COL 1.

           DISPLAY GUIONES                      LINE 14 COL 1
                   "[77 - CERRAR] [88 - REGRESAR]" LINE 18 COL 10
                   "OPCION [    ]"              LINE 20 COL 10.
                   ACCEPT OPCION                LINE 20 COL 19.

           PERFORM REGRESAR-PROGRAMA.

       MULTIPLICACION.
           DISPLAY " "    LINE 1  COL 1 ERASE EOS
                   "CALCULADORA | MULTIPLICACION" LINE 3  COL 32
                   GUIONES                      LINE 4  COL 1
                   "TU ELECCION FUE LA SUMA"    LINE 5  COL 1
                   "INGRESA EL PRIMER NUMERO:"  LINE 7  COL 1
                   ACCEPT WKS-NUM-1             LINE 8  COL 1.
           DISPLAY "INGRESA EL SEGUNDO NUMERO:" LINE 10 COL 1
                   ACCEPT WKS-NUM-2             LINE 11 COL 1.

           MULTIPLY WKS-NUM-1 BY WKS-NUM-2 GIVING WKS-RESULTADO.

           DISPLAY "TU RESULTADO ES "  LINE 12 COL 1
                   WKS-RESULTADO       LINE 13 COL 1.

           DISPLAY GUIONES                      LINE 14 COL 1
                   "[77 - CERRAR] [88 - REGRESAR]" LINE 18 COL 10
                   "OPCION [    ]"              LINE 20 COL 10.
                   ACCEPT OPCION                LINE 20 COL 19.

           PERFORM REGRESAR-PROGRAMA.
       DIVIDIR.
           DISPLAY " "    LINE 1  COL 1 ERASE EOS
                   "CALCULADORA | DIVISION" LINE 3  COL 32
                   GUIONES                      LINE 4  COL 1
                   "TU ELECCION FUE LA SUMA"    LINE 5  COL 1
                   "INGRESA EL PRIMER NUMERO:"  LINE 7  COL 1
                   ACCEPT WKS-NUM-1             LINE 8  COL 1.
           DISPLAY "INGRESA EL SEGUNDO NUMERO:" LINE 10 COL 1
                   ACCEPT WKS-NUM-2             LINE 11 COL 1.

           DIVIDE WKS-NUM-1 INTO WKS-NUM-2 GIVING WKS-RESULTADO.

           DISPLAY "TU RESULTADO ES "  LINE 12 COL 1
                   WKS-RESULTADO       LINE 13 COL 1.

           DISPLAY GUIONES                      LINE 14 COL 1
                   "[77 - CERRAR] [88 - REGRESAR]" LINE 18 COL 10
                   "OPCION [    ]"              LINE 20 COL 10.
                   ACCEPT OPCION                LINE 20 COL 19.

           PERFORM REGRESAR-PROGRAMA.

       REGRESAR-PROGRAMA.
           PERFORM MAIN-PROCEDURE.


       END PROGRAM CALCULADORA.
