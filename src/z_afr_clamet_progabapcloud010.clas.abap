CLASS z_afr_clamet_progabapcloud010 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_AFR_CLAMET_PROGABAPCLOUD010 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA connection  TYPE REF TO lcl_connections.
         DATA connections  TYPE TABLE OF REF TO lcl_connections.
**********************************************************************
    "* First Instance.
    connection = NEW #(  ).
    TRY.
        connection->set_attributess(
                  EXPORTING
                           i_carrier_id    = 'AF'
                           i_connection_id = '0516'
                  ).
        APPEND connection TO connections.
    CATCH cx_abap_invalid_value.
          out->write( 'Lamada del Metodo fallido' ).
    ENDTRY.
**********************************************************************
    "* Second Instance.
    connection = NEW #(  ).
    TRY.
        connection->set_attributess(
                  EXPORTING
                           i_carrier_id    = 'AA'
                           i_connection_id = '0017'
                  ).
        APPEND connection TO connections.

    CATCH cx_abap_invalid_value.
        out->write( 'Method call failed 2' ).
    ENDTRY.
**********************************************************************
    "* Third Instance.
    connection = NEW #(  ).
    TRY.
        connection->set_attributess(
          EXPORTING
            i_carrier_id    = 'SQ'
            i_connection_id = '0001'
        ).
        APPEND connection TO connections.
    CATCH cx_abap_invalid_value.
        out->write( 'Method call failed 3' ).
    ENDTRY.
**********************************************************************
    "*OUTPUT
    "* Calling Functional Method
    " in a value assignment (with inline declaration for result)
    "***DATA(result) = connection->get_outputs( ).
    " in logical expression
    "***IF connection->get_outputs(  ) IS NOT INITIAL.
       " As operand in a statement
       LOOP AT connection->get_outputs(  ) INTO DATA(line).
            out->write( connection->get_outputs( ) ).
       ENDLOOP.
       "To supply input parameter of another method
       "*out->write( data = connection->get_outputs( ) name = '  ' ).
    "***ENDIF.
  ENDMETHOD.
ENDCLASS.
