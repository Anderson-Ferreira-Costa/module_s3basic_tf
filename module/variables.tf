variable "s3_name" {
  type        = string
  description = "(Required) This will be the name of the s3."
}

variable "project_name" {
  type        = string
  description = "(Required) This will be the name of the project."
}

variable "region" {
  type        = string
  description = "(Required) The region This is the region where the resources will be applied."
}

variable "environment_name" {
  type        = string
  description = "(Required) The name of the environment. must be `dev`, `hml`, `prd`."

  validation {
    condition     = contains(["dev", "hml", "prd"], var.environment_name)
    error_message = "Valid values for var: environment_name are (dev, hml, prd)."
  }
}

variable "is_versioning" {
  type        = bool
  description = "(Optional) If this bucket it is versioning. Default is `true`"
  default     = true
}

variable "mfa_delete" {
  type        = bool
  description = "(Optional) Whether MFA delete is enabled. Default is `false`"
  default     = false
}

variable "tags" {
  type        = map(any)
  description = " (Optional) Map of tags to assign to the resource. If configured with a provider."
  default     = {}
}