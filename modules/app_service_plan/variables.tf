variable "name" {
  description = "Name of the App Service Plan"
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

variable "sku_tier" {
  description = "App Service Plan SKU tier"
  type        = string
}

variable "sku_size" {
  description = "App Service Plan SKU size"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource"
  type        = map(string)
  default     = {}
}
