resource "azurerm_virtual_network" "vnet1" {
  name                = "${azurerm_resource_group.rg1.name}-vnet1"
  resource_group_name = azurerm_resource_group.rg1.name #it is implicit dependecies
  location            = azurerm_resource_group.rg1.location
  address_space       = var.vnet1_address_space
  tags = {
    Environment = var.environment
    project     = var.project
  }
}

resource "azurerm_virtual_network" "vnet2" {
  name                = "${azurerm_resource_group.rg1.name}-vnet2"
  resource_group_name = azurerm_resource_group.rg1.name #it is implicit dependecies
  location            = "westus"
  address_space       = var.vnet2_address_space
  tags = {
    Environment = var.environment
    project     = var.project
  }
}


