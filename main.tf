module "s3_sample" {
  source           = "./module"
  region           = var.region
  s3_name          = var.s3_name
  project_name     = var.project_name
  environment_name = var.environment_name
  is_versioning    = var.is_versioning
}

