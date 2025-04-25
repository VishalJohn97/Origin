terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "e23fc5ae-2b41-49dc-9a20-55a992e54a4d"
  client_secret   = var.client_secret
  tenant_id       = "4e2b25e8-3603-4cbe-8d07-845a1fe2f257"
  subscription_id = "ced38b9f-6b36-45f6-bb3d-9af52b4ad8d6"
}