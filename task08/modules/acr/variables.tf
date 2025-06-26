variable "acr_name" {
  type        = string
  description = "Name of ACR"
}

variable "acr_sku" {
  type        = string
  description = "SKU of ACR"
}

variable "image_name" {
  type        = string
  description = "Name of Docker image"
}

variable "location" {
  type        = string
  description = "The Azure region where all resources will be deployed."
}

variable "tags" {
  description = "A map of tags to assign to all resources."
  type        = map(string)
}

variable "resource_group_name" {
  type        = string
  description = "Name of resource group"
}

variable "git_pat" {
  type        = string
  description = "GIT Personal Access Token that will be used as a context_access_token property for a Container Registry Task"
  sensitive   = true
}