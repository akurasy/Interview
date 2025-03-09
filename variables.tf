variable "candidate_last_name" {
  type        = string
  description = "Add a default with your last name"
}

variable "vpc_cidr" {
  type        = string
  description = "Add a default value with the vpc CIDR block"
}

variable "private_subnet_cidr" {
  type        = string
  description = "Add a default value with the CIDR block for the subnet within the vpc."
}

variable "public_subnet_cidr" {
  type        = string
  description = "Add a default value with the CIDR block for the subnet within the vpc."
}
