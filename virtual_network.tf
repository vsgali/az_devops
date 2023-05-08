# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "vnet1"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  address_space       = ["10.27.0.0/16"]
}

resource "azurerm_subnet" "subnet-1" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name =  azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.27.1.0/24"]
}

resource "azurerm_subnet" "subnet-2" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.27.2.0/24"]
}

resource "azurerm_subnet" "subnet-3" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name =  azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.27.3.0/24"]
}

pradeep