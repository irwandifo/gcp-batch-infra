terraform {
  backend "gcs" {
    bucket = "project-k-tfstate"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.13.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "storage" {
  source = "./modules/storage"

  bucket_name = var.lakehouse
  project_id  = var.project_id
  region      = var.region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  region      = var.region
}

module "sql" {
  source = "./modules/sql"

  instance_name = var.cloud_sql_name
  project_id    = var.project_id
  region        = var.region
  machine_type  = var.cloud_sql_machine
  disk_size     = var.cloud_sql_disk
  vpc_id        = module.vpc.vpc_id
}

module "compute" {
  source = "./modules/compute"

  instance_name    = var.vm_name
  zone             = var.zone
  machine_type     = var.vm_machine
  disk_size        = var.vm_disk
  service_account  = var.service_account
  subnet_self_link = module.vpc.subnet_self_link
}
