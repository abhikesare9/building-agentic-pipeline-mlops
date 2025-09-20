variable "instance-type" {
  type        = string
  default     = "t3.xlarge"
  description = "type of my ec2 instance"
}

variable "storage" {
  type        = number
  default     = 40
  description = "disk size for the storage"
}

variable "ssh-key-name" {
  type        = string
  default     = "jenkinsserver"
  description = "ssh key"
}

variable "security-group" {
  type        = list(string)
  default     = ["sg-023eef078a375ad37"]
  description = "linux security group"
}

variable "subnet-id" {
  type        = string
  default     = "subnet-04f9f48e3d537e407"
  description = "description"
}

variable "ami-id" {
  type        = string
  default     = "ami-08982f1c5bf93d976"
  description = "description"
}




