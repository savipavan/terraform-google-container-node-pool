data "google_container_cluster" "my_cluster" {
  name     = var.cluster_name
  location = var.cluster_location
}

output "endpoint" {
  value = data.google_container_cluster.my_cluster.endpoint
}

output "node_config" {
  value = data.google_container_cluster.my_cluster.node_config
}

output "node_pools" {
  value = data.google_container_cluster.my_cluster.node_pool
}