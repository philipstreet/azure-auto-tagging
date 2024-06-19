variable "tags" {
  type    = map(string)
  default = null
}

variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}

variable "enable_https_traffic_only" {
  type    = bool
  default = true
}

variable "cross_tenant_replication_enabled" {
  type    = bool
  default = false
}