terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc6"
    }
  }
  # https://www.linode.com/docs/guides/how-to-build-your-infrastructure-using-terraform-and-linode/#use-linode-object-storage-to-store-state
  backend "s3" {
    endpoints = {
      s3 = "https://us-east-1.linodeobjects.com"
    }
    profile                     = "linode-s3"
    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    skip_metadata_api_check = true
    bucket                      = "rbh-tf-state"
    key                         = "brihome/state.json"
    region                      = "us-east-1"
  }
}

provider "proxmox" {
  pm_api_url          = var.api_url
  pm_api_token_id     = var.token_id
  pm_api_token_secret = var.token_secret
  pm_tls_insecure     = true
}