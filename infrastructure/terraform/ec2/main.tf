resource "aws_instance" "example" {
  ami           = "ami-08982f1c5bf93d976"
  instance_type = "t3.micro"
  key_name      = "new-anjum"
  subnet_id     = "subnet-04f9f48e3d537e407"
  security_groups = ["sg-023eef078a375ad37"]
  root_block_device {
  volume_size   = 40
  volume_type   = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }
}
