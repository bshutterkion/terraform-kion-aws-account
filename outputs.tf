output "kion_account_id" {
  description = "The ID of the AWS account created or imported by this module"
  value       = kion_aws_account.this.id
}
