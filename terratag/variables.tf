variable "default_subscription_id" {
  type        = string
  description = "ID of default subscription to which this deployment should be made."
}

variable "environment" {
  type        = string
  description = "The environment in which the resources will be created."
}

variable "location" {
  type        = string
  description = "The location/region where the resources will be created."
}