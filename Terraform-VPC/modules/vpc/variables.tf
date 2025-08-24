variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  
}

variable "subnet_cidr" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)

}
variable "subnet_name" {
  description = "List of names for the subnets"
  type        = list(string)
  default = [ "Public subnet 1", "Public subnet 2" ]
  
}