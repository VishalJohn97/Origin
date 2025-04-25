terraform {
  backend "azurerm" {
    use_msi              = true                                    # Can also be set via `ARM_USE_MSI` environment variable.
    use_azuread_auth     = true                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
    tenant_id            = "4e2b25e8-3603-4cbe-8d07-845a1fe2f257"  # Can also be set via `ARM_TENANT_ID` environment variable.
    client_id            = "e23fc5ae-2b41-49dc-9a20-55a992e54a4d"  # Can also be set via `ARM_CLIENT_ID` environment variable. Not required for System Assigned Managed Identity.
    storage_account_name = "azbackendfile"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "prd-tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
