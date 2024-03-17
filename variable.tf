
variable "gcp_pg_name_primary" {
  type    = string
  default = "postgresql-primary"
}


variable "gcp_pg_database_version" {
  type    = string
  default = "POSTGRES_15"
}

variable "gcp_pg_region_primary" {
  type    = string
  default = "us-central1"
}

variable "project" {
  description = "The project ID where all resources will be launched."
  type        = string
  default     = "mytesting-400910"
}


variable "gcp_pg_tier" {
  type    = string
  default = "db-f1-micro"
}

variable "database_max_connections" {
  default   = 100
  sensitive = true
}

variable "database_flags" {
  description = "The database flags for the Cloud SQL instance. See [more details](https://cloud.google.com/sql/docs/postgres/flags)"
  type = list(object({
    name  = string
    value = string
  }))
  default = [
    {
      name  = "cloudsql.iam_authentication"
      value = "on"
    },
    {
      name  = "max_connections"
      value = 100
    }
  ]
}