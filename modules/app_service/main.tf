resource "azurerm_app_service" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id

  site_config {
    linux_fx_version = "DOCKER|${var.container_image}"
  }

  app_settings = {
    WEBSITES_PORT                   = var.container_port
    DOCKER_REGISTRY_SERVER_URL      = "https://${var.acr_login_server}"
    DOCKER_REGISTRY_SERVER_USERNAME = var.client_id
    DOCKER_REGISTRY_SERVER_PASSWORD = var.client_secret
  }

  tags = var.tags
}
