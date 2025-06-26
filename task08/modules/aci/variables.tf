variable "location" {
  type        = string
  description = "The Azure region where the ACI will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the ACI will be deployed."
}

variable "tags" {
  description = "A map of tags to assign to the ACI."
  type        = map(string)
}

variable "aci_name" {
  type        = string
  description = "Name of the Azure Container Instance."
}

variable "aci_sku" {
  type        = string
  description = "SKU for the ACI container."
}

variable "aci_dns_label" {
  type        = string
  description = "DNS name label for the ACI public IP. Must be globally unique."
}

variable "image_name" {
  type        = string
  description = "Name of the Docker image to deploy (e.g., 'my-awesome-app')."
}

variable "acr_login_server" {
  type        = string
  description = "The login server of the Azure Container Registry (e.g., 'myregistry.azurecr.io')."
}

variable "acr_id" {
  type        = string
  description = "The ID of the Azure Container Registry, used for role assignment."
}

variable "key_vault_id" {
  type        = string
  description = "The ID of the Azure Key Vault, used for accessing secrets."
}

variable "key_vault_uri" {
  type        = string
  description = "The URI of the Key Vault instance."
}

variable "redis_hostname" {
  type        = string
  description = "The name of the Redis hostname secret in Key Vault."
}
variable "redis_primary_key" {
  type        = string
  description = "The name of the Redis primary key secret in Key Vault."
}
variable "acr_admin_username" {
  type        = string
  description = "Admin username for the Azure Container Registry."
  sensitive   = true
}

variable "acr_admin_password" {
  type        = string
  description = "Admin password for the Azure Container Registry."
  sensitive   = true
}
