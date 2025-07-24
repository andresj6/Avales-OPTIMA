
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'sumatiorio importe total'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_AVALES_SUM as select from ZR_AVALES_ARNAU
{

    NumBanco,
    Compania,
    Cancelado,
    OtrosAvales,
    sum (ImporteAval) as ImporteAval
    
}where Cancelado = '' and OtrosAvales = ''
group by NumBanco, Compania, Cancelado, OtrosAvales
