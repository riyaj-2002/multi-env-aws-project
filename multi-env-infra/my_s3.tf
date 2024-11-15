

resource "aws_s3_bucket" "my_app_bucket" {
    bucket = "${var.my_env}-multi-env-bucket-s3"
    tags = {
        Name = "${var.my_env}-multi-env-bucket-s3"
    }
}