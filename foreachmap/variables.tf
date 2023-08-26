variable "groups" {
  type = map(any)
  default = {
    dev  = "eastus"
    prod = "centralus"
  }
}