module "naming" {
  source  = "Azure/naming/azurerm"
  version = ">= 0.4.1"
  suffix  = ["tagpoc"]
}

resource "azurerm_resource_group" "this" {
  location = var.location
  name     = module.naming.resource_group.name_unique
  tags = merge(local.tags, {
    git_commit           = "239ce6646943cea5feea5e9230d1b8a61737bc4c"
    git_file             = "yor/main.tf"
    git_last_modified_at = "2024-06-22 08:00:07"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "9375282e-c2d4-4cf3-b248-d7ae0720a7f5"
  })
}
