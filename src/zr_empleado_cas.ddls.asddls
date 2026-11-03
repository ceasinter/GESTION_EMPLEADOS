@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Root Empleado'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_EMPLEADO_CAS
  as select from zempleado_cas_a as Empleado
{
  key employee_uuid    as EmployeeUuid,
      name             as Name,
      department       as Department,
      manager_id       as ManagerId,
      status           as Status,
      @Semantics.systemDateTime.createdAt: true
      created_at       as CreatedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at       as ChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_changed_at as LocalChangedAt
}
