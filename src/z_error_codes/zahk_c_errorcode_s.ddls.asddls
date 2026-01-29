@EndUserText.label: 'Maintain Error Code Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@UI: {
  headerInfo: {
    typeName: 'ErrorCodeAll'
  }
}
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZAHK_C_ErrorCode_S
  provider contract TRANSACTIONAL_QUERY
  as projection on ZAHK_I_ErrorCode_S
{
  @UI.facet: [ {
    id: 'ZAHK_I_ErrorCode', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'Error Code', 
    position: 1 , 
    targetElement: '_ErrorCode'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key SingletonID,
  @UI.hidden: true
  LastChangedAtMax,
  _ErrorCode : redirected to composition child ZAHK_C_ErrorCode
}
