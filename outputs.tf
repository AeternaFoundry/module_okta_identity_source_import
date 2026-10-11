output "identity_source_imports_id" {
  description = "Map of id values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no id are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_source_imports_delete_group_memberships" {
  description = "Map of delete_group_memberships values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no delete_group_memberships are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.delete_group_memberships if v.delete_group_memberships != null && length(v.delete_group_memberships) > 0 }
}
output "identity_source_imports_delete_groups" {
  description = "Map of delete_groups values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no delete_groups are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.delete_groups if v.delete_groups != null && length(v.delete_groups) > 0 }
}
output "identity_source_imports_delete_users" {
  description = "Map of delete_users values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no delete_users are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.delete_users if v.delete_users != null && length(v.delete_users) > 0 }
}
output "identity_source_imports_identity_source_id" {
  description = "Map of identity_source_id values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no identity_source_id are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.identity_source_id if v.identity_source_id != null && length(v.identity_source_id) > 0 }
}
output "identity_source_imports_session_id" {
  description = "Map of session_id values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no session_id are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.session_id if v.session_id != null && length(v.session_id) > 0 }
}
output "identity_source_imports_session_status" {
  description = "Map of session_status values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no session_status are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.session_status if v.session_status != null && length(v.session_status) > 0 }
}
output "identity_source_imports_upsert_group_memberships" {
  description = "Map of upsert_group_memberships values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no upsert_group_memberships are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.upsert_group_memberships if v.upsert_group_memberships != null && length(v.upsert_group_memberships) > 0 }
}
output "identity_source_imports_upsert_groups" {
  description = "Map of upsert_groups values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no upsert_groups are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.upsert_groups if v.upsert_groups != null && length(v.upsert_groups) > 0 }
}
output "identity_source_imports_upsert_users" {
  description = "Map of upsert_users values across all identity_source_imports, keyed the same as var.identity_source_imports except keys with no upsert_users are omitted"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.upsert_users if v.upsert_users != null && length(v.upsert_users) > 0 }
}

