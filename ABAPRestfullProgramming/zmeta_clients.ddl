@Metadata.layer: #CUSTOMER
@UI.headerInfo: { typeName: 'Client Details',
typeNamePlural: 'Client Details',
title.value: 'id'
}
annotate view ZC_ClientInfo with
{
  @UI.facet: [{ id : 'id',
            type: #IDENTIFICATION_REFERENCE,
            label: 'Client Details'}]
  @UI.lineItem: [{position: 10, label: 'Client ID'}]
  @UI.identification: [{ position: 10, label: 'Client ID' }]
  id;
  @UI.lineItem: [{position: 20, label: 'Client Name'}]
  @UI.identification: [{ position: 20, label: 'Client Name' }]
  name;
  @UI.lineItem: [{position: 30, label: 'Client last_name'}]
  @UI.identification: [{ position: 10, label: 'Client last_name' }]
  last_name;
  @UI.lineItem: [{position: 40, label: 'Client Gender'}]
  @UI.identification: [{ position: 10, label: 'Client Gender' }]
  gender;
  @UI.lineItem: [{position: 50, label: 'Client Age'}]
  @UI.identification: [{ position: 10, label: 'Client Age' }]
  age;
  @UI.lineItem: [{position: 60, label: 'Credit Limit'}]
  @UI.identification: [{ position: 10, label: 'Credit limit' }]
  credit_available;
  @UI.lineItem: [{position: 60, label: 'Currency'}]
  @UI.identification: [{ position: 10, label: 'Currency' }]
  currency_key;
}
