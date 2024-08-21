# aws-organizations

This module creates an AWS Organization and optionally creates Organizational Units and member accounts.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_organizations_organization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |
| [aws_organizations_organizational_unit.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organizational_unit) | resource |
| [aws_organizations_organization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_service_access_principals"></a> [aws\_service\_access\_principals](#input\_aws\_service\_access\_principals) | A list of AWS service access principals to enable | `list(string)` | `[]` | no |
| <a name="input_organisation_units"></a> [organisation\_units](#input\_organisation\_units) | A map of organisation units to create | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_service_access_principals"></a> [aws\_service\_access\_principals](#output\_aws\_service\_access\_principals) | List of AWS service access principals to enable |
| <a name="output_organisation_units"></a> [organisation\_units](#output\_organisation\_units) | List of organisation units and member accounts |
| <a name="output_organisation_units_flatten"></a> [organisation\_units\_flatten](#output\_organisation\_units\_flatten) | Flatten user inputted list of organisation units and member accounts |
<!-- END_TF_DOCS -->
