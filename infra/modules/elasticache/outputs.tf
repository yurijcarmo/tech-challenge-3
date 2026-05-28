output "cache_endpoints" {
  description = "Endpoints dos clusters ElastiCache por nome"
  value       = { for k, v in aws_elasticache_cluster.default : k => v.cache_nodes[0].address }
}

output "cache_ports" {
  description = "Portas dos clusters ElastiCache por nome"
  value       = { for k, v in aws_elasticache_cluster.default : k => v.cache_nodes[0].port }
}
