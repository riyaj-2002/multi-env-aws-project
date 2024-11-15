
resource "aws_s3_bucket" "my-s3-bucket" {
    bucket = "multi-env-buc-s3"

    tags = {
      Name = "multi-env-buc-s3"
    }
}
