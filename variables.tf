variable "storage_hmac_keys" {
  description = <<EOT
Map of storage_hmac_keys, attributes below
Required:
    - service_account_email
Optional:
    - deletion_policy
    - project
    - state
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    service_account_email = string
    deletion_policy       = optional(string)
    project               = optional(string)
    state                 = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

