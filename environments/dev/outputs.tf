#Output the IP address of the ECS cluster service

data "aws_network_interfaces" "all" {
  filter {
    name = "group-id"
    values = [aws_security_group.ecs_sg.id]
  }
}

output "all_eni_id" {
  value = data.aws_network_interfaces.all.ids
}

data "aws_network_interface" "all" {
  for_each = toset(data.aws_network_interfaces.all.ids)
  id       = each.key
}

output "all_public_ip" {
  value = {
    for k, v in data.aws_network_interface.all : k => v.association[0].public_ip
  }
}

output "all_access_urls" {
  value = {
    for k, v in data.aws_network_interface.all : k => "http://${v.association[0].public_ip}:${var.image_port}"
  }
}