variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  
}

variable "subnet_cidr" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)

  
}
variable "domain_name" {
  description = "The domain name for the Route53 DNS zone"
  type        = string
}
# variable "create_dns_zone" {
#   description = "Whether to create a DNS zone"
#   type        = bool
#   default     = false
# }
# variable "environment_name" {
#   description = "The name of the environment (e.g., dev, staging, prod)"
#   type        = string
# }
# variable "alb_dns" {
#   description = "The DNS name of the ALB"
#   type        = string
  
# }
# variable "alb_zone_id" {
#   description = "The Zone ID of the ALB"
#   type        = string
# }

