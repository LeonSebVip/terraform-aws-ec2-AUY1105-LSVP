variable "ami" {
  description = "AMI de la EC2"
  type = string
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "Tipo de instancia de EC2"
  type = string
  default = "t2.micro"
}

variable "name_instance" {
  description = "Nombre de la EC2"
  type = string
  default = "ec2-web"
}

variable "env_ec2" {
  description = "Ambiente en la que se crea la EC2"
  type = string
  default = "dev"
}