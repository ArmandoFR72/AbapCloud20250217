CLASS z_afr_cla_progabapcloud001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS Z_AFR_CLA_PROGABAPCLOUD001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
         DATA:      FecSis   TYPE D,
                    HraSis   TYPE T,
                    E        TYPE P LENGTH 5 DECIMALS 2,
                    Leyenda  TYPE C LENGTH 50 VALUE 'Mi nombre es Armando Flores Ramos',
                    Titulo01 TYPE STRING VALUE 'Pruebas de mi Programa -',
                    Titulo02 TYPE STRING VALUE '- ABAP CLOUD',
                    Result   TYPE STRING.
         CONSTANTS:
                    A TYPE I VALUE 3,
                    B TYPE I VALUE 9,
                    C TYPE I VALUE 4,
                    D TYPE I VALUE 2.
                    E = ( ( A + B - C ) / D ).
                    CLEAR: FecSis, HraSis.
               FecSis = SY-DATUM.
               HraSis = SY-UZEIT.
               Result = Titulo01 && || && Titulo02.
         out->write( 'Hola Mundo en ABAP CLOUDE ... Primer programa' ). "Es una Literal.
         out->write( Leyenda ).
         out->write( FecSis ).
         out->write( HraSis ).
         out->write( '--- Haciendo un Ejemplo de Calculos Matematicos ---' ).
         out->write( E ).
         out->write( Result ).
  ENDMETHOD.
ENDCLASS.
