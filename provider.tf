terraform {
  required_providers {
    metal = {
      source = "equinix/metal"
    }
    teleport = {
      version = ">= 6.2.7"
      source  = "gravitational.com/teleport/teleport"
    }
  }
}

provider "teleport" {
  addr               = "${var.teleport_url}:443"
  identity_file_path = var.teleport_identity
}

# Configure the Equinix Metal Provider.
provider "metal" {
  auth_token = var.equinix_auth_token
}


# Create a new SSH key
resource "metal_ssh_key" "break_glass" {
  name       = "benarent"
  public_key = file("~/.ssh/id_rsa.pub")
}