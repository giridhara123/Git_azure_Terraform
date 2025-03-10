locals {
  rg1_name = lower(join("-", [var.project, var.rg1_name, var.environment]))
}