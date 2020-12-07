data "azurerm_key_vault" "keyVault" {
    name = "kv-demo-secrets"
    resource_group_name = "rq-qiw-terraform"
}