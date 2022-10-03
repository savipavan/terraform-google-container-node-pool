
data "google_service_account" "myaccount" {
  account_id = "service-account-id"
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "my-node-pool"
  cluster    = data.google_container_cluster.my_cluster.id
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = data.google_service_account.myaccount.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}