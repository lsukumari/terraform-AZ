variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID of Azure AD"
  type        = string
}

variable "client_id" {
  description = "Service Principal client ID"
  type        = string
}

variable "client_secret" {
  description = "Service Principal secret"
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "Existing resource group"
  type        = string
}

variable "app_service_plan_name" {
  description = "App Service Plan name"
  type        = string
}

variable "app_service_name" {
  description = "App Service name"
  type        = string
}

variable "sku_tier" {
  description = "App Service Plan SKU tier"
  type        = string
}

variable "sku_size" {
  description = "App Service Plan SKU size"
  type        = string
}

variable "container_image" {
  description = "Container image path"
  type        = string
}

variable "container_port" {
  description = "Container port"
  type        = string
}

variable "acr_login_server" {
  description = "ACR login server"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
}
