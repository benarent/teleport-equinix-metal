
## Initial Setup

https://goteleport.com/docs/setup/guides/terraform-provider/

```bash
tsh login --proxy=equinix-metal-livestream.teleport.sh:443 --user=benarent@gmail.com
```

```bash
tctl create terraform.yaml
tctl create terraform-impersonator.yaml
tctl auth sign --format=file --user=terraform --out=terraform-identity --ttl=24h
```

