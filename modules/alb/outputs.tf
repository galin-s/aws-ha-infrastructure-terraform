output "alb_arn" {
  description = "ARN на Application Load Balancer"
  value       = aws_lb.alb.arn
}

output "alb_dns_name" {
  description = "DNS име на ALB"
  value       = aws_lb.alb.dns_name
}

output "target_group_arn" {
  description = "ARN на Target Group"
  value       = aws_lb_target_group.tg.arn
}

output "tg_arn" {
  value       = aws_lb_target_group.tg.arn
  description = "ARN of the ALB target group"
}

output "tg_id" {
  value       = aws_lb_target_group.tg.id
  description = "ID of the ALB target group"
}