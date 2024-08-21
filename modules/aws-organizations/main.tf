data "aws_organizations_organization" "this" {}

locals {
  organisation_units_flatten = flatten([
    for ou, ou_data in var.organisation_units : [
      for account, account_data in ou_data.member_accounts : {
        ou_name       = ou
        account_id    = account
        account_email = account_data.email
        account_name  = account_data.name
      }
    ]
  ])
}

resource "aws_organizations_organization" "this" {
  aws_service_access_principals = var.aws_service_access_principals

  feature_set = "ALL"
}

resource "aws_organizations_organizational_unit" "this" {
  for_each = var.organisation_units

  name      = each.key
  parent_id = data.aws_organizations_organization.this.roots[0].id
}

resource "aws_organizations_account" "this" {
  count = length(local.organisation_units_flatten)

  name  = local.organisation_units_flatten[count.index].account_name
  email = local.organisation_units_flatten[count.index].account_email
}
