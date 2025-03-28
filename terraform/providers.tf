provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  #service_account_key_file = "/home/netology/Downloads/authorized_key.json"
  token     = var.token
  zone      = var.zone1
}
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  backend "s3" {
    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }
    bucket     = "statebckt2025"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    access_key = var.access_key
    secret_key = var.secret_key

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
  }