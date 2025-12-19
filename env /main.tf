# Get existing RG (terraform-rg)
data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

module "app_service_plan" {
  source = "../../modules/app_service_plan"

  name                = var.app_service_plan_name
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location

  sku_tier = var.sku_tier
  sku_size = var.sku_size
  tags     = var.tags
}

module "app_service" {
  source = "../../modules/app_service"

  name                = var.app_service_name
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location

  app_service_plan_id = module.app_service_plan.id

  container_image  = var.container_image
  container_port   = var.container_port
  acr_login_server = var.acr_login_server

  client_id     = var.client_id
  client_secret = var.client_secret

  tags = var.tags
}

output "app_url" {
  description = "Public URL of App Service"
  value       = module.app_service.url
}
