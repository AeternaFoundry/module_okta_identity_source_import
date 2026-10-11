resource "okta_identity_source_import" "identity_source_imports" {
  for_each = var.identity_source_imports

  identity_source_id = each.value.identity_source_id

  dynamic "delete_group_memberships" {
    for_each = each.value.delete_group_memberships != null ? each.value.delete_group_memberships : []
    content {
      dynamic "memberships" {
        for_each = delete_group_memberships.value.memberships != null ? delete_group_memberships.value.memberships : []
        content {
          group_external_id   = memberships.value.group_external_id
          member_external_ids = memberships.value.member_external_ids
        }
      }
    }
  }

  dynamic "delete_groups" {
    for_each = each.value.delete_groups != null ? each.value.delete_groups : []
    content {
      external_ids = delete_groups.value.external_ids
    }
  }

  dynamic "delete_users" {
    for_each = each.value.delete_users != null ? each.value.delete_users : []
    content {
      entity_type = delete_users.value.entity_type
      dynamic "profiles" {
        for_each = delete_users.value.profiles != null ? delete_users.value.profiles : []
        content {
          external_id = profiles.value.external_id
        }
      }
    }
  }

  dynamic "upsert_group_memberships" {
    for_each = each.value.upsert_group_memberships != null ? each.value.upsert_group_memberships : []
    content {
      dynamic "memberships" {
        for_each = upsert_group_memberships.value.memberships != null ? upsert_group_memberships.value.memberships : []
        content {
          group_external_id   = memberships.value.group_external_id
          member_external_ids = memberships.value.member_external_ids
        }
      }
    }
  }

  dynamic "upsert_groups" {
    for_each = each.value.upsert_groups != null ? each.value.upsert_groups : []
    content {
      dynamic "profiles" {
        for_each = upsert_groups.value.profiles != null ? upsert_groups.value.profiles : []
        content {
          external_id = profiles.value.external_id
          dynamic "group_profile" {
            for_each = profiles.value.group_profile != null ? profiles.value.group_profile : []
            content {
              description  = group_profile.value.description
              display_name = group_profile.value.display_name
            }
          }
        }
      }
    }
  }

  dynamic "upsert_users" {
    for_each = each.value.upsert_users != null ? each.value.upsert_users : []
    content {
      entity_type = upsert_users.value.entity_type
      dynamic "profiles" {
        for_each = upsert_users.value.profiles != null ? upsert_users.value.profiles : []
        content {
          external_id = profiles.value.external_id
          dynamic "profile" {
            for_each = profiles.value.profile != null ? profiles.value.profile : []
            content {
              email        = profile.value.email
              first_name   = profile.value.first_name
              home_address = profile.value.home_address
              last_name    = profile.value.last_name
              mobile_phone = profile.value.mobile_phone
              second_email = profile.value.second_email
              user_name    = profile.value.user_name
            }
          }
        }
      }
    }
  }
}

