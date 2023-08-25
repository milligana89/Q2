terraform {
  backend "azurerm" {
    resource_group_name  = "rg-stg-acct"
    storage_account_name = "stgacct"
    container_name       = "tfstate"
    key                  = "dev-tfstate"
    use_msi              = true
    subscription_id      = "507f588f-5740-4e72-a00b-2a7538f7e2be"
    tenant_id            = "582b41ef-dd0d-4e87-bbdd-ea11dd7eda47"
  }
}