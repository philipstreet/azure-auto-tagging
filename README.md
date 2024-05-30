# Azure Auto-Tagging

This repo provides examples of using two auto-tagging frameworks for deploying resources into Azure; terratag and yor. The frameworks automatically add git metadata tags to the resources being deployed - without commit those changes to the git repo - to facilitate traceability of those resources in the Azure Portal. Essentially, they provide answers to the questions, "What, where, when deployed these resources?".

The repo deploys an Azure Storage Account in three different ways:

- using a resource block
- using a module block, where the source is defined in a local "modules" folder
- using a module block, where the source is from the Terraform registry

This will provide proof that the frameworks can handle the three different approaches to deploying a resource.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.105.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_local_storage_account"></a> [local\_storage\_account](#module\_local\_storage\_account) | ./modules/test | n/a |
| <a name="module_naming"></a> [naming](#module\_naming) | Azure/naming/azurerm | >= 0.4.1 |
| <a name="module_remote_storage_account"></a> [remote\_storage\_account](#module\_remote\_storage\_account) | Azure/avm-res-storage-storageaccount/azurerm | >= 0.1.1 |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Production Environment. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location/region where the IP Groups will be created. | `string` | n/a | yes |