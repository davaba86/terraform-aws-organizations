variable "organisation_units" {
  description = "A map of organisation units to create"
  type        = map(any)
  default     = {}
}

variable "aws_service_access_principals" {
  description = "A list of AWS service access principals to enable"
  type        = list(string)
  default     = []
}
