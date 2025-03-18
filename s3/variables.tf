variable "cloud_id" {
  default = "b1gmpma17e5otjoaje18"
}

variable "folder_id" {
  default = "b1g5trmhbou9o4oc9pps"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "bucket_name" {
  type        = string
  default     = "tffordilom"
  description = "VPC network&subnet name"
}

variable "account_name" {
  type        = string
  default     = "srvacc"
  description = "VPC network&subnet name"
}
