variable "default_subscription_id" {
  type        = string
  description = "ID of default subscription to which this deployment should be made."
}

# variable "backend_resource_group_name" {
#   type        = string
#   description = "Name of the resource group to use for the backend."
# }

# variable "backend_storage_account_name" {
#   type        = string
#   description = "Name of the storage account to use for the backend."
# }

# variable "backend_container_name" {
#   type        = string
#   description = "Name of the container to use for the backend."
# }

# variable "backend_key" {
#   type        = string
#   description = "Name of the blob to use for the backend."
# }

variable "environment" {
  type        = string
  description = "The environment in which the resources will be created."
}

variable "location" {
  type        = string
  description = "The location/region where the resources will be created."
}
