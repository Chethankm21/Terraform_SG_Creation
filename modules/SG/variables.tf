variable "inbound_ports" {
  type    = list(any)
  default = ["443"]
}

variable "outbound_ports" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "inbound_cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "outbound_cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}
