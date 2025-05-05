FROM caddy:2.10.0-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@006ebb07b34945b53dd0bb31a7a823ef2e8ccc56 \
    --with github.com/porech/caddy-maxmind-geolocation@9066f91c9696fcf554a0230ea768301259708ff1

FROM caddy:2.10.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy