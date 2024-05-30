variable "default_subscription_id" {
  type        = string
  description = "ID of default subscription to which this deployment should be made."
}
variable "environment" {
  type        = string
  description = "Production Environment."
}

variable "location" {
  type        = string
  description = "The location/region where the IP Groups will be created."
}
