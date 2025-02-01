module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "vnet" {
  source       = "./modules/vnet"
  vnet_name    = var.vnet_name
  location     = var.location
  rg_name      = module.resource_group.rg_name
  address_space = ["10.0.0.0/16"]
  
  subnets = {
    "subnet-1" = "10.0.1.0/24"
    "subnet-2" = "10.0.2.0/24"
    "subnet-3" = "10.0.3.0/24"
  }
}

module "vm" {
  source     = "./modules/vm"
  vm_name    = var.vm_name
  location   = var.location
  rg_name    = module.resource_group.rg_name
  vm_size    = var.vm_size
  admin_user = var.admin_user
  ssh_key    = var.ssh_key
  subnet_id  = module.vnet.subnet_ids["subnet-1"]
}
