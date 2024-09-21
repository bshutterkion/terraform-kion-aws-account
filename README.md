<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_aws_account.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/aws_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_alias"></a> [account\_alias](#input\_account\_alias) | Account alias is an optional short unique name that helps identify the account within Kion | `string` | `null` | no |
| <a name="input_account_number"></a> [account\_number](#input\_account\_number) | The account number of the AWS account. If provided, the existing account will be imported into Kion | `string` | `null` | no |
| <a name="input_account_type_id"></a> [account\_type\_id](#input\_account\_type\_id) | An ID representing the account type within Kion | `number` | `null` | no |
| <a name="input_aws_organizational_unit"></a> [aws\_organizational\_unit](#input\_aws\_organizational\_unit) | Where to place this account within AWS Organization when creating an account | <pre>list(object({<br>    name        = string<br>    org_unit_id = string<br>  }))</pre> | `[]` | no |
| <a name="input_commercial_account_name"></a> [commercial\_account\_name](#input\_commercial\_account\_name) | The name used when creating new commercial account | `string` | n/a | yes |
| <a name="input_create_govcloud"></a> [create\_govcloud](#input\_create\_govcloud) | True to create an AWS GovCloud account | `bool` | `false` | no |
| <a name="input_email"></a> [email](#input\_email) | The root email address to associate with a new account. Required when creating a new account unless an account placeholder email has been set | `string` | `null` | no |
| <a name="input_gov_account_name"></a> [gov\_account\_name](#input\_gov\_account\_name) | The name used when creating new GovCloud account | `string` | `null` | no |
| <a name="input_include_linked_account_spend"></a> [include\_linked\_account\_spend](#input\_include\_linked\_account\_spend) | True to associate spend from a linked GovCloud account with this account | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A map of labels to assign to the account | `map(string)` | `{}` | no |
| <a name="input_linked_role"></a> [linked\_role](#input\_linked\_role) | The AWS organization service role | `string` | `null` | no |
| <a name="input_move_project_settings"></a> [move\_project\_settings](#input\_move\_project\_settings) | Parameters used when moving an account between Kion projects | <pre>list(object({<br>    financials    = string<br>    move_datecode = number<br>  }))</pre> | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the AWS account within Kion | `string` | n/a | yes |
| <a name="input_payer_id"></a> [payer\_id](#input\_payer\_id) | The ID of the billing source containing billing data for this account | `number` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the Kion project to place this account within. If empty, the account will be placed within the account cache | `number` | `null` | no |
| <a name="input_skip_access_checking"></a> [skip\_access\_checking](#input\_skip\_access\_checking) | True to skip periodic access checking on the account | `bool` | `false` | no |
| <a name="input_start_datecode"></a> [start\_datecode](#input\_start\_datecode) | Date when the AWS account will start submitting payments against a funding source (YYYY-MM) | `string` | `null` | no |
| <a name="input_use_org_account_info"></a> [use\_org\_account\_info](#input\_use\_org\_account\_info) | True to keep the account name and email address in Kion in sync with the account name and email address as set in AWS Organization | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kion_account_id"></a> [kion\_account\_id](#output\_kion\_account\_id) | The ID of the AWS account created or imported by this module |
<!-- END_TF_DOCS -->