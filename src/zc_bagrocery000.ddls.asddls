@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZBAGROCERY'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_BAGROCERY000
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_BAGROCERY
  association [1..1] to ZR_BAGROCERY as _BaseEntity on $projection.ID = _BaseEntity.ID
{
  @Endusertext: {
    Label: 'UUID', 
    Quickinfo: '16 Byte UUID in 16 Bytes (Raw Format)'
  }
  key ID,
  Product,
  Category,
  Brand,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  Price,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  Quantity,
  Purchasedate,
  Expirationdate,
  @Endusertext: {
    Label: 'Truth Value', 
    Quickinfo: 'Truth Value: True/False'
  }
  Expired,
  Rating,
  Note,
  @Endusertext: {
    Label: 'Created By', 
    Quickinfo: 'Created By User'
  }
  @Semantics: {
    User.Createdby: true
  }
  Createdby,
  @Endusertext: {
    Label: 'Time Stamp Long Form', 
    Quickinfo: 'UTC time stamp in long form (YYYYMMDDhhmmss,mmmuuun)'
  }
  Createdat,
  @Endusertext: {
    Label: 'Changed By', 
    Quickinfo: 'Last Changed By User'
  }
  @Semantics: {
    User.Lastchangedby: true
  }
  Lastchangedby,
  @Endusertext: {
    Label: 'Changed On', 
    Quickinfo: 'Last Change Date Time'
  }
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchangedat,
  @Endusertext: {
    Label: 'Changed On', 
    Quickinfo: 'Local Instance Last Change Date Time'
  }
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchanged,
  _BaseEntity
}
