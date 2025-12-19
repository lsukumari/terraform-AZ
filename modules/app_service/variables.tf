variable "name" {
  description = "App Service name"
  type        = string
}

variable "resource_group_name" {
  description = "Existing Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "app_service_plan_id" {
  description = "ID of the App Service Plan"
  type        = string
}

variable "container_image" {
  description = "Container image (ACR path)"
  type        = string
}

variable "container_port" {
  description = "Port exposed by container"
  type        = string
}

variable "acr_login_server" {
  description = "ACR login server (example: devacr15.azurecr.io)"
  type        = string
}

variable "client_id" {
  description = "Service Principal Client ID"
  type        = string
}

variable "client_secret" {
  description = "Service Principal Secret"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags for the resource"
  type        = map(string)
  default     = {}
}
