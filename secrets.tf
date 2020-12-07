data "azurerm_key_vault_secret" "rgName" {
  name         = "resource-group-name"
  key_vault_id = data.azurerm_key_vault.keyVault.id
}