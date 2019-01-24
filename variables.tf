variable "region" {
  default = "eu-west-2" }

variable "amis" {
  type = "map"
  default = {
    "amazon" = "ami-0664a710233d7c148"
    "ubuntu" = "ami-0b0a60c0a2bd40612"
    "custom" = "ami-09fb0a67c7a88b5b4" }
  }

variable "ostype" {
  default = "ubuntu" }

variable instance_type {
  default = "t2.micro" }

