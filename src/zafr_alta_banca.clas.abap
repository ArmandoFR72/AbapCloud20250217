CLASS zafr_alta_banca DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_BANCA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Banca TYPE STANDARD TABLE OF zt02tt_banca.
           IT_Banca = VALUE #(

( numcontrol = 99711 cvebco = 00002  ctaban = '7877123456'   tarjeta = '2024-1999-2571-8717' cbeint = '78977123456-522024001'   fecalt = '19990430' AAALT = '1999'  MMAlt = '04'   DDAlt = '30' )
).

         INSERT zt02tt_banca FROM TABLE @IT_Banca.
         if SY-subrc = 0.
              OUT->write( 'Se Insertan datos bancarios Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
