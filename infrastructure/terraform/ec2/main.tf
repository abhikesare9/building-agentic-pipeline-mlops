data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}
resource "aws_instance" "example" {
  ami             = var.ami-id
  instance_type   = var.instance-type
  key_name        = var.ssh-key-name
  subnet_id       = data.aws_subnets.private.ids[0]
  security_groups = var.security-group
  root_block_device {
    volume_size = var.storage
    volume_type = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }

   connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("${path.module}/jenkinsserver.pem")
    host        = self.public_ip
    timeout     = "5m"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update",
      "sudo yum install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
  }
}
