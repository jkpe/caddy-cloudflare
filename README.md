# Caddy with Cloudflare DNS Module

This repository contains a Dockerized version of Caddy v2 with the Cloudflare DNS provider module (`caddy-dns/cloudflare`). This setup enables automatic HTTPS with DNS-based challenge support, using Cloudflare as the DNS provider.

## Features

- **Automatic HTTPS**: Caddy automatically manages SSL/TLS certificates.
- **Cloudflare DNS Integration**: Easily manage DNS records through the Cloudflare API.
- **Dockerized**: Run Caddy in a container with a pre-built Cloudflare DNS module.
- **CI/CD with GitHub Actions**: Automated builds and deployments using GitHub Actions.
- **Automated Dependency Updates**: Keep dependencies up-to-date with Renovate.

## Docker Image Availability

The Docker image for this project is available at:

- **Latest Version**: `ghcr.io/jkpe/caddy-cloudflare:latest`
- **Specific Version (v2.8.4)**: `ghcr.io/jkpe/caddy-cloudflare:v2.8.4`

These images are built for both `linux/arm64` and `linux/amd64` architectures.

## Getting Started

### Prerequisites

- Docker installed on your machine.
- A Cloudflare account and API token with DNS edit permissions.

### Clone the Repository

```bash
git clone https://github.com/jkpe/caddy-cloudflare.git
cd caddy-cloudflare
```

### Build the Docker Image

To build the Docker image locally:

```bash
docker build -t caddy-cloudflare .
```

### Run the Container

To run the container:

```bash
docker run -d -p 80:80 -p 443:443 \
    -e CLOUDFLARE_API_TOKEN=your_cloudflare_api_token \
    -v $(pwd)/Caddyfile:/etc/caddy/Caddyfile \
    caddy-cloudflare
```

Replace `your_cloudflare_api_token` with your actual Cloudflare API token.

### Caddyfile Configuration

The `Caddyfile` is where you define your site's configuration. Below is a basic example:

```caddyfile
example.com {
    tls {
        dns cloudflare {env.CLOUDFLARE_API_TOKEN}
    }
    reverse_proxy localhost:8080
}
```

This configuration:
- Sets up a site for `example.com`.
- Uses Cloudflare DNS to manage TLS certificates.
- Proxies requests to a local service running on port 8080.

## CI/CD with GitHub Actions

This repository includes a GitHub Actions workflow for building and publishing Docker images.

### Workflow Triggers

- **Push to Main**: Builds and publishes the Docker image.
- **Tag Creation**: Publishes a versioned Docker image.
- **Scheduled Builds**: Runs every day at a specified time (`cron`).

### Configuration

The workflow is configured to push images to the GitHub Container Registry (GHCR) by default. You can change the registry by modifying the `REGISTRY` and `IMAGE_NAME` environment variables in the workflow file.

## Automated Dependency Updates

This project uses Renovate to keep dependencies up-to-date automatically. The configuration is located in `renovate.json`, which extends the recommended settings provided by Renovate.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
