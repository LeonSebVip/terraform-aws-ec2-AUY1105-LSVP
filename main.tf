# ─── EC2 INSTANCE ──────────────────────────────────────────────────────────────
resource "aws_instance" "web" {
  ami                    = var.ami # Amazon Linux 2 (us-east-1)
  instance_type          = var.instance_type
  subnet_id              = module.vpc.subnet_ids[0]
  vpc_security_group_ids = [module.vpc.sg_web_id]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Servidor Web - Prueba 2</h1>" > /var/www/html/index.html
  EOF

  tags = {
    Name        = var.name_instance
    Environment = var.env_ec2
  }
}