variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "cluster_name" {
  type = string
}

# variable "db_remote_state_bucket" {
#   type = string
# }

# variable "db_remote_state_key" {
#   type = string
# }

variable "instance_type" {
  type = string
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

locals {
  http_port    = 80
  any_port     = 0
  any_protocol = "-1"
  tcp_protocol = "tcp"
  all_ips      = ["0.0.0.0/0"]
}

variable "custom_tags" {
  type    = map(string)
  default = {}
}

variable "enable_autoscaling" {
  type = bool
}
 
variable "ami" {
  default = "ami-0c55b159cbfafe1f0"
  type = string
}

variable "server_text" {
  default = "Hello, World!"
  type = string
}