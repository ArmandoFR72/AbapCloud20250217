CLASS zafr_borrar_datos DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_BORRAR_DATOS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Datgen TYPE STANDARD TABLE OF zt01tt_datgen.
               delete FROM zt01tt_datgen.
  ENDMETHOD.
ENDCLASS.
