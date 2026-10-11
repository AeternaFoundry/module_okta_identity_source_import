variable "identity_source_imports" {
  description = <<EOT
Map of identity_source_imports, attributes below
Required:
    - identity_source_id
Optional:
    - delete_group_memberships (block):
        - memberships (optional, block):
            - group_external_id (optional)
            - member_external_ids (optional)
    - delete_groups (block):
        - external_ids (optional)
    - delete_users (block):
        - entity_type (optional)
        - profiles (optional, block):
            - external_id (optional)
    - upsert_group_memberships (block):
        - memberships (optional, block):
            - group_external_id (optional)
            - member_external_ids (optional)
    - upsert_groups (block):
        - profiles (optional, block):
            - external_id (optional)
            - group_profile (optional, block):
                - description (optional)
                - display_name (optional)
    - upsert_users (block):
        - entity_type (optional)
        - profiles (optional, block):
            - external_id (optional)
            - profile (optional, block):
                - email (optional)
                - first_name (optional)
                - home_address (optional)
                - last_name (optional)
                - mobile_phone (optional)
                - second_email (optional)
                - user_name (optional)
EOT

  type = map(object({
    identity_source_id = string
    delete_group_memberships = optional(list(object({
      memberships = optional(list(object({
        group_external_id   = optional(string)
        member_external_ids = optional(list(string))
      })))
    })))
    delete_groups = optional(list(object({
      external_ids = optional(list(string))
    })))
    delete_users = optional(list(object({
      entity_type = optional(string)
      profiles = optional(list(object({
        external_id = optional(string)
      })))
    })))
    upsert_group_memberships = optional(list(object({
      memberships = optional(list(object({
        group_external_id   = optional(string)
        member_external_ids = optional(list(string))
      })))
    })))
    upsert_groups = optional(list(object({
      profiles = optional(list(object({
        external_id = optional(string)
        group_profile = optional(list(object({
          description  = optional(string)
          display_name = optional(string)
        })))
      })))
    })))
    upsert_users = optional(list(object({
      entity_type = optional(string)
      profiles = optional(list(object({
        external_id = optional(string)
        profile = optional(list(object({
          email        = optional(string)
          first_name   = optional(string)
          home_address = optional(string)
          last_name    = optional(string)
          mobile_phone = optional(string)
          second_email = optional(string)
          user_name    = optional(string)
        })))
      })))
    })))
  }))
}

