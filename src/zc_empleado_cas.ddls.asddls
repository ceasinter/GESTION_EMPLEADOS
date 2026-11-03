@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Consumption Empleado'
@Metadata.ignorePropagatedAnnotations: true
//@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity zc_empleado_cas
  provider contract transactional_query
  as projection on ZR_EMPLEADO_CAS as Empleado
{
  key EmployeeUuid,
//      @Search.defaultSearchElement: true
      Name,
      Department,
      ManagerId,
      Status,
      @Semantics.systemDateTime.createdAt: true
      CreatedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      ChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalChangedAt
}
