# Caddy with Cloudflare DNS Module

This repository contains a Dockerized version of Caddy v2 with the Cloudflare DNS provider module ([`caddy-dns/cloudflare`](https://github.com/caddy-dns/cloudflare)) and the MaxMind geolocation module ([`caddy-maxmind-geolocation`](https://github.com/porech/caddy-maxmind-geolocation)). This setup enables automatic HTTPS with DNS-based challenge support, using Cloudflare as the DNS provider, and provides geolocation capabilities.

## Docker Image Availability

The Docker image for this project is available at:

- **Latest Version**: `ghcr.io/jkpe/caddy-cloudflare:latest`
- **Specific Version (v2.8.4)**: `ghcr.io/jkpe/caddy-cloudflare:v2.8.4`

These images are built for both `linux/arm64` and `linux/amd64` architectures.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
