resource "google_storage_hmac_key" "storage_hmac_keys" {
  for_each = var.storage_hmac_keys

  service_account_email = each.value.service_account_email
  deletion_policy       = each.value.deletion_policy
  project               = each.value.project
  state                 = each.value.state

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

