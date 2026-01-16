# This module is now informational only
# It represents the app layer handled by Docker Compose

resource "aws_security_group" "nginx_sg" {
  name        = "nginx-sg"
  description = "Security group placeholder for nginx"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
