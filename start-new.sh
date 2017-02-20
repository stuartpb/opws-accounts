#! /usr/bin/env bash
set -eo pipefail

if [[ -z "$1" ]]; then
  echo "No domain specified" >2
  exit 1
fi

dummyroot="by-domain/$1"
mkdir -p "$dummyroot"

cat << 'EOF' > "$dummyroot/$(date -I).md"
---
email:
  unmasked:
  used:
# insert username etc. here
passwords: # in order of use
- a

specimens:
- https://gist.github.com/

---

EOF
