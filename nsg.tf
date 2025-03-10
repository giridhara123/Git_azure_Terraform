
#nsg for east us
resource "azurerm_network_security_group" "nsg1" {
  name                = "${azurerm_resource_group.rg1.name}-nsg1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name



  tags = {
    environment = "Production"
    project     = "Alpha"
  }
}
#nsg rules for nsg1 - inbound

resource "azurerm_network_security_rule" "allow-all-traffic" {
  name                        = "tcp22"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}