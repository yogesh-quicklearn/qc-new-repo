provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
