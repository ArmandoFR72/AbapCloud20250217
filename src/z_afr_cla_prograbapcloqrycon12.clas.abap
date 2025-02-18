CLASS z_afr_cla_prograbapcloqrycon12 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_AFR_CLA_PROGRABAPCLOQRYCON12 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         "Ejemplo 1.
         TYPES:
               BEGIN OF TY_DatGen,
                        numcontrol TYPE zt1dedg_numcon,
                        paterno    TYPE zt1dedg_paterno,
                        materno    TYPE zt1dedg_materno,
                        nombres    TYPE zt1dedg_nombres,
               END OF   TY_DatGen.
         "Ejemplo 2.
         DATA: "IT_Datgen TYPE STANDARD TABLE OF TY_DatGen,
               IT_DatGen TYPE TABLE OF TY_DatGen, "Vemos varios registros.
               WA_DatGen TYPE TY_DatGen,          "Vemos un solo registro.
               Message   TYPE SYMSG.
         "*** Hacer la lectura a un Registro - Work Station - Ejemplo 1.
         "SELECT SINGLE FROM ZT01TT_DatGen FIELDS numcontrol, paterno, materno, nombres
         "WHERE numcontrol = 96010 INTO @WA_Datgen.
         "out->write( WA_Datgen ).
         "*** Hacer lectura a una Tabla interna de varios registros - Ejemplo 2 y pertenece a Estructura 1.
         "SELECT FROM ZT01TT_DatGen FIELDS numcontrol, paterno, materno, nombres
         "WHERE tipnom = 6 INTO TABLE @IT_Datgen.
         "out->write( IT_Datgen ).
         "*** Ejemplo 3.
         "WA_Datgen-numcontrol = '100999'.
         "WA_Datgen-paterno    = 'LEON x'.
         "WA_Datgen-materno    = 'SANTIAGO x'.
         "WA_Datgen-nombres    = 'NORMA ELSA x'.
         "out->write( WA_Datgen ).
         "Ejemplo 4.
         "WA_Datgen = VALUE #(
         "               numcontrol = '100999'
         "               paterno    = 'LEON'
         "               materno    = 'SANTIAGO'
         "               nombres    = 'NORMA ELSA'
         "                   ).
         "
         "out->write( WA_Datgen ).
         "*****************************************************************************
         "out->write( Message ).
  ENDMETHOD.
ENDCLASS.
