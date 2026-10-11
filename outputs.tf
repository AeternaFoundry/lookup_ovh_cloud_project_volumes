output "cloud_project_volumes_lookup_region_name" {
  description = "Map of region_name values across all cloud_project_volumes_lookup, keyed the same as var.cloud_project_volumes_lookup except keys with no region_name are omitted"
  value       = { for k, v in data.ovh_cloud_project_volumes.cloud_project_volumes_lookup : k => v.region_name if v.region_name != null && length(v.region_name) > 0 }
}
output "cloud_project_volumes_lookup_service_name" {
  description = "Map of service_name values across all cloud_project_volumes_lookup, keyed the same as var.cloud_project_volumes_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_project_volumes.cloud_project_volumes_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "cloud_project_volumes_lookup_volumes" {
  description = "Map of volumes values across all cloud_project_volumes_lookup, keyed the same as var.cloud_project_volumes_lookup except keys with no volumes are omitted"
  value       = { for k, v in data.ovh_cloud_project_volumes.cloud_project_volumes_lookup : k => v.volumes if v.volumes != null && length(v.volumes) > 0 }
}

