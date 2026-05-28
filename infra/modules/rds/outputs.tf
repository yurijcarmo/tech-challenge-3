output "db_endpoints" {
  description = "Endpoints dos bancos de dados por nome"
  value       = { for k, v in aws_db_instance.default : k => v.address }
}

output "db_usernames" {
  description = "Usernames dos bancos de dados por nome"
  value       = { for k, v in aws_db_instance.default : k => v.username }
}

output "db_names" {
  description = "Nomes dos bancos de dados por nome"
  value       = { for k, v in aws_db_instance.default : k => v.db_name }
}
