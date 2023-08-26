variable "location" {
  type = map(any)
  default = {
    "dev"  = "East US"
    "test" = "West US"
    "prod" = "Central US"
  }
}