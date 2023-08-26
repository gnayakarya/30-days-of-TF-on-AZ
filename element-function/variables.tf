variable "rg" {
  type    = list(any)
  default = ["rg1", "rg2", "rg3"]
}

variable "location" {
  type    = list(any)
  default = ["East US", "West US", "Central US"]
}