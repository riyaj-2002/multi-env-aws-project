


resource "aws_default_vpc" "my_vpc" {
  tags = {
    Name = "${var.my_env}-multi-env-vpc"
  }
}
resource "aws_instance" "my-ec2" {
  count = var.ec2-count
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = "subnet-02694a375cf3b0b5c"


  tags = {
    Name = "${var.my_env}-multi-env-ec2-inst"
  }
}