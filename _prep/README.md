
https://goteleport.com/docs/setup/guides/terraform-provider/

tsh login --proxy=equinix-metal-livestream.teleport.sh:443 --user=benarent@gmail.com

tctl create terraform.yaml
tctl auth sign --format=file --user=terraform --out=terraform-identity --ttl=24h


