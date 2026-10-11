variable "cloud_project_volumes_lookup" {
  description = <<EOT
Map of cloud_project_volumes_lookup, attributes below
Required:
    - region_name
    - service_name
EOT

  type = map(object({
    region_name  = string
    service_name = string
  }))
}

