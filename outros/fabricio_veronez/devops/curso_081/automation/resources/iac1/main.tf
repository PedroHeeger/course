terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# VPC
resource "aws_vpc" "minha-vpc" {
  cidr_block = "10.0.0.0/16"

    tags = {
    Name = "minha-vpc"
  }
}

# Subnet
resource "aws_subnet" "minha-subnet" {
  vpc_id = aws_vpc.minha-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "minha-subnet"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "meu-ig" {
  vpc_id = aws_vpc.minha-vpc.id

  tags = {
    Name = "meu-ig"
  }
}

# Route Table
resource "aws_route_table" "minha-rt" {
  vpc_id = aws_vpc.minha-vpc.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.meu-ig.id
  }

  tags = {
    Name = "minha-rt"
  }
}

# Route Table Association
resource "aws_route_table_association" "minha-rt-association" {
  subnet_id = aws_subnet.minha-subnet.id
  route_table_id = aws_route_table.minha-rt.id
}

# Security Group
resource "aws_security_group" "meu-sg" {
  name        = "meu-sg"
  description = "SG Liberado"
  vpc_id      = aws_vpc.minha-vpc.id

  ingress {
    # description      = "Liberação de todas as portas"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "meu-sg"
  }
}

resource "aws_key_pair" "meu-kp" {
  key_name   = "meu-kp"
  public_key = file("G:\\Meu Drive\\4_PROJ\\course\\outros\\fabricio_veronez\\devops\\curso_081\\automation\\secrets\\keyPair\\curso081KeyPair2.pub")
}

resource "aws_instance" "minha-ec2" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.minha-subnet.id
  associate_public_ip_address = true
  key_name = aws_key_pair.meu-kp.key_name
  vpc_security_group_ids = [aws_security_group.meu-sg.id]


  tags = {
    Name = "minha-ec2"
  }
}

output "ip_ec2" {
    value = aws_instance.minha-ec2.public_ip  
}