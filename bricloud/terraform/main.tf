terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

provider "linode" {
  token = var.linode_pat
}

# Note - if the remote state gets deleted for some reason, this will have to be done on its own!
resource "linode_object_storage_bucket" "tf_state" {
  region = "us-east-1"
  label   = "rbh-tf-state"
}
 