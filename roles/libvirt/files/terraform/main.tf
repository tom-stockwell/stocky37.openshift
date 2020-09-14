module "masters" {
  source       = "./modules/node"

  node_type    = "master"
  fqdn         = var.fqdn
  names        = var.master_names
  macs         = var.master_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.master_image
  memory       = var.master_memory
  vcpu         = var.master_vcpu
}

module "workers" {
  source       = "./modules/node"

  node_type    = "worker"
  fqdn         = var.fqdn
  names        = var.worker_names
  macs         = var.worker_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.worker_image
  memory       = var.worker_memory
  vcpu         = var.worker_vcpu
}

module "bootstraps" {
  source       = "./modules/node"

  node_type    = "bootstrap"
  fqdn         = var.fqdn
  names        = var.bootstrap_names
  macs         = var.bootstrap_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.bootstrap_image
  memory       = var.bootstrap_memory
  vcpu         = var.bootstrap_vcpu
}

module "loadbalancers" {
  source      = "./modules/node"

  node_type    = "loadbalancer"
  fqdn         = var.fqdn
  names        = var.loadbalancer_names
  macs         = var.loadbalancer_macs
  network_name = var.network_name
  storage_pool = var.storage_pool
  image_source = var.loadbalancer_image
  memory       = var.loadbalancer_memory
  vcpu         = var.loadbalancer_vcpu
}