resource "aws_default_vpc" "default" {
  tags = var.vpc_name
}

data "aws_availability_zones" "available" {}

resource "aws_default_subnet" "default_az1" {
  availability_zone = data.aws_availability_zones.available.names[1]

  tags = var.subnet_name
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow 22 & 80 inbound traffic"
  vpc_id      = aws_default_vpc.default.id
    dynamic "ingress" {
      for_each     =   var.aws_sg

    content {
       description = ingress.value.description
       from_port   = ingress.value.port
       to_port     = ingress.value.port
       protocol    = ingress.value.protocol
       cidr_blocks = ingress.value.cidr_blocks 
     } 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks 
  }

  tags = {
    Name = "default_sg"
  }
}

resource "aws_instance" "jenkins_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = aws_default_subnet.default_az1.id
  vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
  key_name = "testkey"

  tags = {
    "Name" = "default_ec2"
  }

}

resource "null_resource" "default" {
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/downloads/testkey.pem")
    host        = aws_instance.jenkins_server.public_ip
  }
  provisioner "file" {
    source      = "install_jenkins.sh"
    destination = "/tmp/install_jenkins.sh"
  }
  provisioner "remote-exec" {
    inline = [  
        "sudo chmod +x /tmp/install_jenkins.sh",
        "sh /tmp/install_jenkins.sh"
    ]
  }
  depends_on = [  
    aws_instance.jenkins_server
  ]
}