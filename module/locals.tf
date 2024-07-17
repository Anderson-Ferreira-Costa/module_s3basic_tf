locals {
  tag_default = {
    Environment = var.environment_name,
    ProjectName = var.project_name,
  }
}

resource "random_id" "server" {
  byte_length = 8
}
