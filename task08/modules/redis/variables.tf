variable "location" {
  type        = string
  description = "The Azure region where the Redis Cache will be deployed."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the Redis Cache will be created."
}

variable "redis_name" {
  type        = string
  description = "Name of the Azure Redis Cache instance."
}

variable "redis_capacity" {
  type        = number
  description = "Size of the Redis cache, valid values are 0 (250MB), 1 (1GB), 2 (2.5GB), 3 (6GB), 4 (13GB), 5 (26GB), 6 (53GB)."
}

variable "redis_sku" {
  type        = string
  description = "SKU of the Redis cache (e.g., 'Basic', 'Standard', 'Premium')."
}

variable "redis_sku_family" {
  type        = string
  description = "SKU family of the Redis cache (e.g., 'C' for Basic/Standard, 'P' for Premium)."
}

variable "key_vault_id" {
  type        = string
  description = "The ID of the Azure Key Vault where Redis secrets will be stored."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the Redis Cache resource."
}

variable "redis_hostname" {
  type        = string
  description = "Name of the Key Vault secret for Redis hostname."
}

variable "redis_primary_key" {
  type        = string
  description = "Name of the Key Vault secret for Redis primary key."
}