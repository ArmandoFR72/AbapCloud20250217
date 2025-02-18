CLASS zafr_alta_clinicas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_CLINICAS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Clinica TYPE STANDARD TABLE OF zt14tt_clinica.
           IT_Clinica = VALUE #(
           (  nocli = 1   clinica = 'UMF 1 PUEBLA'                direccion = 'Calle 11 Sur 1305, Centro histórico de Puebla, 72000 Heroica Puebla de Zaragoza, Pue.'                cpcli = 72000
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222438526' )
           (  nocli = 2   clinica = 'UMF 2 PUEBLA'                direccion = 'Calle 11 Sur 1305, Centro histórico de Puebla, 72000 Heroica Puebla de Zaragoza, Pue.'                cpcli = 72000
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222460500' )
           (  nocli = 3   clinica = 'UMF 3 SAN FELIPE'            direccion = 'Calle 5 de Febrero Pte. Oriente 206,San Felipe Hueyotlipan, 72030 H.Puebla de Z., Pue.'  cpcli = 72030
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222241911' )
           (  nocli = 4   clinica = 'UMF 4 CONSTANCIA'            direccion = 'Blvrd Esteban de Antuñano 6, Luz Obrera, 72110 Heroica Puebla de Zaragoza, Pue.'                      cpcli = 72110
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222244380' )
           (  nocli = 6   clinica = 'UMF 6 PUEBLA'                direccion = 'Calle 15 de Mayo s/n, Valle Dorado, 72070 Heroica Puebla de Zaragoza, Pue.'                           cpcli = 72070
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222497100' )
           (  nocli = 7   clinica = 'UMF 7 SAN BARTOLO'           direccion = 'San Bartolo Nte. a s/n, INFONAVIT San Bartolo, 72470 Heroica Puebla de Zaragoza, Pue.'                cpcli = 72470
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222197323' )
           (  nocli = 8   clinica = 'UMF 8 EL MAYORAZGO'          direccion = 'Av. del Trabajo 57, Mayorazgo, 72450 Heroica Puebla de Zaragoza, Pue.'                                cpcli = 72450
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222407241' )
           (  nocli = 12  clinica = 'UMF 12 SAN PEDRO CHOLULA'    direccion = 'Calle 4 Nte 1001, Barrio de Jesús Tlatempa, 72760 San Andrés Cholula, Pue.'                           cpcli = 72760
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222477269' )
           (  nocli = 13  clinica = 'UMF 13 PUEBLA'               direccion = 'Calle Nardos 31, Bugambilias, 72580 Heroica Puebla de Zaragoza, Pue.'                                 cpcli = 72580
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '800 623 2323' )
           (  nocli = 14  clinica = 'UMF 14 PUEBLO NUEVO'         direccion = 'Calle Vicente Guerrero 13, Vista Hermosa, 72124 Heroica Puebla de Zaragoza, Pue.'                     cpcli = 72124
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '800 623 2323' )
           (  nocli = 21  clinica = 'UMF 21 PUEBLA'               direccion = 'Calle 14 Sur 3106, Anzures, 72530 Heroica Puebla de Zaragoza, Pue.'                                   cpcli = 72530
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222404184' )
           (  nocli = 47  clinica = 'UMF 47 SAN MIGUEL XOXTLA'    direccion = 'Guillermo Prieto S/N, 72620 San Miguel Xoxtla, Pue., México'                                          cpcli = 72620
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222814218' )
           (  nocli = 55  clinica = 'UMF 55 PUEBLA'               direccion = 'Av. de las Torres 55, INFONAVIT Amalucan, 72310 Heroica Puebla de Zaragoza, Pue.'                     cpcli = 72310
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '800 623 2323' )
           (  nocli = 57  clinica = 'UMF 57 MARGARITA'            direccion = 'Av. Fidel Velazquez y Av.42 Sur, INFONAVIT la Margarita,72560 H. Puebla de Zaragoza, Pue.' cpcli = 72560
              tipoclin = 'Unidad de Medicina Familiar' TelefonoCli = '522222449637' )
           (  nocli = 20  clinica = 'HOSPITAL - HGZ 20 MARGARITA' direccion = 'Blvd. Municipio Libre, INFONAVIT la Margarita, 72560 Heroica Puebla de Zaragoza, Pue.'                cpcli = 72560
              tipoclin = 'HOSPITAL'  TelefonoCli = '8006232323' )
         ).
         INSERT zt14tt_clinica FROM TABLE @IT_Clinica.
         if SY-subrc = 0.
              OUT->write( 'Se Inserta Catalogo de Clinicas Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
