## create s3
resource "aws_s3_bucket" "bucket" {
  bucket = "shuvabuc0076"
  lifecycle {
    prevent_destroy = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
  ## create s3
resource "aws_s3_bucket" "bucket2" {
  bucket = "shuvabuc0555"
  lifecycle {
    prevent_destroy = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  versioning {
    enabled = true
  }
}

## create dynamodb
resource "aws_dynamodb_table" "terraform_locks" {
  name           = "lock_table3"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "lockID"
  attribute {
    name = "lockID"
    type = "S"
  }
}