variable "environment" {
  type = string
  description = "The environment name to use for all resources in this example"
}

variable "location" {
  type = string
  description = "The Azure location where all resources in this example should be created"
  default = "australiaeast"
}