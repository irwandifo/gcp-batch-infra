# --------------------------------------------------
# GCP Config
# --------------------------------------------------
project_id           = "gcp-project-id"
region               = "gcp-region"
zone                 = "gcp-zone"
service_account_name = "service_account"

# --------------------------------------------------
# GCS Config
# --------------------------------------------------
bucket_name        = "gcs-bucket-name"
gcs_lake_zone_list = ["bronze/dataset", "silver/dataset"]

# --------------------------------------------------
# Cloud SQL Config
# --------------------------------------------------
cloud_sql_name    = "cloud-sql-instance-name"
cloud_sql_machine = "cloud-sql-instance-machine"
cloud_sql_disk    = 15 #GB
pg_database_name  = "database_name"

# --------------------------------------------------
# Compute Engine Config
# --------------------------------------------------
vm_name    = "compute-engine-name"
vm_machine = "compute-engine-machine"
vm_disk    = 15 #GB

# --------------------------------------------------
# BigQuery Config
# --------------------------------------------------
bigquery_dataset_list = ["dataset_silver", "dataset_gold"]
