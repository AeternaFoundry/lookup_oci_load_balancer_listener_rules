output "load_balancer_listener_rules_lookup_id" {
  description = "Map of id values across all load_balancer_listener_rules_lookup, keyed the same as var.load_balancer_listener_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_load_balancer_listener_rules.load_balancer_listener_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_listener_rules_lookup_filter" {
  description = "Map of filter values across all load_balancer_listener_rules_lookup, keyed the same as var.load_balancer_listener_rules_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_load_balancer_listener_rules.load_balancer_listener_rules_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "load_balancer_listener_rules_lookup_listener_name" {
  description = "Map of listener_name values across all load_balancer_listener_rules_lookup, keyed the same as var.load_balancer_listener_rules_lookup except keys with no listener_name are omitted"
  value       = { for k, v in data.oci_load_balancer_listener_rules.load_balancer_listener_rules_lookup : k => v.listener_name if v.listener_name != null && length(v.listener_name) > 0 }
}
output "load_balancer_listener_rules_lookup_listener_rules" {
  description = "Map of listener_rules values across all load_balancer_listener_rules_lookup, keyed the same as var.load_balancer_listener_rules_lookup except keys with no listener_rules are omitted"
  value       = { for k, v in data.oci_load_balancer_listener_rules.load_balancer_listener_rules_lookup : k => v.listener_rules if v.listener_rules != null && length(v.listener_rules) > 0 }
}
output "load_balancer_listener_rules_lookup_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_listener_rules_lookup, keyed the same as var.load_balancer_listener_rules_lookup except keys with no load_balancer_id are omitted"
  value       = { for k, v in data.oci_load_balancer_listener_rules.load_balancer_listener_rules_lookup : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}

