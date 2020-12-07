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
  key_vault_id = "https://kv-demo-secrets.vault.azure.net/"
}

resource "azurerm_resource_group" "rg2" {
  name     = "${data.azurerm_key_vault_secret.rgName.value}"
  location = "uksouth"
}

# data "azurerm_key_vault" "key-vault" {
#     name = "kv-demo-secrets"
#     resource_group_name = "rq-qiw-terraform"
# }