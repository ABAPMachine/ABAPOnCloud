@AbapCatalog.sqlViewName: 'ZV_CLIENTINFO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clients root view'
@Metadata.allowExtensions: true

define root view ZC_ClientInfo 
    as select from zclients as clients {
    
    key clients.id,
        clients.name,
        clients.last_name,
        clients.gender,
        clients.age,
        clients.credit_available,
        clients.currency_key
    
}
