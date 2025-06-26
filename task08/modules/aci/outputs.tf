output "aci_id" {
  description = "The ID of the Azure Container Instance group."
  value       = azurerm_container_group.aci_instance.id
}

output "aci_fqdn" {
  description = "The FQDN of the Azure Container Instance."
  value       = azurerm_container_group.aci_instance.fqdn
}

output "aci_ip_address" {
  description = "The public IP address of the Azure Container Instance."
  value       = azurerm_container_group.aci_instance.ip_address
}
