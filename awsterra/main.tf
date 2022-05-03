resource "aws_instance" "example" {
    ami = data.aws_ami.windows.id
    instance_type = "t2.micro"
    availability_zone = var.availability_zone
  
  lifecycle {
    ignore_changes = [ami]
  }
}
