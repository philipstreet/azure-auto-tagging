module "naming" {
  source  = "Azure/naming/azurerm"
  version = ">= 0.4.1"
  suffix  = ["tagpoc"]
}

resource "azurerm_resource_group" "this" {
  location = var.location
  name     = module.naming.resource_group.name_unique
  tags     = local.tags
}

resource "azurerm_storage_account" "this" {
  account_replication_type      = "LRS"
  account_tier                  = "Standard"
  name                          = "${module.naming.storage_account.name_unique}001"
  location                      = azurerm_resource_group.this.location
  resource_group_name           = azurerm_resource_group.this.name
  enable_https_traffic_only     = true
  public_network_access_enabled = true
  min_tls_version               = "TLS1_2"
  tags                          = local.tags
}

module "local_storage_account" {
  source              = "./modules/test"
  name                = "${module.naming.storage_account.name_unique}002"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  tags                = local.tags
}

module "remote_storage_account" {
  source                        = "Azure/avm-res-storage-storageaccount/azurerm"
  version                       = ">= 0.1.1"
  name                          = "${module.naming.storage_account.name_unique}003"
  resource_group_name           = azurerm_resource_group.this.name
  location                      = azurerm_resource_group.this.location
  enable_https_traffic_only     = true
  public_network_access_enabled = true
  shared_access_key_enabled     = true
  account_replication_type      = "LRS"
  network_rules                 = null
  tags                          = local.tags
}
