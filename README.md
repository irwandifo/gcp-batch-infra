# GCP Infrastructure for Batch Processing

Building the infrastructure for the data platform.

## Key Components

| **Category**           | **Tool/Technology**                     | **Details**                               |
|------------------------|-----------------------------------------|-------------------------------------------|
| Data Source            | Pagila                                  | Sample PostgreSQL database.               |
| Ingestion              | Kestra                                  | Manages data ingestion workflows.         |
| Storage                | Google Cloud Storage (GCS) and BigQuery | Stores data using Medallion Architecture. |
| Processing             | DuckDB and BigQuery                     | Performs data transformation.             |
| Orchestration          | Kestra                                  | Coordinates workflows and tasks.          |
| Data Quality           | Soda and dbt test                       | Ensures data accuracy and reliability.    |
| Alerting               | Sentry                                  | Sends notifications for issues.           |
| Monitoring             | Grafana                                 | Displays metrics and system status.       |
| Infrastructure-as-code | Terraform                               | Automates infrastructure management.      |
| Consumption            | BigQuery                                | Data consumption layer.                   |
| Analytics              | Looker Studio and Evidence              | Analytics and visualizations layer.       |
