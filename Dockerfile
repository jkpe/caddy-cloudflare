FROM caddy:2.11.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@006ebb07b34945b53dd0bb31a7a823ef2e8ccc56 \
    --with github.com/porech/caddy-maxmind-geolocation@9066f91c9696fcf554a0230ea768301259708ff1 \
    --with github.com/mentimeter/caddy-storage-cf-kv@939ac14649ca537a3cd7108e46cd57cfda593a91

FROM caddy:2.11.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy