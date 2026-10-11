variable "load_balancer_listener_rules_lookup" {
  description = <<EOT
Map of load_balancer_listener_rules_lookup, attributes below
Required:
    - listener_name
    - load_balancer_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    listener_name    = string
    load_balancer_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

