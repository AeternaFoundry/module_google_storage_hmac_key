output "storage_hmac_keys_id" {
  description = "Map of id values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no id are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_hmac_keys_access_id" {
  description = "Map of access_id values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no access_id are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.access_id if v.access_id != null && length(v.access_id) > 0 }
}
output "storage_hmac_keys_deletion_policy" {
  description = "Map of deletion_policy values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_hmac_keys_project" {
  description = "Map of project values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no project are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.project if v.project != null && length(v.project) > 0 }
}
output "storage_hmac_keys_secret" {
  description = "Map of secret values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no secret are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.secret if v.secret != null && length(v.secret) > 0 }
  sensitive   = true
}
output "storage_hmac_keys_service_account_email" {
  description = "Map of service_account_email values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no service_account_email are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.service_account_email if v.service_account_email != null && length(v.service_account_email) > 0 }
}
output "storage_hmac_keys_state" {
  description = "Map of state values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no state are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.state if v.state != null && length(v.state) > 0 }
}
output "storage_hmac_keys_time_created" {
  description = "Map of time_created values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no time_created are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "storage_hmac_keys_updated" {
  description = "Map of updated values across all storage_hmac_keys, keyed the same as var.storage_hmac_keys except keys with no updated are omitted"
  value       = { for k, v in google_storage_hmac_key.storage_hmac_keys : k => v.updated if v.updated != null && length(v.updated) > 0 }
}

