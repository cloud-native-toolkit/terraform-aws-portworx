
# locals {
#   portworx_config = {
#     cluster_id = var.px_cluster_id
#     user_id = var.px_user_id
#     osb_endpoint = var.px_osb_endpoint
#     type = "essentials"
#     enable_encryption = false
#   }
# }

module "aws_portworx" {
  source = "./module"

  region                = var.region
  access_key            = var.access_key
  secret_key            = var.secret_key
  cluster_config_file   = module.dev_cluster.platform.kubeconfig
  #portworx_config       = local.portworx_config
  #portworx_spec_file = var.portworx_spec_file
  portworx_spec = var.portworx_spec

}
