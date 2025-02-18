CLASS zafr_cursoabapcloud_prog01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_CURSOABAPCLOUD_PROG01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: number1 TYPE i,
              number2 TYPE i.
         number1 = -8.
         number2 =  3.
         DATA(result) = number1 / number2.
         DATA(Salida) = |{ number1 } / { number2 } = { result }|.
          out->write( Salida ).
  ENDMETHOD.
ENDCLASS.
