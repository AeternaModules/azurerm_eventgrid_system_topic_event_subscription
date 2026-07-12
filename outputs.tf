output "eventgrid_system_topic_event_subscriptions_advanced_filter" {
  description = "Map of advanced_filter values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.advanced_filter }
}
output "eventgrid_system_topic_event_subscriptions_advanced_filtering_on_arrays_enabled" {
  description = "Map of advanced_filtering_on_arrays_enabled values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.advanced_filtering_on_arrays_enabled }
}
output "eventgrid_system_topic_event_subscriptions_azure_function_endpoint" {
  description = "Map of azure_function_endpoint values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.azure_function_endpoint }
}
output "eventgrid_system_topic_event_subscriptions_dead_letter_identity" {
  description = "Map of dead_letter_identity values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.dead_letter_identity }
}
output "eventgrid_system_topic_event_subscriptions_delivery_identity" {
  description = "Map of delivery_identity values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.delivery_identity }
}
output "eventgrid_system_topic_event_subscriptions_delivery_property" {
  description = "Map of delivery_property values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.delivery_property }
  sensitive   = true
}
output "eventgrid_system_topic_event_subscriptions_event_delivery_schema" {
  description = "Map of event_delivery_schema values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.event_delivery_schema }
}
output "eventgrid_system_topic_event_subscriptions_eventhub_endpoint_id" {
  description = "Map of eventhub_endpoint_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.eventhub_endpoint_id }
}
output "eventgrid_system_topic_event_subscriptions_expiration_time_utc" {
  description = "Map of expiration_time_utc values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.expiration_time_utc }
}
output "eventgrid_system_topic_event_subscriptions_hybrid_connection_endpoint_id" {
  description = "Map of hybrid_connection_endpoint_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.hybrid_connection_endpoint_id }
}
output "eventgrid_system_topic_event_subscriptions_included_event_types" {
  description = "Map of included_event_types values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.included_event_types }
}
output "eventgrid_system_topic_event_subscriptions_labels" {
  description = "Map of labels values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.labels }
}
output "eventgrid_system_topic_event_subscriptions_name" {
  description = "Map of name values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.name }
}
output "eventgrid_system_topic_event_subscriptions_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.resource_group_name }
}
output "eventgrid_system_topic_event_subscriptions_retry_policy" {
  description = "Map of retry_policy values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.retry_policy }
}
output "eventgrid_system_topic_event_subscriptions_service_bus_queue_endpoint_id" {
  description = "Map of service_bus_queue_endpoint_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.service_bus_queue_endpoint_id }
}
output "eventgrid_system_topic_event_subscriptions_service_bus_topic_endpoint_id" {
  description = "Map of service_bus_topic_endpoint_id values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.service_bus_topic_endpoint_id }
}
output "eventgrid_system_topic_event_subscriptions_storage_blob_dead_letter_destination" {
  description = "Map of storage_blob_dead_letter_destination values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.storage_blob_dead_letter_destination }
}
output "eventgrid_system_topic_event_subscriptions_storage_queue_endpoint" {
  description = "Map of storage_queue_endpoint values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.storage_queue_endpoint }
}
output "eventgrid_system_topic_event_subscriptions_subject_filter" {
  description = "Map of subject_filter values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.subject_filter }
}
output "eventgrid_system_topic_event_subscriptions_system_topic" {
  description = "Map of system_topic values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.system_topic }
}
output "eventgrid_system_topic_event_subscriptions_webhook_endpoint" {
  description = "Map of webhook_endpoint values across all eventgrid_system_topic_event_subscriptions, keyed the same as var.eventgrid_system_topic_event_subscriptions"
  value       = { for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : k => v.webhook_endpoint }
}

