variable "cloud_inventory_sync_configs" {
  description = <<EOT
Map of cloud_inventory_sync_configs, attributes below
Required:
    - cloud_provider
Optional:
    - aws (block):
        - aws_account_id (optional)
        - destination_bucket_name (optional)
        - destination_bucket_region (optional)
        - destination_prefix (optional)
    - azure (block):
        - client_id (optional)
        - container (optional)
        - resource_group (optional)
        - storage_account (optional)
        - subscription_id (optional)
        - tenant_id (optional)
    - gcp (block):
        - destination_bucket_name (optional)
        - project_id (optional)
        - service_account_email (optional)
        - source_bucket_name (optional)
EOT

  type = map(object({
    cloud_provider = string
    aws = optional(list(object({
      aws_account_id            = optional(string)
      destination_bucket_name   = optional(string)
      destination_bucket_region = optional(string)
      destination_prefix        = optional(string)
    })))
    azure = optional(list(object({
      client_id       = optional(string)
      container       = optional(string)
      resource_group  = optional(string)
      storage_account = optional(string)
      subscription_id = optional(string)
      tenant_id       = optional(string)
    })))
    gcp = optional(list(object({
      destination_bucket_name = optional(string)
      project_id              = optional(string)
      service_account_email   = optional(string)
      source_bucket_name      = optional(string)
    })))
  }))
}

