data "oci_load_balancer_listener_rules" "load_balancer_listener_rules_lookup" {
  for_each = var.load_balancer_listener_rules_lookup

  listener_name    = each.value.listener_name
  load_balancer_id = each.value.load_balancer_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

