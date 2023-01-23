resource "aws_secretsmanager_secret" "this" {
  #checkov:skip=CKV_AWS_149: TODO
  for_each = toset(local.workspace.secret_name)
  name                    = each.value
  recovery_window_in_days = 0
  tags                    = local.workspace.tags
}
