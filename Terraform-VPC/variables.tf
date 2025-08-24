variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  
}

variable "subnet_cidr" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)

  
}