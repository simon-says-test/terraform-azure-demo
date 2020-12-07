terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "rg-demo-can-delete"
  location = "uksouth"
}

data "azurerm_key_vault_secret" "rgName" {
  name         = "resource-group-name"
  key_vault_id = ata.azurerm_key_vault.keys.id
}

resource "azurerm_resource_group" "rg2" {
  name     = data.azurerm_key_vault_secret.rgName.value
  location = "uksouth"
}