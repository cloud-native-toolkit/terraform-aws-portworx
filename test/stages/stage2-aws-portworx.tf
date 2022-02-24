
locals {
  portworx_essentials = {
    enable = true
    cluster_id = var.px_cluster_id
    user_id = var.px_user_id
    osb_endpoint = var.px_osb_endpoint
  }
}

module "aws_portworx" {
  source = "./module"

  region                = var.region
  access_key            = var.access_key
  secret_key            = var.secret_key
  cluster_config_file   = module.dev_cluster.platform.kubeconfig
  portworx_essentials   = local.portworx_essentials
  
}