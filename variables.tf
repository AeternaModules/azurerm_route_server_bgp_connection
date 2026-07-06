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
  # --- Unconfirmed validation candidates, derived from azurerm_route_server_bgp_connection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: route_server_id
  #   source:    [from virtualwans.ValidateVirtualHubID] !ok
  # path: route_server_id
  #   source:    [from virtualwans.ValidateVirtualHubID] err != nil
  # path: peer_ip
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
}

