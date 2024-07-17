resource "aws_s3_bucket" "default" {
  bucket = "${var.s3_name}-${var.project_name}-${var.environment_name}"

  tags = merge(var.tags, local.tag_default, {
    Name = "${var.s3_name}-${var.project_name}-${var.environment_name}"
  })
}

resource "aws_s3_bucket_versioning" "default" {
  bucket = aws_s3_bucket.default.id

  versioning_configuration {
    status = var.is_versioning ? "Enabled" : "Suspended"
    mfa_delete = var.mfa_delete ? "Enabled" : "Disabled"
  }
}

resource "aws_s3_bucket_public_access_block" "default" {
  bucket = aws_s3_bucket.default.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}