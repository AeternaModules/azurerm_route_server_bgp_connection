output "route_server_bgp_connections_id" {
  description = "Map of id values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route_server_bgp_connections_name" {
  description = "Map of name values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route_server_bgp_connections_peer_asn" {
  description = "Map of peer_asn values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.peer_asn if v.peer_asn != null }
}
output "route_server_bgp_connections_peer_ip" {
  description = "Map of peer_ip values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.peer_ip if v.peer_ip != null && length(v.peer_ip) > 0 }
}
output "route_server_bgp_connections_route_server_id" {
  description = "Map of route_server_id values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.route_server_id if v.route_server_id != null && length(v.route_server_id) > 0 }
}

