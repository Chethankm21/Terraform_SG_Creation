resource "aws_instance" "my_ec2" {
  ami = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_group_id]
}