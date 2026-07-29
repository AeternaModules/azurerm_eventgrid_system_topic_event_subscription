output "eventgrid_system_topic_event_subscriptions_id" {
  description = "Map of id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_advanced_filter" {
  description = "Map of advanced_filter values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.advanced_filter if v.advanced_filter != null && length(v.advanced_filter) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_advanced_filtering_on_arrays_enabled" {
  description = "Map of advanced_filtering_on_arrays_enabled values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.advanced_filtering_on_arrays_enabled if v.advanced_filtering_on_arrays_enabled != null }
}
output "eventgrid_system_topic_event_subscriptions_azure_function_endpoint" {
  description = "Map of azure_function_endpoint values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.azure_function_endpoint if v.azure_function_endpoint != null && length(v.azure_function_endpoint) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_dead_letter_identity" {
  description = "Map of dead_letter_identity values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.dead_letter_identity if v.dead_letter_identity != null && length(v.dead_letter_identity) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_delivery_identity" {
  description = "Map of delivery_identity values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.delivery_identity if v.delivery_identity != null && length(v.delivery_identity) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_delivery_property" {
  description = "Map of delivery_property values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.delivery_property if v.delivery_property != null && length(v.delivery_property) > 0 }
  sensitive   = true
}
output "eventgrid_system_topic_event_subscriptions_event_delivery_schema" {
  description = "Map of event_delivery_schema values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.event_delivery_schema if v.event_delivery_schema != null && length(v.event_delivery_schema) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_eventhub_id" {
  description = "Map of eventhub_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.eventhub_id if v.eventhub_id != null && length(v.eventhub_id) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_expiration_time_utc" {
  description = "Map of expiration_time_utc values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.expiration_time_utc if v.expiration_time_utc != null && length(v.expiration_time_utc) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_hybrid_connection_id" {
  description = "Map of hybrid_connection_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.hybrid_connection_id if v.hybrid_connection_id != null && length(v.hybrid_connection_id) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_included_event_types" {
  description = "Map of included_event_types values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.included_event_types if v.included_event_types != null && length(v.included_event_types) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_labels" {
  description = "Map of labels values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_name" {
  description = "Map of name values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_retry_policy" {
  description = "Map of retry_policy values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.retry_policy if v.retry_policy != null && length(v.retry_policy) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_service_bus_queue_id" {
  description = "Map of service_bus_queue_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.service_bus_queue_id if v.service_bus_queue_id != null && length(v.service_bus_queue_id) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_service_bus_topic_id" {
  description = "Map of service_bus_topic_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.service_bus_topic_id if v.service_bus_topic_id != null && length(v.service_bus_topic_id) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_storage_blob_dead_letter_destination" {
  description = "Map of storage_blob_dead_letter_destination values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.storage_blob_dead_letter_destination if v.storage_blob_dead_letter_destination != null && length(v.storage_blob_dead_letter_destination) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_storage_queue_endpoint" {
  description = "Map of storage_queue_endpoint values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.storage_queue_endpoint if v.storage_queue_endpoint != null && length(v.storage_queue_endpoint) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_subject_filter" {
  description = "Map of subject_filter values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.subject_filter if v.subject_filter != null && length(v.subject_filter) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_system_topic" {
  description = "Map of system_topic values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.system_topic if v.system_topic != null && length(v.system_topic) > 0 }
}
output "eventgrid_system_topic_event_subscriptions_webhook_endpoint" {
  description = "Map of webhook_endpoint values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.webhook_endpoint if v.webhook_endpoint != null && length(v.webhook_endpoint) > 0 }
}

