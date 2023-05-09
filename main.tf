# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
terraform{
    backend "azurerm" {
    resource_group_name = "Devops-B27"
    storage_account_name = "devopsb27terraformproduc"
    container_name = "tfstate"
    key = "devopsb27-git-class.tfstate"
   # access_key = "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
    }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   # subscription_id="aaaaaaaaaaaaaaaaaaaa"
   # client_id="bbbbbbbbbbbbbbbbbbbb"
   # client_secret="cccccccccccccccccccccccccc"
   # tenant_id="ddddddddddddddddddd"
  features {}
}