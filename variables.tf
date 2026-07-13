variable "route_server_bgp_connections" {
  description = <<EOT
Map of route_server_bgp_connections, attributes below
Required:
    - name
    - peer_asn
    - peer_ip
    - route_server_id
EOT

  type = map(object({
    name            = string
    peer_asn        = number
    peer_ip         = string
    route_server_id = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.route_server_bgp_connections : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.route_server_bgp_connections : (
        v.peer_asn >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

