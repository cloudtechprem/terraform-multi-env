resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "Terraform-workspace"
  }
}