#! /usr/bin/env bash
set -eo pipefail

if [[ -z "$1" ]]; then
  echo "No domain specified" >2
  exit 1
fi

dummyroot="by-domain/$1/$(date -I)"
mkdir -p "$dummyroot/specimens"
touch "$dummyroot/notes.md"

cat << 'EOF' > "$dummyroot/credentials.yaml"
email:
  unmasked:
  used:
password:

specimens:
- filename:
  description:
EOF
