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

# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id="df387313-b5f2-429f-8227-e142fc8c6b7b"
    client_id="17c9ba3b-282e-4e2a-b4ae-608c009969ef"
    client_secret="EaP8Q~Vg84DRUCeIMvrx9tVgDVhxnPxknEmVgapU"
    tenant_id="ffab9f59-99fa-4165-96f0-2a6e4b9c46c5"
  features {}
}