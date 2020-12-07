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

resource "azurerm_resource_group" "rg" {
  name     = "rg-demo-can-delete"
  location = "uksouth"
}

resource "azurerm_resource_group" "rg" {
  name     = "${data.azurerm_key_vault_secret.resource-group-name.value}"
  location = "uksouth"
}

data "azurerm_key_vault_secret" "resource-group-name" {
    name = "labuser"
    vault_uri = "https://kv-demo-secrets.vault.azure.net/"
}