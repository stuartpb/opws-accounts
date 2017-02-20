#! /usr/bin/env bash
set -eo pipefail

if [[ -z "$1" ]]; then
  echo "No domain specified" >2
  exit 1
fi

dummyroot="by-domain/$1/$(date -I)"
mkdir -p "$dummyroot/specimens"

cat << 'EOF' > "$dummyroot/report.md"
email:
  unmasked:
  used:
# insert username etc. here
passwords: # in order of use
- a

specimens:
- filename: password-reset.eml
  description: Password reset response

---

EOF
