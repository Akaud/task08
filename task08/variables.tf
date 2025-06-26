variable "redis_capacity" {
  type        = string
  description = "Capacity of Redis"
}

variable "redis_sku" {
  type        = string
  description = "SKU of Redis"
}

variable "redis_sku_family" {
  type        = string
  description = "SKU family of Redis"
}

variable "keyvault_sku" {
  type        = string
  description = "SKU of keyvault"
}

variable "redis_primary_key" {
  type        = string
  description = "Primary key of redis"
}

variable "redis_hostname" {
  type        = string
  description = "Hostname of redis"
}

variable "acr_sku" {
  type        = string
  description = "SKU of ACR"
}

variable "image_name" {
  type        = string
  description = "Name of Docker image"
}

variable "aci_sku" {
  type        = string
  description = "SKU of ACI"
}

variable "aks_node_pool_name" {
  type        = string
  description = "Default node pool name"
}

variable "aks_node_pool_count" {
  type        = string
  description = "Default node pool instance count"
}

variable "aks_node_pool_size" {
  type        = string
  description = "Default node pool instance node size"
}

variable "aks_node_pool_disk_type" {
  type        = string
  description = "Default node pool os disk type"
}

variable "tags" {
  description = "A map of tags to assign to all resources."
  type        = map(string)
}

variable "resources_name_prefix" {
  type        = string
  description = "Name prefix for resources"
}

variable "git_pat" {
  type        = string
  description = "GIT Personal Access Token that will be used as a context_access_token property for a Container Registry Task"
  sensitive   = true
}

variable "location" {
  type        = string
  description = "The Azure region where all resources will be deployed."
}

variable "aci_dns_label" {
  type        = string
  description = "DNS name label for the ACI public IP. Must be globally unique."
}