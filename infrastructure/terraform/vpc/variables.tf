variable vpc_cidr {
  type        = string
  default     = "10.0.0.0/18"
  description = "vpc cidr"
}
variable public_subnet_1 {
  type        = string
  default     = "10.0.16.0/20"
  description = "public subnet 1"
}

variable public_subnet_2 {
  type        = string
  default     = "10.0.16.0/20"
  description = "public subnet 2"
}

variable private_subnet_1 {
  type        = string
  default     = "10.0.32.0/20"
  description = "private subnet"
}

variable private_subnet_2 {
  type        = string
  default     = "10.0.48.0/20"
  description = "private subnet 2"
}

variable common_tag {
  type        = string
  default     = "devops_project"
  description = "tag for vpc resources"
}