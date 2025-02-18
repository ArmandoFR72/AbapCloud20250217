CLASS z_afr_cla_progabapcloud007 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_AFR_CLA_PROGABAPCLOUD007 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA connection  TYPE REF TO lcl_conection.
         DATA connection2 TYPE REF TO lcl_conection.

         connection = new #(  ).

         connection->carrier_id = 'LH'.
         connection->connection_id = '0400'.
         connection2 = connection.
  ENDMETHOD.
ENDCLASS.
