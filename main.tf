module "gke_cluster" {
  source         = "github.com/flameflashy/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}

terraform {
  backend "gcs" {
    bucket = "k8s-k3s-bucket"
    prefix = "terraform/state"
  }
}