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
    - eventhub_id
    - expiration_time_utc
    - hybrid_connection_id
    - included_event_types
    - labels
    - service_bus_queue_id
    - service_bus_topic_id
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
    advanced_filtering_on_arrays_enabled = optional(bool)
    event_delivery_schema                = optional(string)
    eventhub_id                          = optional(string)
    expiration_time_utc                  = optional(string)
    hybrid_connection_id                 = optional(string)
    included_event_types                 = optional(list(string))
    labels                               = optional(list(string))
    service_bus_queue_id                 = optional(string)
    service_bus_topic_id                 = optional(string)
    advanced_filter = optional(object({
      bool_equals = optional(list(object({
        key   = string
        value = bool
      })))
      is_not_null = optional(list(object({
        key = string
      })))
      is_null_or_undefined = optional(list(object({
        key = string
      })))
      number_greater_than = optional(list(object({
        key   = string
        value = number
      })))
      number_greater_than_or_equals = optional(list(object({
        key   = string
        value = number
      })))
      number_in = optional(list(object({
        key    = string
        values = list(number)
      })))
      number_in_range = optional(list(object({
        key    = string
        values = list(any)
      })))
      number_less_than = optional(list(object({
        key   = string
        value = number
      })))
      number_less_than_or_equals = optional(list(object({
        key   = string
        value = number
      })))
      number_not_in = optional(list(object({
        key    = string
        values = list(number)
      })))
      number_not_in_range = optional(list(object({
        key    = string
        values = list(any)
      })))
      string_begins_with = optional(list(object({
        key    = string
        values = list(string)
      })))
      string_contains = optional(list(object({
        key    = string
        values = list(string)
      })))
      string_ends_with = optional(list(object({
        key    = string
        values = list(string)
      })))
      string_in = optional(list(object({
        key    = string
        values = list(string)
      })))
      string_not_begins_with = optional(list(object({
        key    = string
        values = list(string)
      })))
      string_not_contains = optional(list(object({
        key    = string
        values = list(string)
      })))
      string_not_ends_with = optional(list(object({
        key    = string
        values = list(string)
      })))
      string_not_in = optional(list(object({
        key    = string
        values = list(string)
      })))
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
    delivery_property = optional(list(object({
      header_name  = string
      secret       = optional(bool)
      source_field = optional(string)
      type         = string
      value        = optional(string)
    })))
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
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        (length(v.name) > 0) && (can(regex("^[-a-zA-Z0-9]{3,64}$", v.name)))
      )
    ])
    error_message = "all of: must not be empty; EventGrid subscription name must be 3 - 64 characters long, contain only letters, numbers and hyphens."
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        length(v.system_topic) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.expiration_time_utc == null || (length(v.expiration_time_utc) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.storage_queue_endpoint == null || (length(v.storage_queue_endpoint.queue_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.webhook_endpoint == null || (v.webhook_endpoint.max_events_per_batch == null || (v.webhook_endpoint.max_events_per_batch >= 1 && v.webhook_endpoint.max_events_per_batch <= 5000))
      )
    ])
    error_message = "must be between 1 and 5000"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.webhook_endpoint == null || (v.webhook_endpoint.preferred_batch_size_in_kilobytes == null || (v.webhook_endpoint.preferred_batch_size_in_kilobytes >= 1 && v.webhook_endpoint.preferred_batch_size_in_kilobytes <= 1024))
      )
    ])
    error_message = "must be between 1 and 1024"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.included_event_types == null || (alltrue([for x in v.included_event_types : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.bool_equals == null || alltrue([for item in v.advanced_filter.bool_equals : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_greater_than == null || alltrue([for item in v.advanced_filter.number_greater_than : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_greater_than_or_equals == null || alltrue([for item in v.advanced_filter.number_greater_than_or_equals : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_less_than == null || alltrue([for item in v.advanced_filter.number_less_than : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_less_than_or_equals == null || alltrue([for item in v.advanced_filter.number_less_than_or_equals : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_in == null || alltrue([for item in v.advanced_filter.number_in : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_not_in == null || alltrue([for item in v.advanced_filter.number_not_in : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_begins_with == null || alltrue([for item in v.advanced_filter.string_begins_with : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_not_begins_with == null || alltrue([for item in v.advanced_filter.string_not_begins_with : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_ends_with == null || alltrue([for item in v.advanced_filter.string_ends_with : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_not_ends_with == null || alltrue([for item in v.advanced_filter.string_not_ends_with : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_contains == null || alltrue([for item in v.advanced_filter.string_contains : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_not_contains == null || alltrue([for item in v.advanced_filter.string_not_contains : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_in == null || alltrue([for item in v.advanced_filter.string_in : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.string_not_in == null || alltrue([for item in v.advanced_filter.string_not_in : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.is_not_null == null || alltrue([for item in v.advanced_filter.is_not_null : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.is_null_or_undefined == null || alltrue([for item in v.advanced_filter.is_null_or_undefined : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_in_range == null || alltrue([for item in v.advanced_filter.number_in_range : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.advanced_filter == null || (v.advanced_filter.number_not_in_range == null || alltrue([for item in v.advanced_filter.number_not_in_range : (length(item.key) > 0)]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.storage_blob_dead_letter_destination == null || (length(v.storage_blob_dead_letter_destination.storage_blob_container_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.retry_policy == null || (v.retry_policy.max_delivery_attempts >= 1 && v.retry_policy.max_delivery_attempts <= 30)
      )
    ])
    error_message = "must be between 1 and 30"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.retry_policy == null || (v.retry_policy.event_time_to_live >= 1 && v.retry_policy.event_time_to_live <= 1440)
      )
    ])
    error_message = "must be between 1 and 1440"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventgrid_system_topic_event_subscriptions : (
        v.delivery_property == null || alltrue([for item in v.delivery_property : (contains(["Static", "Dynamic"], item.type))])
      )
    ])
    error_message = "must be one of: Static, Dynamic"
  }
  # Note: 19 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

