resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = new-for-gitaction-testing.pem

  tags = {
    Name = "MyTerraformEC2"
  }

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y httpd
              systemctl enable httpd
              systemctl start httpd
              echo "<h1>Hello from Terraform EC2</h1>" > /var/www/html/index.html
              EOF
}
