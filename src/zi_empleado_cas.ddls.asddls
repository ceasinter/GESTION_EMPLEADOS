@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Interface Empleado'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_EMPLEADO_CAS
  provider contract transactional_interface
  as projection on ZR_EMPLEADO_CAS as Empleado
{
  key EmployeeUuid,      
      Name,
      Department,
      ManagerId,
      Status,
      CreatedAt,
      ChangedAt,
      LocalChangedAt
}
