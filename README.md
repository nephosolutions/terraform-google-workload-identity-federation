# Google Cloud OIDC Workload Identity Federation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Copyright 2023 NephoSolutions srl

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.29.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_iam_workload_identity_pool.oidc_provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool) | resource |
| [google_iam_workload_identity_pool_provider.oidc_provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_audiences"></a> [allowed\_audiences](#input\_allowed\_audiences) | Acceptable values for the aud field (audience) in the OIDC token. | `list(string)` | `null` | no |
| <a name="input_attribute_condition"></a> [attribute\_condition](#input\_attribute\_condition) | A Common Expression Language expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted. | `string` | `null` | no |
| <a name="input_attribute_mapping"></a> [attribute\_mapping](#input\_attribute\_mapping) | Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes, such as subject and segment. | `map(string)` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | A description for the pool and provider. | `string` | `null` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | Whether the pool is disabled. | `bool` | `null` | no |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | A display name for the pool and provider. | `string` | `null` | no |
| <a name="input_issuer_uri"></a> [issuer\_uri](#input\_issuer\_uri) | The OIDC issuer URL. | `string` | n/a | yes |
| <a name="input_pool_id"></a> [pool\_id](#input\_pool\_id) | The ID used for the pool, which is the final component of the pool resource name. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project in which the resources belong. | `string` | `null` | no |
| <a name="input_provider_id"></a> [provider\_id](#input\_provider\_id) | The ID for the provider, which becomes the final component of the resource name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_audience"></a> [audience](#output\_audience) | The URL of the workload identity audience. |
| <a name="output_pool_id"></a> [pool\_id](#output\_pool\_id) | The identifier of the workload identity pool. |
| <a name="output_pool_name"></a> [pool\_name](#output\_pool\_name) | The name of the workload identity pool. |
| <a name="output_pool_state"></a> [pool\_state](#output\_pool\_state) | The state of the workload identity pool. |
| <a name="output_provider_id"></a> [provider\_id](#output\_provider\_id) | The identifier of the workload identity provider. |
| <a name="output_provider_name"></a> [provider\_name](#output\_provider\_name) | The name of the workload identity provider. |
| <a name="output_provider_state"></a> [provider\_state](#output\_provider\_state) | The state of the workload identity provider. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
