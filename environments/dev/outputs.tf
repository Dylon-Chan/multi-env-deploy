#Output the IP address of the ECS cluster service

data "aws_network_interfaces" "all" {
  tag = {
    Name = var.ecs_name
  }
}

data "aws_network_interface" "all" {
  for_each = toset(data.aws_network_interfaces.all.ids)
    id = each.key
}

output "all_access_urls" {
  value = {
    for k, v in data.aws_network_interface.all : k => "http://${v.association[0].public_ip}:${var.image_port}"
  }
}