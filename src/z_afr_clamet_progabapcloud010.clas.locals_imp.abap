*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_connections DEFINITION.
  PUBLIC SECTION.
  "* Attributes
    DATA carrier_id    TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.
    CLASS-DATA conn_counter TYPE i.
    "*Methods
    METHODS set_attributess
      IMPORTING
               i_carrier_id    TYPE /dmo/carrier_id  DEFAULT 'LH'
               i_Connection_id TYPE /dmo/connection_id
      RAISING
               cx_abap_invalid_value.
    " Functional Method
    METHODS get_outputs
      RETURNING VALUE(r_output) TYPE string_table.

    "*  PROTECTED SECTION.
    "*  PRIVATE SECTION.
ENDCLASS.

CLASS lcl_connections IMPLEMENTATION.
      METHOD set_attributess.
             IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL.
                RAISE EXCEPTION TYPE cx_abap_invalid_value.
             ENDIF.
             carrier_id    = i_carrier_id.
             connection_id = i_connection_id.
      ENDMETHOD.

      METHOD get_outputs.
             APPEND |-------------*----------------| TO r_output.
             APPEND |Carrier:     { carrier_id    }| TO r_output.
             APPEND |Connection:  { connection_id }| TO r_output.
      ENDMETHOD.
ENDCLASS.
