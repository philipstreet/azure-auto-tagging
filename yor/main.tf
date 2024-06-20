module "naming" {
  source  = "Azure/naming/azurerm"
  version = ">= 0.4.1"
  suffix  = ["tagpoc"]
}

resource "azurerm_resource_group" "this" {
  location = var.location
  name     = module.naming.resource_group.name_unique
  tags = merge(local.tags, {
    git_commit           = "b9fc4865e7418ac39664a850e09c995973231f16"
    git_file             = "yor/main.tf"
    git_last_modified_at = "2024-06-19 16:46:50"
    git_last_modified_by = "philip.street@kainos.com"
    git_modifiers        = "philip.street"
    git_org              = "philipstreet"
    git_repo             = "azure-auto-tagging"
    yor_name             = "this"
    yor_trace            = "e34ae5ed-a49e-44cf-9321-bedeff924ecc"
  })
}
