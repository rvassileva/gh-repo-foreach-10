variable "ami" {
  type    = string
  default = "ami-004961349a19d7a8f"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "app_servers" {
  type    = list(string)
  default = ["web-server", "db-server", "network-server"]
}