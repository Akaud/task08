resource "azurerm_redis_cache" "main" {
  name                 = var.redis_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  capacity             = var.redis_capacity
  family               = var.redis_sku_family
  sku_name             = var.redis_sku
  tags                 = var.tags
  non_ssl_port_enabled = false
  minimum_tls_version  = 1.2
}

resource "azurerm_key_vault_secret" "redis_hostname" {
  name         = var.redis_hostname
  value        = azurerm_redis_cache.main.hostname
  key_vault_id = var.key_vault_id
  content_type = "text/plain"
  tags         = var.tags
}

resource "azurerm_key_vault_secret" "redis_primary_key" {
  name         = var.redis_primary_key
  value        = azurerm_redis_cache.main.primary_access_key
  key_vault_id = var.key_vault_id
  content_type = "text/plain"
  tags         = var.tags
}