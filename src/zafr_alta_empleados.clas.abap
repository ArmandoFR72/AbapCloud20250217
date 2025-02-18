CLASS zafr_alta_empleados DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_EMPLEADOS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Datgen TYPE STANDARD TABLE OF zt01tt_datgen.
           IT_Datgen = VALUE #(
           ( numcontrol   = 99711
            secretaria   = '5001'
            direccion    = '401010001'
            depto        = '50111001'
            tipnom       = 6
            areafunc     = 'E10045524240125B'
            puesto       = '30000002'
            rfc          = 'LOGA770110XYZ'
            curp         = 'LOGA770110MPLRRL02'
            paterno      = 'LORANCA'
            materno      = 'GARCIA'
            nombres      = 'ALEJANDRA ARACELI'
            fecing       = '19990430'
            dding        = 30
            mming        = 04
            aaing        = 1999
            fecnac       = '19770110'
            ddnac        = 10
            mmnac        = 01
            aanac        = 1977
            sexo         = 'MUJER'
            nacionalidad = 'MEXICANA'
            edociv       = 'SOLTERA'
            telefono     = '52-76-55-72-33'
            celular      = '22-24-49-88-31'
            correo       = 'loranca.garcia@gmail.com'
            foto         = 'C:\Users\Sub Sistemas 01\Downloads\095_SAP_CLOUDE_Eclipse_Casa\FOTOS\99711_ALG.jpg'
            sts          = 'ACTIVO' )
         ).
         INSERT zt01tt_datgen FROM TABLE @IT_Datgen.
         if SY-subrc = 0.
              OUT->write( 'Se Insertan Datos del Empleado Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
