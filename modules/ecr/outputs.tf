output "registry_id" {
  description = "The account ID of the registry holding the repository."
  value = aws_ecr_repository.ecr.registry_id
}
output "repository_url" {
  description = "The URL of the repository."
  value = aws_ecr_repository.ecr.repository_url
}

data "aws_ecr_image" "service_image" {
  repository_name = aws_ecr_repository.ecr.name
  image_tag = var.image_tag
}

output "image_digest" {
  description = "The sha256 digest of the image."
  value = data.aws_ecr_image.service_image.image_digest
}