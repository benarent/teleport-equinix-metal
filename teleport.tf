resource "random_string" "random_node" {
  length  = 8
  special = false
}

resource "teleport_provision_token" "node_join" {
  spec {
    roles = ["Node"]
  }

  metadata {
    name    = random_string.random_node.result
    expires = "2022-10-12T07:20:50.52Z"
  }

}

resource "teleport_github_connector" "github" {
  metadata {
    name = "github"
  }
  spec {
    client_id     = var.gh_client_id
    client_secret = var.gh_client_secret
    display       = "github"
    redirect_url  = "https://${var.teleport_url}:443/v1/webapi/github/callback"
    teams_to_logins {
      logins       = ["access"]
      team         = var.gh_team
      organization = var.gh_org
    }
  }

}


