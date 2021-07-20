# Teleport & Equinix Metal Terraform Setup
 
This repo will let you quickly setup Teleport on Equinix Metal servers.

Prerequisites:

- [Equinix Metal Account](https://console.equinix.com/signup)
    - A read/write API Key
- A Teleport Cluster. [Try Teleport for Free](https://goteleport.com/signup/). 
    - A Terraform user and exported credentials. See our [Docs](https://goteleport.com/docs/setup/guides/terraform-provider/#step-24-create-a-terraform-user) and [_prep](/_prep/) for more info. 

## Initial Setup

```bash
tsh login --proxy=equinix-metal-livestream.teleport.sh:443 --user=benarent@gmail.com
```

```bash
tctl create /_prep/terraform.yaml
tctl create /_prep/terraform-impersonator.yaml
tctl auth sign --format=file --user=terraform --out=/secrets/terraform-identity --ttl=24h
```

## Terraform Setup

```
terraform init
terraform plan -var-file="secret.tfvars"
terraform apply -var-file="secret.tfvars"
```
