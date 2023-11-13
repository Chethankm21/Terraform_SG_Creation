
#Creating the security group

resource "aws_security_group" "my_sg" {
  name = "SG_GHA"

  #Dynamic block for ingress rules
  dynamic "ingress" {
    for_each = var.inbound_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  #Dynamic block for egress rules
  dynamic "egress" {
    for_each = var.outbound_ports
    content {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

output "my_sg_id" {
  value = aws_security_group.my_sg.id
}
