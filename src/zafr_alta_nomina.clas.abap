CLASS zafr_alta_nomina DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_NOMINA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Nomina TYPE STANDARD TABLE OF zt07tt_nomina.
           IT_Nomina = VALUE #(
           ( tipnom = 01 nomina = 'BASE' )
           ( tipnom = 02 nomina = 'BASE SINDICALIZADOS' )
           ( tipnom = 03 nomina = 'CONTRATO' )
           ( tipnom = 04 nomina = 'PENSIONADOS' )
           ( tipnom = 05 nomina = 'HONORARIOS' )
           ( tipnom = 06 nomina = 'CONFIANZA' )
           ( tipnom = 07 nomina = 'EMPLEO TEMPORAL' )
           ( tipnom = 08 nomina = 'POR PROGRAMA' )
         ).
         INSERT zt07tt_nomina FROM TABLE @IT_Nomina.
         if SY-subrc = 0.
              OUT->write( 'Se Insertan los Tipos de Nomina Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
