CLASS zafr_alta_domicilios DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_DOMICILIOS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Domicilio TYPE STANDARD TABLE OF zt08tt_domicilio.
               IT_Domicilio = VALUE #(

( numcontrol = 99711 cvemun = 114  cveedo = 21 calle = 'RIO SUCHIATE'       noint = '0' noext = '5936'  colonia = 'SAN MANUEL'                     cp = 72570 pais = 'MEXICO' entrecayca = 'AV. SAN MANUEL' )
"( numcontrol = 315335 cvemun = 114  cveedo = 21 calle = 'Avenida 6 Oriente' noint = '0' noext = '3004' colonia = 'EL RESURGIMIENTO'               cp = 72370 pais = 'MEXICO' entrecayca = 'CALLE 22 NORTE' )
"( numcontrol = 324729 cvemun = 114  cveedo = 21 calle = '16 Poniente'       noint = '1' noext = '1511' colonia = 'Barrio San Miguel'              cp = 72090 pais = 'MEXICO' entrecayca = 'CALLE 15 NORTE Y 17 NORTE' )
"( numcontrol = 95092  cvemun = 114   cveedo = 21  calle = '9 Norte'         noint = '0' noext = '3609' colonia = 'Barrio de Santa María'          cp = 72080 pais = 'MEXICO' entrecayca = 'AVENIDA 38 PONIENTE' )
"( numcontrol = 96010  cvemun = 114   cveedo = 21  calle = 'CALLE ZACATECAS'   noint = '0'   noext = '10126'   colonia = 'POPULAR EMILIANO ZAPATA' cp = 72470 pais = 'MEXICO' entrecayca = 'AVENIDA MEXICO Y AVENIDA NACIONAL' )
"( numcontrol = 97205  cvemun = 114   cveedo = 21  calle = '3A CERRADA SANTA ISABEL'   noint = '0'   noext = '18'   colonia = 'CONJ  SANTA ISABEL CASTILLOTLA'   cp = 72498   pais = 'MEXICO' entrecayca = 'AVENIDA SANTA ISABEL Y AVENIDA LAS CARMELITAS' )
"( numcontrol = 97359  cvemun = 114   cveedo = 21  calle = 'Privada 9B Norte'   noint = '0'   noext = '10006'   colonia = 'VILLA FRONTERA'   cp = 72200   pais = 'MEXICO' entrecayca = 'AVENIDA 100 PONIENTE ' )

         ).
         INSERT zt08tt_domicilio FROM TABLE @IT_Domicilio.
         if SY-subrc = 0.
              OUT->write( 'Se Insertan Domicilios Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
