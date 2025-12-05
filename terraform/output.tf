output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "alb_dns" {
  description = "DNS name of the ALB"
  value       = aws_lb.app_alb.dns_name
}

output "target_group_arn" {
  description = "Target group ARN"
  value       = aws_lb_target_group.app_tg.arn
}

output "launch_template_id" {
  description = "Launch template ID"
  value       = aws_launch_template.app_lt.id
}

output "autoscaling_group_name" {
  description = "Name of ASG"
  value       = aws_autoscaling_group.app_asg.name
}
