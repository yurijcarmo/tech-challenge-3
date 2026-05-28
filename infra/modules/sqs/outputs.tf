output "queue_urls" {
  description = "URLs das filas SQS por nome"
  value       = { for k, v in aws_sqs_queue.default : k => v.url }
}
