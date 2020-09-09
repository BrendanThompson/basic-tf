variable "environment" {
  type = string
  default = "dev"
}

resource "random_uuid" "this" {}

locals {
  resource_name = format("%s-%s", var.environment, random_uuid.this.result)
}

output "my_resource" {
  value = local.resource_name
}