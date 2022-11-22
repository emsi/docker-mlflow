#!/bin/bash

set -Eeuo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

cat > "${script_dir}/.env" << EOF
COMPOSE_USER_ID=$(id -u)
COMPOSE_GROUP_ID=$(id -g)
COMPOSE_PROJECT_NAME="$(whoami)-mlflow"
EOF

echo "Will run as $(whoami)"

#if [ `which dokcer-compose` ]; then
#	compose='docker-compose'
#else
#	compose='docker compose'
#fi
#
#$compose up -d
#
#$compose logs -f
