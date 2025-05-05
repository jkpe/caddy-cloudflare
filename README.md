# Caddy with Cloudflare DNS Module

This repository contains a Dockerized version of Caddy v2 with the following modules:

- Cloudflare DNS provider module ([`caddy-dns/cloudflare`](https://github.com/caddy-dns/cloudflare))
- MaxMind geolocation module ([`caddy-maxmind-geolocation`](https://github.com/porech/caddy-maxmind-geolocation))
- Cloudflare KV storage module ([`caddy-storage-cf-kv`](https://github.com/mentimeter/caddy-storage-cf-kv))

This setup enables:

- Automatic HTTPS with DNS-based challenge support using Cloudflare as the DNS provider
- Geolocation whitelist capabilities
- Cloudflare KV storage for Caddy's storage needs (k8s clusters etc)

## Docker Image Availability

The Docker image for this project is available at:

- **Latest Version**: `ghcr.io/jkpe/caddy-cloudflare:latest`
- **Specific Version (v2.8.4)**: `ghcr.io/jkpe/caddy-cloudflare:v2.8.4`

These images are built for both `linux/arm64` and `linux/amd64` architectures.
