output "route_server_bgp_connections" {
  description = "All route_server_bgp_connection resources"
  value       = azurerm_route_server_bgp_connection.route_server_bgp_connections
}
output "route_server_bgp_connections_name" {
  description = "List of name values across all route_server_bgp_connections"
  value       = [for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : v.name]
}
output "route_server_bgp_connections_peer_asn" {
  description = "List of peer_asn values across all route_server_bgp_connections"
  value       = [for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : v.peer_asn]
}
output "route_server_bgp_connections_peer_ip" {
  description = "List of peer_ip values across all route_server_bgp_connections"
  value       = [for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : v.peer_ip]
}
output "route_server_bgp_connections_route_server_id" {
  description = "List of route_server_id values across all route_server_bgp_connections"
  value       = [for k, v in azurerm_route_server_bgp_connection.route_server_bgp_connections : v.route_server_id]
}

