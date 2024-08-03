variable "region" {
  default = "eu-west-2"
}

variable "env" {
  default = "staging"
}

variable "project" {
  default = "main"
}

variable "eks_cluster" {
  default = "demo"
}

variable "vpc_idr_block" {
  default = "10.0.0.0/16"
}