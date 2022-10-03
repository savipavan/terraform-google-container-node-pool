module "gke" {
  source                            = "../../modules/beta-public-cluster/"

  #Mandatory variables
  name     = var.cluster_name
  location = var.cluster_location
  remove_default_node_pool = true
  initial_node_count       = 1
}