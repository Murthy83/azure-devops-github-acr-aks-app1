variable "aws_region" {
  default = "us-east-1"
  type    = string
}

variable "app_name" {
  default = "hello-world-app"
  type    = string
}

variable "ecs_cluster_name" {
  default = "hello-world-cluster"
  type    = string
}

variable "allowed_ip" {
  description = "CIDR block allowed to access the app"
  default     = "203.0.113.25/32" # Replace with required IP/CIDR range
  type    = string
}
