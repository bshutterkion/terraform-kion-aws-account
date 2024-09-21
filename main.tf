resource "kion_aws_account" "this" {
  name                         = var.name
  payer_id                     = var.payer_id
  commercial_account_name      = var.commercial_account_name
  create_govcloud              = var.create_govcloud
  account_alias                = var.account_alias
  account_number               = var.account_number
  account_type_id              = var.account_type_id
  email                        = var.email
  gov_account_name             = var.gov_account_name
  include_linked_account_spend = var.include_linked_account_spend
  linked_role                  = var.linked_role
  project_id                   = var.project_id
  skip_access_checking         = var.skip_access_checking
  start_datecode               = var.start_datecode
  use_org_account_info         = var.use_org_account_info

  dynamic "aws_organizational_unit" {
    for_each = var.aws_organizational_unit
    content {
      name        = aws_organizational_unit.value.name
      org_unit_id = aws_organizational_unit.value.org_unit_id
    }
  }

  dynamic "move_project_settings" {
    for_each = var.move_project_settings
    content {
      financials    = move_project_settings.value.financials
      move_datecode = move_project_settings.value.move_datecode
    }
  }

  labels = var.labels
}
