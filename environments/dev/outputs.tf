#Output the IP address of the ECS cluster service

data "aws_network_interfaces" "all" {
  tags = {
    "aws:ecs:clusterName" = "${var.ecs_name}"
  }
}

output "all_eni_id" {
  value = data.aws_network_interfaces.all.ids
}

