output "alb_sg_id" {
  description = "ID на Security Group за ALB"
  value       = aws_security_group.alb_sg.id
}

output "ec2_sg_id" {
  description = "ID на Security Group за EC2"
  value       = aws_security_group.ec2_sg.id
}

output "ec2_sg_name" {
  description = "ID на Security Group за EC2"
  value       = aws_security_group.ec2_sg.name
}