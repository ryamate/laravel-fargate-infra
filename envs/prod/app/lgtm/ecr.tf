# resource "aws_ecr_repository" "nginx" {
#   name = "ryamate-tech-hub-prod-lgtm-nginx"

#   tags = {
#     Name = "ryamate-tech-hub-prod-lgtm-nginx"
#   }
# }

# resource "aws_ecr_lifecycle_policy" "nginx" {
#   policy = jsonencode(
#     {
#       "rules" : [
#         {
#           "rulePriority" : 1,
#           "description" : "Hold only 10 images, expire all others",
#           "selection" : {
#             "tagStatus" : "any",
#             "countType" : "imageCountMoreThan",
#             "countNumber" : 10
#           },
#           "action" : {
#             "type" : "expire"
#           }
#         }
#       ]
#     }
#   )
#   repository = aws_ecr_repository.nginx.name
# }

module "nginx" {
  source = "../../../../modules/ecr"

  name = "${local.name_prefix}-${local.service_name}-nginx"
}

module "php" {
  source = "../../../../modules/ecr"
  name   = "${local.name_prefix}-${local.service_name}-php"
}
