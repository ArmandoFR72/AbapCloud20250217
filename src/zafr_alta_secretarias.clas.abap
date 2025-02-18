CLASS zafr_alta_secretarias DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAFR_ALTA_SECRETARIAS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA: IT_Secretarias TYPE STANDARD TABLE OF zt05tt_secretars.
           IT_Secretarias = VALUE #(
            ( cvesec = '1001'  secretaria = 'COORD REGIDORES' )
            ( cvesec = '1002'  secretaria = 'PRESIDENCIA    ' )
            ( cvesec = '1004'  secretaria = 'SINDICATURA    ' )
            ( cvesec = '1005'  secretaria = 'SEC DEL AYTO   ' )
            ( cvesec = '1007'  secretaria = 'TESORERIA      ' )
            ( cvesec = '1008'  secretaria = 'CONTRALORIA    ' )
            ( cvesec = '1009'  secretaria = 'SEC INNOV DIG C' )
            ( cvesec = '1011'  secretaria = 'SEC GOBERNAC   ' )
            ( cvesec = '1013'  secretaria = 'SEC DES SOCIAL ' )
            ( cvesec = '1014'  secretaria = 'SEC INF SER PUB' )
            ( cvesec = '1016'  secretaria = 'SEC DES ECONﾓMI' )
            ( cvesec = '1017'  secretaria = 'SEC DE ADMON   ' )
            ( cvesec = '1018'  secretaria = 'SEC SEG PUB TRA' )
            ( cvesec = '1021'  secretaria = 'COORD GRAL TRAN' )
            ( cvesec = '1023'  secretaria = 'COORD POL. PUB.' )
            ( cvesec = '1025'  secretaria = 'SEC DES URB SUS' )
            ( cvesec = '1026'  secretaria = 'SEC TURISMO    ' )
            ( cvesec = '1027'  secretaria = 'COORD G COM SOC' )
            ( cvesec = '1028'  secretaria = 'SEC MOVILIDAD  ' )
            ( cvesec = '1029'  secretaria = 'SEC ISG        ' )
            ( cvesec = '1030'  secretaria = 'SEC.PROTEC.CIV.' )
            ( cvesec = '1031'  secretaria = 'SEC.SEG.CUIDADA' )
            ( cvesec = '4001'  secretaria = 'REGIDURﾍAS     ' )
            ( cvesec = '4002'  secretaria = 'PRESIDENCIA    ' )
            ( cvesec = '4003'  secretaria = 'SINDICATURA    ' )
            ( cvesec = '4004'  secretaria = 'SEC DEL AYTO   ' )
            ( cvesec = '4005'  secretaria = 'CONTRALORIA    ' )
            ( cvesec = '4006'  secretaria = 'TESORERIA      ' )
            ( cvesec = '4007'  secretaria = 'SEC GOBERNAC   ' )
            ( cvesec = '4008'  secretaria = 'SEC ISG        ' )
            ( cvesec = '4009'  secretaria = 'SEDETU         ' )
            ( cvesec = '4010'  secretaria = 'C.GRAL.T.Y.M.A ' )
            ( cvesec = '4011'  secretaria = 'C. GRAL COM SOC' )
            ( cvesec = '4012'  secretaria = 'SEC MED.AMBIEN ' )
            ( cvesec = '4013'  secretaria = 'SEC SERV PUBL. ' )
            ( cvesec = '4014'  secretaria = 'S.GES.Y.DES.URB' )
            ( cvesec = '4015'  secretaria = 'SEC MOV E INFRA' )
            ( cvesec = '4016'  secretaria = 'SECATI         ' )
            ( cvesec = '4017'  secretaria = 'SEC BIEN PART C' )
            ( cvesec = '4018'  secretaria = 'SEC.SEG.CIUDAD.' )
            ( cvesec = '5001'  secretaria = 'REGIDURﾍAS     ' )
            ( cvesec = '5002'  secretaria = 'PRESIDENCIA    ' )
            ( cvesec = '5003'  secretaria = 'SINDICATURA    ' )
            ( cvesec = '5004'  secretaria = 'AYUNTAMIENTO   ' )
            ( cvesec = '5005'  secretaria = 'CONTRALORIA    ' )
            ( cvesec = '5006'  secretaria = 'TESORERIA      ' )
            ( cvesec = '5007'  secretaria = 'GRAL. GOBIERNO ' )
            ( cvesec = '5008'  secretaria = 'IGUALDAD       ' )
            ( cvesec = '5009'  secretaria = 'ECONOMIA Y TUR ' )
            ( cvesec = '5010'  secretaria = 'TRANSPARENCIA  ' )
            ( cvesec = '5011'  secretaria = 'COMUN. SOCIAL  ' )
            ( cvesec = '5012'  secretaria = 'MEDIO AMBIENTE ' )
            ( cvesec = '5013'  secretaria = 'SERV. PUBLICOS ' )
            ( cvesec = '5014'  secretaria = 'DESARROLLO URB ' )
            ( cvesec = '5015'  secretaria = 'INFRAESTRUCTURA' )
            ( cvesec = '5016'  secretaria = 'SATI           ' )
            ( cvesec = '5017'  secretaria = 'BIENESTAR      ' )
            ( cvesec = '5018'  secretaria = 'SEGURIDAD C.   ' )

         ).
         INSERT zt05tt_secretars FROM TABLE @IT_Secretarias.
         if SY-subrc = 0.
              OUT->write( 'Se Insertan las Secretarias Correctamente' ).
         ELSE.
              OUT->write( 'Error al Insertar' ).
         ENDIF.
  ENDMETHOD.
ENDCLASS.
