variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ec2_count" {
  type    = number
  description = "number of EC2 instances for multiple VPN servers"
  default = 1
}

variable "profile" {
  type    = string
  default = "outline_profile"
}

variable "public_key_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "security_group_name_prefix" {
  description = "Prefix for the name of the security group"
  default     = "terra_"
}

variable "instance_ami" {
  default = "ami-0557a15b87f6559cf"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "user_data_script" {
  default = <<-EOF
            #!/bin/bash
            yes | bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"
            EOF
}

variable "ssh_user" {
  type    = string
  default = "ubuntu"
}

variable "ssh_key_path" {
  type    = string
  default = "~/.ssh/id_rsa"
}