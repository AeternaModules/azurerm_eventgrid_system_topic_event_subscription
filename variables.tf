variable "eventgrid_system_topic_event_subscriptions" {
  description = <<EOT
Map of eventgrid_system_topic_event_subscriptions, attributes below
Required:
    - name
    - resource_group_name
    - system_topic
Optional:
    - advanced_filtering_on_arrays_enabled
    - event_delivery_schema
    - eventhub_endpoint_id
    - expiration_time_utc
    - hybrid_connection_endpoint_id
    - included_event_types
    - labels
    - service_bus_queue_endpoint_id
    - service_bus_topic_endpoint_id
    - advanced_filter (block):
        - bool_equals (optional, block):
            - key (required)
            - value (required)
        - is_not_null (optional, block):
            - key (required)
        - is_null_or_undefined (optional, block):
            - key (required)
        - number_greater_than (optional, block):
            - key (required)
            - value (required)
        - number_greater_than_or_equals (optional, block):
            - key (required)
            - value (required)
        - number_in (optional, block):
            - key (required)
            - values (required)
        - number_in_range (optional, block):
            - key (required)
            - values (required)
        - number_less_than (optional, block):
            - key (required)
            - value (required)
        - number_less_than_or_equals (optional, block):
            - key (required)
            - value (required)
        - number_not_in (optional, block):
            - key (required)
            - values (required)
        - number_not_in_range (optional, block):
            - key (required)
            - values (required)
        - string_begins_with (optional, block):
            - key (required)
            - values (required)
        - string_contains (optional, block):
            - key (required)
            - values (required)
        - string_ends_with (optional, block):
            - key (required)
            - values (required)
        - string_in (optional, block):
            - key (required)
            - values (required)
        - string_not_begins_with (optional, block):
            - key (required)
            - values (required)
        - string_not_contains (optional, block):
            - key (required)
            - values (required)
        - string_not_ends_with (optional, block):
            - key (required)
            - values (required)
        - string_not_in (optional, block):
            - key (required)
            - values (required)
    - azure_function_endpoint (block):
        - function_id (required)
        - max_events_per_batch (optional)
        - preferred_batch_size_in_kilobytes (optional)
    - dead_letter_identity (block):
        - type (required)
        - user_assigned_identity (optional)
    - delivery_identity (block):
        - type (required)
        - user_assigned_identity (optional)
    - delivery_property (block):
        - header_name (required)
        - secret (optional)
        - source_field (optional)
        - type (required)
        - value (optional)
    - retry_policy (block):
        - event_time_to_live (required)
        - max_delivery_attempts (required)
    - storage_blob_dead_letter_destination (block):
        - storage_account_id (required)
        - storage_blob_container_name (required)
    - storage_queue_endpoint (block):
        - queue_message_time_to_live_in_seconds (optional)
        - queue_name (required)
        - storage_account_id (required)
    - subject_filter (block):
        - case_sensitive (optional)
        - subject_begins_with (optional)
        - subject_ends_with (optional)
    - webhook_endpoint (block):
        - active_directory_app_id_or_uri (optional)
        - active_directory_tenant_id (optional)
        - max_events_per_batch (optional)
        - preferred_batch_size_in_kilobytes (optional)
        - url (required)
EOT

  type = map(object({
    name                                 = string
    resource_group_name                  = string
    system_topic                         = string
    advanced_filtering_on_arrays_enabled = optional(bool)   # Default: false
    event_delivery_schema                = optional(string) # Default: "EventGridSchema"
    eventhub_endpoint_id                 = optional(string)
    expiration_time_utc                  = optional(string)
    hybrid_connection_endpoint_id        = optional(string)
    included_event_types                 = optional(list(string))
    labels                               = optional(list(string))
    service_bus_queue_endpoint_id        = optional(string)
    service_bus_topic_endpoint_id        = optional(string)
    advanced_filter = optional(object({
      bool_equals = optional(object({
        key   = string
        value = bool
      }))
      is_not_null = optional(object({
        key = string
      }))
      is_null_or_undefined = optional(object({
        key = string
      }))
      number_greater_than = optional(object({
        key   = string
        value = number
      }))
      number_greater_than_or_equals = optional(object({
        key   = string
        value = number
      }))
      number_in = optional(object({
        key    = string
        values = list(any)
      }))
      number_in_range = optional(object({
        key    = string
        values = list(any)
      }))
      number_less_than = optional(object({
        key   = string
        value = number
      }))
      number_less_than_or_equals = optional(object({
        key   = string
        value = number
      }))
      number_not_in = optional(object({
        key    = string
        values = list(any)
      }))
      number_not_in_range = optional(object({
        key    = string
        values = list(any)
      }))
      string_begins_with = optional(object({
        key    = string
        values = list(string)
      }))
      string_contains = optional(object({
        key    = string
        values = list(string)
      }))
      string_ends_with = optional(object({
        key    = string
        values = list(string)
      }))
      string_in = optional(object({
        key    = string
        values = list(string)
      }))
      string_not_begins_with = optional(object({
        key    = string
        values = list(string)
      }))
      string_not_contains = optional(object({
        key    = string
        values = list(string)
      }))
      string_not_ends_with = optional(object({
        key    = string
        values = list(string)
      }))
      string_not_in = optional(object({
        key    = string
        values = list(string)
      }))
    }))
    azure_function_endpoint = optional(object({
      function_id                       = string
      max_events_per_batch              = optional(number)
      preferred_batch_size_in_kilobytes = optional(number)
    }))
    dead_letter_identity = optional(object({
      type                   = string
      user_assigned_identity = optional(string)
    }))
    delivery_identity = optional(object({
      type                   = string
      user_assigned_identity = optional(string)
    }))
    delivery_property = optional(object({
      header_name  = string
      secret       = optional(bool)
      source_field = optional(string)
      type         = string
      value        = optional(string)
    }))
    retry_policy = optional(object({
      event_time_to_live    = number
      max_delivery_attempts = number
    }))
    storage_blob_dead_letter_destination = optional(object({
      storage_account_id          = string
      storage_blob_container_name = string
    }))
    storage_queue_endpoint = optional(object({
      queue_message_time_to_live_in_seconds = optional(number)
      queue_name                            = string
      storage_account_id                    = string
    }))
    subject_filter = optional(object({
      case_sensitive      = optional(bool)
      subject_begins_with = optional(string)
      subject_ends_with   = optional(string)
    }))
    webhook_endpoint = optional(object({
      active_directory_app_id_or_uri    = optional(string)
      active_directory_tenant_id        = optional(string)
      max_events_per_batch              = optional(number)
      preferred_batch_size_in_kilobytes = optional(number)
      url                               = string
    }))
  }))
}

