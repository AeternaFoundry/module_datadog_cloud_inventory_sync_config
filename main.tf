resource "datadog_cloud_inventory_sync_config" "cloud_inventory_sync_configs" {
  for_each = var.cloud_inventory_sync_configs

  cloud_provider = each.value.cloud_provider

  dynamic "aws" {
    for_each = each.value.aws != null ? each.value.aws : []
    content {
      aws_account_id            = aws.value.aws_account_id
      destination_bucket_name   = aws.value.destination_bucket_name
      destination_bucket_region = aws.value.destination_bucket_region
      destination_prefix        = aws.value.destination_prefix
    }
  }

  dynamic "azure" {
    for_each = each.value.azure != null ? each.value.azure : []
    content {
      client_id       = azure.value.client_id
      container       = azure.value.container
      resource_group  = azure.value.resource_group
      storage_account = azure.value.storage_account
      subscription_id = azure.value.subscription_id
      tenant_id       = azure.value.tenant_id
    }
  }

  dynamic "gcp" {
    for_each = each.value.gcp != null ? each.value.gcp : []
    content {
      destination_bucket_name = gcp.value.destination_bucket_name
      project_id              = gcp.value.project_id
      service_account_email   = gcp.value.service_account_email
      source_bucket_name      = gcp.value.source_bucket_name
    }
  }
}

