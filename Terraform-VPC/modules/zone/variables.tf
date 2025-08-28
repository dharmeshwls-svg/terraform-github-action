variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone."
  type        = string
}
variable "create_dns_zone" {
  description = "Whether to create a new Route 53 hosted zone."
  type        = bool
  default     = true
}