CLASS z_afr_cla_progabapcloud008 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_AFR_CLA_PROGABAPCLOUD008 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA connection  TYPE REF TO lcl_connection.
         DATA connections TYPE TABLE OF REF TO lcl_connection.

         connection = new #(  ).
         connection->carrier_id = 'LH'.
         CONNECTION->connection_id = '0400'.
         APPEND connection TO connections.
         "***
         connection = new #(  ).
         connection->carrier_id = 'AA'.
         CONNECTION->connection_id = '0017'.
         APPEND connection TO connections.
         "***
         connection = new #(  ).
         connection->carrier_id = 'SQ'.
         CONNECTION->connection_id = '0001'.
         APPEND connection TO connections.
         "***
  ENDMETHOD.
ENDCLASS.
