resource_group_name   = "terraform-rg"
app_service_plan_name = "appserviceplan-dev"
app_service_name      = "webapp-dev"

sku_tier = "Free"
sku_size = "F1"

container_image = "devacr15.azurecr.io/myapp:latest"
container_port  = "80"

acr_login_server = "devacr15.azurecr.io"

tags = {
  environment = "dev"
}
