variable "name" {
  description = "The name of the AWS account within Kion"
  type        = string
}

variable "payer_id" {
  description = "The ID of the billing source containing billing data for this account"
  type        = number
}

variable "commercial_account_name" {
  description = "The name used when creating new commercial account"
  type        = string
}

variable "create_govcloud" {
  description = "True to create an AWS GovCloud account"
  type        = bool
  default     = false
}

variable "account_alias" {
  description = "Account alias is an optional short unique name that helps identify the account within Kion"
  type        = string
  default     = null
}

variable "account_number" {
  description = "The account number of the AWS account. If provided, the existing account will be imported into Kion"
  type        = string
  default     = null
}

variable "account_type_id" {
  description = "An ID representing the account type within Kion"
  type        = number
  default     = null
}

variable "email" {
  description = "The root email address to associate with a new account. Required when creating a new account unless an account placeholder email has been set"
  type        = string
  default     = null
}

variable "gov_account_name" {
  description = "The name used when creating new GovCloud account"
  type        = string
  default     = null
}

variable "include_linked_account_spend" {
  description = "True to associate spend from a linked GovCloud account with this account"
  type        = bool
  default     = false
}

variable "linked_role" {
  description = "The AWS organization service role"
  type        = string
  default     = null
}

variable "project_id" {
  description = "The ID of the Kion project to place this account within. If empty, the account will be placed within the account cache"
  type        = number
  default     = null
}

variable "skip_access_checking" {
  description = "True to skip periodic access checking on the account"
  type        = bool
  default     = false
}

variable "start_datecode" {
  description = "Date when the AWS account will start submitting payments against a funding source (YYYY-MM)"
  type        = string
  default     = null
}

variable "use_org_account_info" {
  description = "True to keep the account name and email address in Kion in sync with the account name and email address as set in AWS Organization"
  type        = bool
  default     = false
}

variable "aws_organizational_unit" {
  description = "Where to place this account within AWS Organization when creating an account"
  type = list(object({
    name        = string
    org_unit_id = string
  }))
  default = []
}

variable "move_project_settings" {
  description = "Parameters used when moving an account between Kion projects"
  type = list(object({
    financials    = string
    move_datecode = number
  }))
  default = []
}

variable "labels" {
  description = "A map of labels to assign to the account"
  type        = map(string)
  default     = {}
}
