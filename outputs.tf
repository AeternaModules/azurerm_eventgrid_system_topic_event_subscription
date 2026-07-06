output "eventgrid_system_topic_event_subscriptions" {
  description = "All eventgrid_system_topic_event_subscription resources"
  value       = azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions
  sensitive   = true
}
output "eventgrid_system_topic_event_subscriptions_advanced_filter" {
  description = "List of advanced_filter values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.advanced_filter]
}
output "eventgrid_system_topic_event_subscriptions_advanced_filtering_on_arrays_enabled" {
  description = "List of advanced_filtering_on_arrays_enabled values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.advanced_filtering_on_arrays_enabled]
}
output "eventgrid_system_topic_event_subscriptions_azure_function_endpoint" {
  description = "List of azure_function_endpoint values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.azure_function_endpoint]
}
output "eventgrid_system_topic_event_subscriptions_dead_letter_identity" {
  description = "List of dead_letter_identity values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.dead_letter_identity]
}
output "eventgrid_system_topic_event_subscriptions_delivery_identity" {
  description = "List of delivery_identity values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.delivery_identity]
}
output "eventgrid_system_topic_event_subscriptions_delivery_property" {
  description = "List of delivery_property values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.delivery_property]
  sensitive   = true
}
output "eventgrid_system_topic_event_subscriptions_event_delivery_schema" {
  description = "List of event_delivery_schema values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.event_delivery_schema]
}
output "eventgrid_system_topic_event_subscriptions_eventhub_endpoint_id" {
  description = "List of eventhub_endpoint_id values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.eventhub_endpoint_id]
}
output "eventgrid_system_topic_event_subscriptions_expiration_time_utc" {
  description = "List of expiration_time_utc values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.expiration_time_utc]
}
output "eventgrid_system_topic_event_subscriptions_hybrid_connection_endpoint_id" {
  description = "List of hybrid_connection_endpoint_id values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.hybrid_connection_endpoint_id]
}
output "eventgrid_system_topic_event_subscriptions_included_event_types" {
  description = "List of included_event_types values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.included_event_types]
}
output "eventgrid_system_topic_event_subscriptions_labels" {
  description = "List of labels values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.labels]
}
output "eventgrid_system_topic_event_subscriptions_name" {
  description = "List of name values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.name]
}
output "eventgrid_system_topic_event_subscriptions_resource_group_name" {
  description = "List of resource_group_name values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.resource_group_name]
}
output "eventgrid_system_topic_event_subscriptions_retry_policy" {
  description = "List of retry_policy values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.retry_policy]
}
output "eventgrid_system_topic_event_subscriptions_service_bus_queue_endpoint_id" {
  description = "List of service_bus_queue_endpoint_id values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.service_bus_queue_endpoint_id]
}
output "eventgrid_system_topic_event_subscriptions_service_bus_topic_endpoint_id" {
  description = "List of service_bus_topic_endpoint_id values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.service_bus_topic_endpoint_id]
}
output "eventgrid_system_topic_event_subscriptions_storage_blob_dead_letter_destination" {
  description = "List of storage_blob_dead_letter_destination values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.storage_blob_dead_letter_destination]
}
output "eventgrid_system_topic_event_subscriptions_storage_queue_endpoint" {
  description = "List of storage_queue_endpoint values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.storage_queue_endpoint]
}
output "eventgrid_system_topic_event_subscriptions_subject_filter" {
  description = "List of subject_filter values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.subject_filter]
}
output "eventgrid_system_topic_event_subscriptions_system_topic" {
  description = "List of system_topic values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.system_topic]
}
output "eventgrid_system_topic_event_subscriptions_webhook_endpoint" {
  description = "List of webhook_endpoint values across all eventgrid_system_topic_event_subscriptions"
  value       = [for k, v in azurerm_eventgrid_system_topic_event_subscription.eventgrid_system_topic_event_subscriptions : v.webhook_endpoint]
}

