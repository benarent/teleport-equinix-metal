data "metal_project" "project" {
  name = "Teleport"
}

data "template_file" "user_data" {
  template = file("scripts/setup-teleport.yaml")

  vars = {
    auth_servers = var.teleport_url
    auth_token   = teleport_provision_token.node_join.metadata[0].name
  }
}

# Create a device and add it to tf_project_1
resource "metal_device" "web" {

  count = 2
 
  hostname         = "web-${count.index}"
  plan             = "s3.xlarge.x86"
  facilities       = ["da11"]
  operating_system = "ubuntu_20_04"
  billing_cycle    = "hourly"
  project_id       = data.metal_project.project.id
  user_data = data.template_file.user_data.rendered

    tags =  ["hello"]
    
}

