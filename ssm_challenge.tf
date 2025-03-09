locals {
  ssm_map = {
    "ticket"         = "value/valid"
    "frame"          = "value/valid"
    "disorder"       = "value/valid"
    "book/test"      = "value/invalid"
    "farewell"       = "value/valid"
    "exhibition"     = "value/valid"
    "classroom"      = "value/valid"
    "digress"        = "value/valid"
    "speaker"        = "value/valid"
    "selection/test" = "value/invalid"
    "test"           = "value/valid"
  }
}

resource "aws_ssm_parameter" "ssm" {
  for_each = local.ssm_map

  name      = "/${var.candidate_last_name}/${each.key}"
  type      = "String"
  value     = each.value
  overwrite = true
}
