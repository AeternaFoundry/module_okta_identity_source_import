output "identity_source_imports_id" {
  description = "Map of id values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.id }
}
output "identity_source_imports_delete_group_memberships" {
  description = "Map of delete_group_memberships values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.delete_group_memberships }
}
output "identity_source_imports_delete_groups" {
  description = "Map of delete_groups values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.delete_groups }
}
output "identity_source_imports_delete_users" {
  description = "Map of delete_users values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.delete_users }
}
output "identity_source_imports_identity_source_id" {
  description = "Map of identity_source_id values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.identity_source_id }
}
output "identity_source_imports_session_id" {
  description = "Map of session_id values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.session_id }
}
output "identity_source_imports_session_status" {
  description = "Map of session_status values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.session_status }
}
output "identity_source_imports_upsert_group_memberships" {
  description = "Map of upsert_group_memberships values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.upsert_group_memberships }
}
output "identity_source_imports_upsert_groups" {
  description = "Map of upsert_groups values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.upsert_groups }
}
output "identity_source_imports_upsert_users" {
  description = "Map of upsert_users values across all identity_source_imports, keyed the same as var.identity_source_imports"
  value       = { for k, v in okta_identity_source_import.identity_source_imports : k => v.upsert_users }
}

