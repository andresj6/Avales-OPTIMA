@AbapCatalog.sqlViewName: 'ZTIPAVALVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds'
@Metadata.ignorePropagatedAnnotations: true
define view ZDA_VH_TIPOAVALES as select from zatipo_aval
{
    key tipo_aval     as TipoAval,
      descripcion   as Descripcion
}
