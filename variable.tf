
variable "aws_dynamodb_table" {
    type = string
    default = "multi-env-dynamo"
  
}

variable "aws_ami" {
  type = string
  default = "ami-0dee22c13ea7a9a67"
}

variable "aws_instance_type" {
  type=string
  default = "t2.micro"
}
