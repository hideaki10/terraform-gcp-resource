variable "gce_name" {
  type = string

}

variable "region" {
  type = string
}

variable "project" {
  type = string
}



variable "image" {
  type = string
}

variable "tags" {
  type    = list(string)
  default = ["http-server", "https-server"]
}
