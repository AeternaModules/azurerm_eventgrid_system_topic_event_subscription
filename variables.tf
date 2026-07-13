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
    advanced_filtering_on_arrays_enabled = optional(bool)
    event_delivery_schema                = optional(string)
    eventhub_endpoint_id                 = optional(string)
    expiration_time_utc                  = optional(string)
    hybrid_connection_endpoint_id        = optional(string)
    included_event_types                 = optional(list(string))
    labels                               = optional(list(string))
    service_bus_queue_endpoint_id        = optional(string)
    service_bus_topic_endpoint_id        = optional(string)
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
  # --- Unconfirmed validation candidates, derived from azurerm_eventgrid_system_topic_event_subscription's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validation.All(...) - no translation rule yet, add one
  # path: system_topic
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: event_delivery_schema
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: expiration_time_utc
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: azure_function_endpoint.function_id
  #   source:    [from webapps.ValidateFunctionID] !ok
  # path: azure_function_endpoint.function_id
  #   source:    [from webapps.ValidateFunctionID] err != nil
  # path: eventhub_endpoint_id
  #   source:    [from eventhubs.ValidateEventhubID] !ok
  # path: eventhub_endpoint_id
  #   source:    [from eventhubs.ValidateEventhubID] err != nil
  # path: hybrid_connection_endpoint_id
  #   source:    [from hybridconnections.ValidateHybridConnectionID] !ok
  # path: hybrid_connection_endpoint_id
  #   source:    [from hybridconnections.ValidateHybridConnectionID] err != nil
  # path: service_bus_queue_endpoint_id
  #   source:    [from serviceBusQueues.ValidateQueueID] !ok
  # path: service_bus_queue_endpoint_id
  #   source:    [from serviceBusQueues.ValidateQueueID] err != nil
  # path: service_bus_topic_endpoint_id
  #   source:    [from serviceBusTopics.ValidateTopicID] !ok
  # path: service_bus_topic_endpoint_id
  #   source:    [from serviceBusTopics.ValidateTopicID] err != nil
  # path: storage_queue_endpoint.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_queue_endpoint.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: storage_queue_endpoint.queue_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: webhook_endpoint.url
  #   source:    validation.IsURLWithHTTPS(...) - no translation rule yet, add one
  # path: webhook_endpoint.max_events_per_batch
  #   condition: value >= 1 && value <= 5000
  #   message:   must be between 1 and 5000
  # path: webhook_endpoint.preferred_batch_size_in_kilobytes
  #   condition: value >= 1 && value <= 1024
  #   message:   must be between 1 and 1024
  # path: included_event_types[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.bool_equals.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_greater_than.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_greater_than_or_equals.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_less_than.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_less_than_or_equals.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_in.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_not_in.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_begins_with.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_not_begins_with.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_ends_with.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_not_ends_with.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_contains.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_not_contains.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_in.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.string_not_in.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.is_not_null.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.is_null_or_undefined.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_in_range.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: advanced_filter.number_not_in_range.key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: delivery_identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: dead_letter_identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: storage_blob_dead_letter_destination.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_blob_dead_letter_destination.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: storage_blob_dead_letter_destination.storage_blob_container_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: retry_policy.max_delivery_attempts
  #   condition: value >= 1 && value <= 30
  #   message:   must be between 1 and 30
  # path: retry_policy.event_time_to_live
  #   condition: value >= 1 && value <= 1440
  #   message:   must be between 1 and 1440
  # path: delivery_property.type
  #   condition: contains(["Static", "Dynamic"], value)
  #   message:   must be one of: Static, Dynamic
}

