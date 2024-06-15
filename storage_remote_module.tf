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
  tags = merge(local.tags, {
    git_commit           = "59ddb922d34bae26b21e998b9be929b665dbb7bc"
    git_file             = "storage_remote_module.tf"
    git_last_modified_at = "2024-06-15 13:10:19"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "remote_storage_account"
    yor_trace            = "ccf2d4de-4738-4f98-a870-9c0447fa6374"
  })
}
