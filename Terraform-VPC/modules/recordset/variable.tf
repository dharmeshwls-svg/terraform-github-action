variable "hosted_zone_id" {
  description = "The ID of the Route53 hosted zone"
  type        = string  
  
}
variable "record_name" {
  description = "The name of the Route53 record"
  type        = string
  
}
variable "load_balancer_dns_name" {
  description = "The DNS name of the load balancer"
  type        = string
  
}
variable "load_balance_zone_id" {
  description = "The zone ID of the load balancer"
  type        = string
  
}