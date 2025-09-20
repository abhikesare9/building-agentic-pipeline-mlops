resource "aws_instance" "example" {
  ami             = var.ami-id
  instance_type   = var.instance-type
  key_name        = var.ssh-key-name
  subnet_id       = var.subnet-id
  security_groups = var.security-group
  root_block_device {
    volume_size = var.storage
    volume_type = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }
}
