#Output the IP address of the ECS cluster service

output "alb_hostname" {
  value = aws_lb.loadbalancer.dns_name
}