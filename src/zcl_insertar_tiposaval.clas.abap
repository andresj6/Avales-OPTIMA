CLASS zcl_insertar_tiposaval DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insertar_tiposaval IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA: lt_aval TYPE STANDARD TABLE OF zatipo_aval,
          ls_aval TYPE zatipo_aval.

    CLEAR ls_aval.
    ls_aval-tipo_aval = 'PRO'.
    ls_aval-descripcion = 'Provisional'.
    APPEND ls_aval TO lt_aval.

    CLEAR ls_aval.
    ls_aval-tipo_aval = 'DEF'.
    ls_aval-descripcion = 'Definitivo'.
    APPEND ls_aval TO lt_aval.

    CLEAR ls_aval.
    ls_aval-tipo_aval = 'ACT'.
    ls_aval-descripcion = 'Actividad'.
    APPEND ls_aval TO lt_aval.

    CLEAR ls_aval.
    ls_aval-tipo_aval = 'OTR'.
    ls_aval-descripcion = 'Otros'.
    APPEND ls_aval TO lt_aval.

    INSERT zatipo_aval FROM TABLE @lt_aval.


    COMMIT WORK.

    out->write( |Tipos de aval insertados correctamente en ZATIPO_AVAL.| ).

  ENDMETHOD.
ENDCLASS.
