variable "image_name" {
  description = "ECR Repository Name"
  type = string
  default = "ws-app"
}

variable "image_tag" {
  description = "ECR Repository Tag"
  type = string
  default = "latest"
}