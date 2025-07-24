CLASS LHC_ZR_AVALES_CARGA DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR ZrAvalesCarga
        RESULT result,
      processExcel FOR MODIFY
            IMPORTING keys FOR ACTION ZrAvalesCarga~processExcel.
ENDCLASS.

CLASS LHC_ZR_AVALES_CARGA IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD processExcel.
      TYPES: BEGIN OF tys_excel_type,
             columna_1  TYPE i,
             columna_2  TYPE i,
             columna_3  TYPE i,
           END OF tys_excel_type.

    DATA tl_excel TYPE TABLE OF tys_excel_type.

    READ ENTITIES OF zr_avales_carga IN LOCAL MODE
         ENTITY ZrAvalesCarga
         FIELDS ( Attachment )
         WITH CORRESPONDING #( keys )
         RESULT DATA(tl_read_aval).

    DATA(excel_content) = tl_read_aval[ 1 ]-Attachment.

    DATA(lo_read_access) = xco_cp_xlsx=>document->for_file_content( excel_content
        )->read_access( ).

    " Read access for the worksheet at position 1, such as the first worksheet in the workbook.
    DATA(lo_first_worksheet) = lo_read_access->get_workbook(
      )->worksheet->at_position( 1 ).

    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lo_cursor) = lo_first_worksheet->cursor( io_column = xco_cp_xlsx=>coordinate->for_alphabetic_value( 'A' )
                                                  io_row    = xco_cp_xlsx=>coordinate->for_numeric_value( 4 ) ).

    " Definimos patrón
    DATA(lo_pattern) = xco_cp_xlsx_selection=>pattern_builder->simple_from_to(
        )->from_row( xco_cp_xlsx=>coordinate->for_numeric_value( 2 )
        )->get_pattern( ).

    lo_first_worksheet->select( lo_pattern
        )->row_stream(
        )->operation->write_to( REF #( tl_excel )
        )->if_xco_xlsx_ra_operation~execute( ).

    DELETE tl_excel WHERE table_line IS INITIAL.


  ENDMETHOD.

ENDCLASS.
