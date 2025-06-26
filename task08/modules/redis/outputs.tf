output "redis_cache_id" {
  description = "The ID of the Azure Redis Cache instance."
  value       = azurerm_redis_cache.main.id
}

output "redis_hostname" {
  description = "The hostname of the Azure Redis Cache."
  value       = azurerm_redis_cache.main.hostname
}

output "redis_primary_access_key" {
  description = "The primary access key of the Azure Redis Cache (Sensitive, use Key Vault secret instead for production)."
  value       = azurerm_redis_cache.main.primary_access_key
  sensitive   = true
}

output "redis_primary_key_secret_id" {
  description = "The ID of the Key Vault secret storing the Redis primary access key."
  value       = azurerm_key_vault_secret.redis_primary_key.id
}

output "redis_hostname_secret_id" {
  description = "The ID of the Key Vault secret storing the Redis hostname."
  value       = azurerm_key_vault_secret.redis_hostname.id
}