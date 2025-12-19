output "url" {
  description = "App Service default hostname"
  value       = azurerm_app_service.this.default_site_hostname
}
