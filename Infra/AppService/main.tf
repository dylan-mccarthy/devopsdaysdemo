resource "azurerm_resource_group" "rg" {
  name     = "rg-dod-demo-${var.environment}"
  location = var.location
}

resource "azurerm_service_plan" "appserviceplan" {
    name               = "appserviceplan-dod-demo-${var.environment}"
    location           = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    os_type = "Linux"
    sku_name = "B1"
}

resource "azurerm_linux_web_app" "appservice" {
    name                = "appservice-dod-demo-${var.environment}"
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    service_plan_id = azurerm_service_plan.appserviceplan.id
    site_config {
    }
}
