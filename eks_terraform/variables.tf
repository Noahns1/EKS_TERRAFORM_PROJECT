# ---var bp---
# variable "" {
#   description = ""
#   type = 
#   default = 
# }

variable "region" {
  description = "Region used for aws provider"
  type = string
  default = "us-east-1"
}

variable "name" {
  description = "cluster name"
  type = string
  default = "noahs-cluster"
}

variable "vpc_cidr" {
  description = "vpc cidr"
  type = string
  default = "10.123.0.0/16"
}

variable "availability_zones" {
  description = "availability zones within our region"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets" {
  description = "Public subnet"
  type = list(string)
  default = ["10.123.1.0/24", "10.123.2.0/24"]
}

variable "private_subnets" {
  description = "private subnets"
  type = list(string)
  default = ["10.123.3.0/24", "10.123.4.0/24"]
}

variable "intra_subnets" {
  description = "intra subnets"
  type = list(string)
  default = ["10.123.5.0/24", "10.123.6.0/24"]
}
