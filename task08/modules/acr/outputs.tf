output "acr_id" {
  description = "The ID of the Azure Container Registry."
  value       = azurerm_container_registry.registry.id
}

output "acr_login_server" {
  description = "The login server of the Azure Container Registry."
  value       = azurerm_container_registry.registry.login_server
}

output "acr_admin_username" {
  description = "The admin username for the Azure Container Registry."
  value       = azurerm_container_registry.registry.admin_username
  sensitive   = true
}

output "acr_admin_password" {
  description = "The admin password for the Azure Container Registry."
  value       = azurerm_container_registry.registry.admin_password
  sensitive   = true
}
