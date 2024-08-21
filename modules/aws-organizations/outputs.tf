output "organisation_units_flatten" {
  description = "Flatten user inputted list of organisation units and member accounts"
  value       = local.organisation_units_flatten
}

output "organisation_units" {
  description = "List of organisation units and member accounts"
  value       = aws_organizations_organizational_unit.this
}

output "aws_service_access_principals" {
  description = "List of AWS service access principals to enable"
  value       = aws_organizations_organization.this.feature_set
}
