CLASS z_afr_cla_prograbap_eml218 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_AFR_CLA_PROGRABAP_EML218 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA agencies_upd TYPE TABLE FOR UPDATE /dmo/i_agencytp.
         agencies_upd = VALUE #( ( agencyid = '070017' name = 'ARMADO new name' ) ).

         MODIFY ENTITIES OF /dmo/i_agencytp ENTITY /dmo/agency
                UPDATE FIELDS ( name )
                WITH agencies_upd.
         COMMIT ENTITIES.

         out->write( 'Execución del Metodo Finalizado' ).
  ENDMETHOD.
ENDCLASS.
