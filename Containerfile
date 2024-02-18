FROM docker.io/alpine:3.19

COPY --from=ghcr.io/bank-vaults/bank-vaults:1.20.3 /usr/local/bin/bank-vaults /usr/local/bin/
COPY --from=docker.io/mikefarah/yq:4 /usr/bin/yq /usr/local/bin/
COPY merge-vault-config.sh /usr/local/bin/merge-vault-config

