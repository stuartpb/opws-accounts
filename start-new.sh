#! /usr/bin/env bash
set -eo pipefail

if [[ -z "$1" ]]; then
  echo "No domain specified" >2
  exit 1
fi

domain="$1"
accountroot="accounts/$domain"
mkdir -p "$accountroot"

today="$(date -I)"
fileprefix="$accountroot/$today"
extension=".md"
try=1
trext=""
while [[ -f "$fileprefix$extension" ]]; do
  trext="_$((++try))"
  extension="$trext.md"
done

cat << EOF > "$fileprefix$extension"
---
email: https://mailsac.com/inbox/${domain}_$today$trext@tmail.opws.org
# insert username etc. here
passwords: # in order of use
- a

specimens: # https://gist.github.com/
  emails:
    verification:
    password reset token:
  stubs:
    password reset request:
    password reset finish:
  forms:
    password reset change:
    password settings change:
  errors:
    nonexistent account reset request stub:
    expired password reset link:
---

## Issue pings

### Registration spam checkboxes (opws/domainprofiles#175)

### Invalid account password reset (opws/domainprofiles#28)

### Stub information disclosure (opws/domainprofiles#125)

### Other stub details (opws/domainprofiles#130)

### Password truncation / trimming (opws/domainprofiles#233)

EOF
