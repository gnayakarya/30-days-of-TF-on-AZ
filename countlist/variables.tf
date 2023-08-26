variable "pip" {
  type    = list(any)
  default = ["dev-pip", "test-pip", "prod-pip"]
}