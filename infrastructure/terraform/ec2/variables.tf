variable "instance-type" {
  type        = string
  default     = "t3.medium"
  description = "type of my ec2 instance"
}

variable "storage" {
  type        = number
  default     = 40
  description = "disk size for the storage"
}

variable "ssh-key-name" {
  type        = string
  default     = "training.pem"
  description = "ssh key"
}

variable "security-group" {
  type        = list(string)
  default     = ["sg-045a7bb175542e3f2"]
  description = "linux security group"
}


variable "ami-id" {
  type        = string
  default     = "ami-01760eea5c574eb86"
  description = "description"
}

variable "vpc_id" {
  type        = string
  default     = "vpc-0ce34f78b725c7b66"
  description = "vpc id "
}
