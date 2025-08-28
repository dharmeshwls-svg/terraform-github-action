
# data "aws_route53_zone" "existing" {
#   count = var.create_dns_zone ? 0 : 1
#   name  = var.domain_name
# }