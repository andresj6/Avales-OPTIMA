
@AbapCatalog.sqlViewName: 'ZR_AVALES_SUM_O'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'sumatiorio importe total otros'
@Metadata.ignorePropagatedAnnotations: true
define view ZR_AVALES_SUM_OTR as select from ZR_AVALES_ARNAU
{
    
    NumBanco,
    Compania,
    Cancelado,
    OtrosAvales,
    sum (ImporteAval) as ImporteAval
    
}where Cancelado = '' and OtrosAvales = 'X'
group by NumBanco, Compania, Cancelado, OtrosAvales
