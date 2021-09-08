variable "gce_name" {
  type = string
}

variable "machine_type" {
  type    = string
  default = "e2-standard-2"
}
variable "zone" {
  type    = string
  default = "asia-northeast1-a"
}

variable "tags" {
  type = list(string)

  default = [
    "dev", "go"
  ]
}

variable "startup_script" {
  type = string
}

variable "image" {
  type = string
}