output "instance_ip" {
  value = aws_instance.web.public_ip
  description = "IP de EC2"
}

output "instance_id" {
  value = aws_instance.web.id
  description = "ID de EC2"
}