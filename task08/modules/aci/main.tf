resource "azurerm_container_group" "aci_instance" {
  name                = var.aci_name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = "Public"
  dns_name_label      = var.aci_dns_label
  os_type             = "Linux"
  tags                = var.tags
  identity {
    type = "SystemAssigned"
  }
  image_registry_credential {
    server   = var.acr_login_server
    username = var.acr_admin_username
    password = var.acr_admin_password
  }
  container {
    name   = var.aci_name
    image  = "${var.acr_login_server}/${var.image_name}:latest"
    cpu    = local.aci_sku_map[var.aci_sku].cpu
    memory = local.aci_sku_map[var.aci_sku].memory
    ports {
      port     = 8080
      protocol = "TCP"
    }
    environment_variables = {
      CREATOR        = "ACI"
      REDIS_PORT     = "6380"
      REDIS_SSL_MODE = "True"
    }
    secure_environment_variables = {
      "REDIS_URL" = var.redis_hostname
      "REDIS_PWD" = var.redis_primary_key
    }

  }
}

locals {
  aci_sku_map = {
    "Standard" = {
      cpu    = 1.0
      memory = 1.5
    }
  }
}

resource "azurerm_role_assignment" "aci_acr_pull_permission" {
  scope                = var.acr_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_container_group.aci_instance.identity[0].principal_id
}

resource "azurerm_role_assignment" "aci_kv_secret_reader" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = azurerm_container_group.aci_instance.identity[0].principal_id
  depends_on           = [azurerm_container_group.aci_instance]
}