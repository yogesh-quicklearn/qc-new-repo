provider "google" {
  project = "booming-pride-452614-m5"
  region  = "us-central1"
}

resource "google_compute_network" "vpc_network" {
  name                    = "myvpc"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "mysubnet"
  ip_cidr_range = "15.1.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}
