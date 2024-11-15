
resource "aws_key_pair" "my-kp" {
  key_name = "multi-env-kp"
  public_key = file("/home/riya-jain/Desktop/MULTI-ENV-INFRA-PROJECT/terra-key.pub")
}


resource "aws_default_vpc" "my-vpc" {
  tags = {
    Name = "multi-env-vpc"
  }
}


resource "aws_instance" "my-ec2" {
  ami = var.aws_ami
  instance_type = var.aws_instance_type
  key_name = aws_key_pair.my-kp.key_name
  vpc_security_group_ids = [ aws_security_group.my-sg.id ]
  subnet_id = "subnet-02694a375cf3b0b5c"
 associate_public_ip_address = true

  tags = {
    Name = "multi-env-ec2"
  }
}
