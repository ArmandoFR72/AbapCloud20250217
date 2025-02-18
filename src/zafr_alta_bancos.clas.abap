CLASS zafr_alta_bancos DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_BANCOS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Bancos TYPE STANDARD TABLE OF zt03tt_banco.
           IT_Bancos = VALUE #(

            ( cvebco = 002 banco = 'BANAMEX'       descrip = 'Banco Nacional de México, S.A., Institución de Banca Múltiple, Grupo Financiero Banamex' )
            ( cvebco = 009 banco = 'BANOBRAS'      descrip = 'Banco Nacional de Obras y Servicios PúblicosCrédito, Institución de Banca de Desarrollo' )
            ( cvebco = 012 banco = 'BBVA BANCOMER' descrip = 'BBVA Bancomer, S.A., Institución de Banca Múltiple, Grupo Financiero BBVA Bancomer' )
            ( cvebco = 014 banco = 'SANTANDER'     descrip = 'Banco Santander (México), S.A., Institución de Banca Múltiple, Grupo Financiero Santander' )
            ( cvebco = 021 banco = 'HSBC'          descrip = 'HSBC México, S.A., institución De Banca Múltiple, Grupo Financiero HSBC' )
            ( cvebco = 030 banco = 'BAJIO'         descrip = 'Banco del Bajío, S.A., Institución de Banca Múltiple' )
            ( cvebco = 032 banco = 'IXE'           descrip = 'IXE Banco, S.A., Institución de Banca Múltiple, IXE Grupo Financiero' )
            ( cvebco = 036 banco = 'INBURSA'       descrip = 'Banco Inbursa, S.A., Institución de Banca Múltiple, Grupo Financiero Inbursa' )
            ( cvebco = 042 banco = 'MIFEL'         descrip = 'Banca Mifel, S.A., Institución de Banca Múltiple, Grupo Financiero Mifel' )
            ( cvebco = 044 banco = 'SCOTIABANK'    descrip = 'Scotiabank Inverlat, S.A.' )
            ( cvebco = 058 banco = 'BANREGIO'      descrip = 'Banco Regional de Monterrey, SA, Institución de Banca Múltiple,Banregio Grupo Financiero' )
            ( cvebco = 062 banco = 'AFIRME'        descrip = 'Banca Afirme, S.A., Institución de Banca Múltiple' )
            ( cvebco = 072 banco = 'BANORTE'       descrip = 'Banco Mercantil del Norte, S.A., Institución de Banca Múltiple, Grupo Financiero Banorte' )
            ( cvebco = 127 banco = 'AZTECA'        descrip = 'Banco Azteca, S.A. Institución de Banca Múltiple.' )
            ( cvebco = 128 banco = 'AUTOFIN'       descrip = 'Banco Autofin México, S.A. Institución de Banca Múltiple' )
            ( cvebco = 131 banco = 'BANCO FAMSA'   descrip = 'Banco Ahorro Famsa, S.A., Institución de Banca Múltiple' )
            ( cvebco = 137 banco = 'BANCOPPEL'     descrip = 'BanCoppel, S.A., Institución de Banca Múltiple' )
            ( cvebco = 999 banco = 'N/A'           descrip = 'S/Descripción' )

         ).
         INSERT zt03tt_banco FROM TABLE @IT_Bancos.
         if SY-subrc = 0.
              OUT->write( 'Se Inserta Catalogo de Bancos Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
