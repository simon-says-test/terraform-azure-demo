resource "azurerm_resource_group" "rg1" {
  name     = "rg-demo-can-delete"
  location = "uksouth"
}

resource "azurerm_resource_group" "rg2" {
  name     = data.azurerm_key_vault_secret.rgName.value
  location = "uksouth"
}