output "cloud_inventory_sync_configs_id" {
  description = "Map of id values across all cloud_inventory_sync_configs, keyed the same as var.cloud_inventory_sync_configs except keys with no id are omitted"
  value       = { for k, v in datadog_cloud_inventory_sync_config.cloud_inventory_sync_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_inventory_sync_configs_aws" {
  description = "Map of aws values across all cloud_inventory_sync_configs, keyed the same as var.cloud_inventory_sync_configs except keys with no aws are omitted"
  value       = { for k, v in datadog_cloud_inventory_sync_config.cloud_inventory_sync_configs : k => v.aws if v.aws != null && length(v.aws) > 0 }
}
output "cloud_inventory_sync_configs_azure" {
  description = "Map of azure values across all cloud_inventory_sync_configs, keyed the same as var.cloud_inventory_sync_configs except keys with no azure are omitted"
  value       = { for k, v in datadog_cloud_inventory_sync_config.cloud_inventory_sync_configs : k => v.azure if v.azure != null && length(v.azure) > 0 }
}
output "cloud_inventory_sync_configs_cloud_provider" {
  description = "Map of cloud_provider values across all cloud_inventory_sync_configs, keyed the same as var.cloud_inventory_sync_configs except keys with no cloud_provider are omitted"
  value       = { for k, v in datadog_cloud_inventory_sync_config.cloud_inventory_sync_configs : k => v.cloud_provider if v.cloud_provider != null && length(v.cloud_provider) > 0 }
}
output "cloud_inventory_sync_configs_gcp" {
  description = "Map of gcp values across all cloud_inventory_sync_configs, keyed the same as var.cloud_inventory_sync_configs except keys with no gcp are omitted"
  value       = { for k, v in datadog_cloud_inventory_sync_config.cloud_inventory_sync_configs : k => v.gcp if v.gcp != null && length(v.gcp) > 0 }
}

