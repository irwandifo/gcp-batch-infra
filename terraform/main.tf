terraform {
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

module "service_account" {
  source = "./modules/service_account"

  project_id           = var.project_id
  service_account_name = var.service_account_name
}

module "storage" {
  source = "./modules/storage"

  bucket_name    = var.bucket_name
  project_id     = var.project_id
  region         = var.region
  lake_zone_list = var.gcs_lake_zone_list
}

module "vpc" {
  source = "./modules/vpc"

  project_id = var.project_id
  region     = var.region
}

module "sql" {
  source = "./modules/sql"

  instance_name = var.cloud_sql_name
  project_id    = var.project_id
  region        = var.region
  machine_type  = var.cloud_sql_machine
  disk_size     = var.cloud_sql_disk
  vpc_id        = module.vpc.vpc_id
  database_name = var.pg_database_name
}

module "compute" {
  source = "./modules/compute"

  instance_name    = var.vm_name
  zone             = var.zone
  machine_type     = var.vm_machine
  disk_size        = var.vm_disk
  service_account  = module.service_account.service_account_email
  subnet_self_link = module.vpc.subnet_self_link
}

module "bigquery" {
  source = "./modules/bigquery"

  bigquery_dataset_list = var.bigquery_dataset_list
  project_id            = var.project_id
  region                = var.region
}
