CLASS zafr_alta_imss DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_IMSS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Imss TYPE STANDARD TABLE OF zt04tt_imss.
           IT_Imss = VALUE #(
            ( numcontrol = 99711 nocli = 3 nss = '48997711592' turno = 'VESPERTINO'   consultorio = 5 )
            "( numcontrol = 315335 nocli = 2 nss = '48058723007' turno = 'MATUTINO'   consultorio = 3 )
            "( numcontrol = 324729 nocli = 1 nss = '48927252873' turno = 'MATUTINO'   consultorio = 6 )
            "( numcontrol = 95092  nocli = 1 nss = '62937006088' turno = 'VESPERTINO' consultorio = 7 )
            "( numcontrol = 96010  nocli = 8 nss = '62967204421' turno = 'MATUTINO'   consultorio = 5 )
            "( numcontrol = 97205  nocli = 7 nss = '62977706928' turno = 'VESPERTINO' consultorio = 2 )
            "( numcontrol = 97359  nocli = 3 nss = '48937531910' turno = 'VESPERTINO' consultorio = 4 )

         ).
         INSERT zt04tt_imss FROM TABLE @IT_Imss.
         if SY-subrc = 0.
              OUT->write( 'Se Insertan Datos al IMSS Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
