FROM caddy:2.10.0-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@188b4850c0f2f5565a6310810c936ea960e2210f \
    --with github.com/porech/caddy-maxmind-geolocation@9066f91c9696fcf554a0230ea768301259708ff1

FROM caddy:2.10.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
