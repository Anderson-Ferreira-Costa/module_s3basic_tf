## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_s3_sample"></a> [s3\_sample](#module\_s3\_sample) | ./module | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | (Required) The name of the environment. must be `dev`, `hml`, `prd`. | `string` | n/a | yes |
| <a name="input_is_versioning"></a> [is\_versioning](#input\_is\_versioning) | (Optional) If this bucket it is versioning. Default is `true` | `bool` | `true` | no |
| <a name="input_mfa_delete"></a> [mfa\_delete](#input\_mfa\_delete) | (Optional) Whether MFA delete is enabled. Default is `false` | `bool` | `false` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | (Required) This will be the name of the project. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | (Required) The region This is the region where the resources will be applied. | `string` | n/a | yes |
| <a name="input_s3_name"></a> [s3\_name](#input\_s3\_name) | (Required) This will be the name of the s3. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Map of tags to assign to the resource. If configured with a provider. | `map(any)` | `{}` | no |

## Outputs

No outputs.
