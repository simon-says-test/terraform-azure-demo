# data "azurerm_key_vault" "keyVault" {
#     name = "kv-demo-secrets"
#     resource_group_name = "rq-qiw-terraform"
# }

# output "vault_uri" {
#   value = data.azurerm_key_vault.keys.vault_uri
# }