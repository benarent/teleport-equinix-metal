
// Teleport URL
variable "teleport_url" {
  type    = string
  default = "equinix-metal-livestream.teleport.sh"
}

variable "equinix_auth_token" {
  type      = string
  sensitive = true
}

variable "gh_team" {
  type    = string
  default = "employees"
}

variable "gh_org" {
  type    = string
  default = "gravitational"
}

variable "gh_client_id" {
  description = "gh_client_id"
  type        = string
  sensitive   = true
}

variable "gh_client_secret" {
  description = "gh_client_secret"
  type        = string
  sensitive   = true
}

variable "teleport_identity" {
  type      = string
  sensitive = true
}

