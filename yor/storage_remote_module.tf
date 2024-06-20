module "remote_storage_account" {
  source                        = "Azure/avm-res-storage-storageaccount/azurerm"
  version                       = ">= 0.1.1"
  name                          = "${module.naming.storage_account.name_unique}003"
  resource_group_name           = azurerm_resource_group.this.name
  location                      = azurerm_resource_group.this.location
  enable_https_traffic_only     = true
  public_network_access_enabled = true
  shared_access_key_enabled     = true
  #cross_tenant_replication_enabled = false
  account_replication_type = "LRS"
  network_rules            = null
  tags = merge(local.tags, {
    git_commit           = "b9fc4865e7418ac39664a850e09c995973231f16"
    git_file             = "yor/storage_remote_module.tf"
    git_last_modified_at = "2024-06-19 16:46:50"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "remote_storage_account"
    yor_trace            = "5fe73944-50a9-46df-93b7-388409f561cc"
  })
}
