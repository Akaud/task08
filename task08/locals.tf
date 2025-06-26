locals {
  rg_name       = format("%s-rg", var.resources_name_prefix)
  aci_name      = format("%s-ci", var.resources_name_prefix)
  acr_name      = replace(format("%sacr", var.resources_name_prefix), "-", "")
  aks_name      = format("%s-aks", var.resources_name_prefix)
  keyvault_name = format("%s-kv", var.resources_name_prefix)
  redis_name    = format("%s-redis", var.resources_name_prefix)
}
