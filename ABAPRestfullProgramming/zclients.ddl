@EndUserText.label : 'Details For Clients'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zclients {
  key client       : abap.clnt not null;
  id               : abap.char(32) not null;
  name             : abap.char(40);
  last_name        : abap.char(40);
  gender           : abap.char(20);
  age              : zage;
  @Semantics.amount.currencyCode : 'zemp_dtls.zcurrency_key'
  credit_available : abap.curr(6,2);
  currency_key     : abap.cuky;

}