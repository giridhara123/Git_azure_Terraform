resource "azurerm_resource_group" "rg1" {
  name     = local.rg1_name
  location = var.location
  tags = {
    Environment = var.environment
    project     = var.project
  }

}

