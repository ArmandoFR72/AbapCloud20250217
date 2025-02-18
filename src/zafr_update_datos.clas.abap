CLASS zafr_update_datos DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_UPDATE_DATOS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Datgen TYPE STANDARD TABLE OF zt01tt_datgen.
               "update zt01tt_datgen SET RFC = 'GADM670504XY1', CURP = 'GADM670504MPLRZN01' WHERE numcontrol = 305423.
               update zt04tt_imss SET nocli = 55 WHERE numcontrol = 99711.
  ENDMETHOD.
ENDCLASS.
