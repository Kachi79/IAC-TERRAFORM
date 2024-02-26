resource "aws_default_vpc" "default" {
  
  tags = var.vpc_name
  
}

data "aws_availability_zones" "available" { }

resource "aws_default_subnet" "default_subnet" {
    availability_zone    =  data.aws_availability_zones.available.names[0]

  tags = var.subnet_name
    
    
}

resource "aws_security_group" "new-sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_default_vpc.default.id
  dynamic "ingress" {
    for_each = var.aws_sg
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
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg_name
}


resource "aws_instance" "new_instance" {
  ami           =  "ami-0ff1c68c6e837b183"
  instance_type = "t2.micro"
  key_name      = "jenkinskey"
  subnet_id     = aws_default_subnet.default_subnet.id
  vpc_security_group_ids = [ aws_security_group.new-sg.id ]
}

resource "null_resource" "name" {
  
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/downloads/jenkinskey.pem")
    host        = aws_instance.new_instance.public_ip
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
    aws_instance.new_instance
  ]
}

