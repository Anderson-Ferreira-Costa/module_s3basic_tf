## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_versioning.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [random_id.server](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

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
