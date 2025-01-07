# --------------------------------------------------
# GCP Variables
# --------------------------------------------------
variable "project_id" {
  sensitive   = true
  description = "GCP project id."
  type        = string
}

variable "region" {
  description = "GCP region."
  type        = string
}

variable "zone" {
  description = "GCP zone."
  type        = string
}

variable "service_account" {
  sensitive   = true
  description = "GCP service account."
  type        = string
}

# --------------------------------------------------
# GCS Variables
# --------------------------------------------------
variable "lakehouse" {
  description = "GCS bucket name for data lakehouse."
  type        = string
}

# --------------------------------------------------
# VPC Variables
# --------------------------------------------------
variable "vpc_name" {
  description = "VPC name."
  type        = string
}

variable "subnet_name" {
  description = "Subnet name."
  type        = string
}

# --------------------------------------------------
# Cloud SQL Variables
# --------------------------------------------------
variable "cloud_sql_name" {
  description = "Cloud SQL instance name."
  type        = string
}

variable "cloud_sql_machine" {
  description = "Cloud SQL instance machine type."
  type        = string
}

variable "cloud_sql_disk" {
  description = "Cloud SQL instance disk size."
  type        = number
}

# --------------------------------------------------
# Compute Engine Variables
# --------------------------------------------------
variable "vm_name" {
  description = "Compute Engine instance name."
  type        = string
}

variable "vm_machine" {
  description = "Compute Engine instance machine type."
  type        = string
}

variable "vm_disk" {
  description = "Compute Engine instance disk size."
  type        = number
}
