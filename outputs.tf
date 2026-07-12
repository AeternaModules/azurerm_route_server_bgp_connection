output "route_server_bgp_connections_name" {
  description = "Map of name values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.name }
}
output "route_server_bgp_connections_peer_asn" {
  description = "Map of peer_asn values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.peer_asn }
}
output "route_server_bgp_connections_peer_ip" {
  description = "Map of peer_ip values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.peer_ip }
}
output "route_server_bgp_connections_route_server_id" {
  description = "Map of route_server_id values across all route_server_bgp_connections, keyed the same as var.route_server_bgp_connections"
  value       = { for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : k => v.route_server_id }
}

