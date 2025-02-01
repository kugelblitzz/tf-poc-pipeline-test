variable "rg_name" {}
variable "location" {}
variable "vnet_name" {}
variable "vm_name" {}
variable "vm_size" {}
variable "admin_user" {}
variable "ssh_key" {}
variable "subscription_id" {}
variable "subnets" {
  type = map(string)
}

