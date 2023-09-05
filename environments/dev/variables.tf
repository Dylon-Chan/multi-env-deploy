variable "env" {
  description = "Environment"
  type = string
  default = "dev"
}

variable "role_to_assume" {
  description = "Role to Assume"
  type = string
  default = "arn:aws:iam::255945442255:role/ecsTaskExecutionRole"
}

variable "ecs_sg_name" {
  description = "ECS Security Group Name"
  type = string
  default = "ws-app-ecs-sg"
}

variable "image_port" {
    description = "Port"
    type = number
    default = 3000
}

variable "vpc_id" {
  type = string
  default = "vpc-01eb8331fac862b2e"
}

variable "subnets" {
  type = list(string)
  default = ["subnet-0623d78431b777e3e" ] // use 1 subnet for dev
  // default = ["subnet-0623d78431b777e3e", "subnet-02a6bf9a87a5dec14", "subnet-07d728c6db3bd830b" ]
}

variable "image_name" {
  description = "ECR Repository Name"
  type = string
  // default = "255945442255.dkr.ecr.ap-southeast-1.amazonaws.com/ws-app"
}

variable "image_tag" {
  description = "ECR Repository Tag"
  type = string
  default = "latest"
}

variable "image_digest" {
  description = "ECR Repository Digest"
  type = string
}

variable "ecs_name" {
  description = "ECS Name"
  type = string
  default = "ws-app-dev"
}

variable "cpu" {
  description = "CPU"
  type = number
  default = 256
}

variable "memory" {
  description = "Memory"
  type = number
  default = 512
}