#!/bin/sh

: "${VAULT_CONFIG_DIR:=/vault/config}"

yq eval-all '. as $item ireduce ({}; . *+ $item)' "$VAULT_CONFIG_DIR"/*.yaml
