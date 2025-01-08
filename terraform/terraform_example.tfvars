# --------------------------------------------------
# GCP Config
# --------------------------------------------------
project_id      = "gcp-project-id"
region          = "gcp-region"
zone            = "gcp-zone"
service_account = "service_account@gcp-project-id.iam.gserviceaccount.com"

# --------------------------------------------------
# GCS Config
# --------------------------------------------------
lakehouse = "gcs-bucket-name"

# --------------------------------------------------
# VPC Config
# --------------------------------------------------
vpc_name    = "vpc-name"
subnet_name = "subnet-name"

# --------------------------------------------------
# Cloud SQL Config
# --------------------------------------------------
cloud_sql_name    = "cloud-sql-instance-name"
cloud_sql_machine = "cloud-sql-instance-machine"
cloud_sql_disk    = 15 #GB

# --------------------------------------------------
# Compute Engine Config
# --------------------------------------------------
vm_name    = "compute-engine-name"
vm_machine = "compute-engine-machine"
vm_disk    = 15 #GB