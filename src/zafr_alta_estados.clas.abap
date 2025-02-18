CLASS zafr_alta_estados DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_ESTADOS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Estados TYPE STANDARD TABLE OF zt10tt_estados.
         IT_Estados = VALUE #(
            ( cveedo = 01 estado = 'AGUASCALIENTES' )
            ( cveedo = 02 estado = 'BAJA CALIFORNIA NORTE' )
            ( cveedo = 03 estado = 'BAJA CALIFORNIA SUR' )
            ( cveedo = 04 estado = 'CAMPECHE' )
            ( cveedo = 05 estado = 'COAHUILA' )
            ( cveedo = 06 estado = 'COLIMA' )
            ( cveedo = 07 estado = 'CHIAPAS' )
            ( cveedo = 08 estado = 'CHIHUAHUA' )
            ( cveedo = 09 estado = 'CIUDAD DE MEXICO' )
            ( cveedo = 10 estado = 'DURANGO' )
            ( cveedo = 11 estado = 'GUANAJUATO' )
            ( cveedo = 12 estado = 'GUERRERO' )
            ( cveedo = 13 estado = 'HIDALGO' )
            ( cveedo = 14 estado = 'JALISCO' )
            ( cveedo = 15 estado = 'ESTADO DE MEXICO' )
            ( cveedo = 16 estado = 'MICHOACAN' )
            ( cveedo = 17 estado = 'MORELOS' )
            ( cveedo = 18 estado = 'NAYARIT' )
            ( cveedo = 19 estado = 'NUEVO LEON' )
            ( cveedo = 20 estado = 'OAXACA ' )
            ( cveedo = 21 estado = 'PUEBLA ' )
            ( cveedo = 22 estado = 'QUERETARO' )
            ( cveedo = 23 estado = 'QUINTANA ROO' )
            ( cveedo = 24 estado = 'SAN LUIS POTOSI' )
            ( cveedo = 25 estado = 'SINALOA' )
            ( cveedo = 26 estado = 'SONORA' )
            ( cveedo = 27 estado = 'TABASCO' )
            ( cveedo = 28 estado = 'TAMAULIPAS' )
            ( cveedo = 29 estado = 'TLAXCALA' )
            ( cveedo = 30 estado = 'VERACRUZ' )
            ( cveedo = 31 estado = 'YUCATAN' )
            ( cveedo = 32 estado = 'ZACATECAS' )

         ).
         INSERT zt10tt_estados FROM TABLE @IT_Estados.
         if SY-subrc = 0.
              OUT->write( 'Se Insertan los Estados Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
