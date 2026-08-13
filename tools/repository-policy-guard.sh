#!/usr/bin/env bash
set -euo pipefail

fail=0
report() { printf 'ERROR: %s\n' "$1" >&2; fail=1; }

for path in .env .env.local; do
  if git ls-files --error-unmatch "$path" >/dev/null 2>&1; then
    report "local environment file must not be tracked: $path"
  fi
done

patterns=(
  'AKIA[0-9A-Z]{16}'
  'gh[pousr]_[A-Za-z0-9]{20,}'
  '[0-9]{6,12}:[A-Za-z0-9_-]{30,}'
  '-----BEGIN ([A-Z ]+ )?PRIVATE KEY-----'
  'sk-[A-Za-z0-9_-]{20,}'
  '=[0-9a-f]{64}$'
)

for pattern in "${patterns[@]}"; do
  if git grep -nEI "$pattern" > /tmp/repository-policy-match 2>/dev/null; then
    cat /tmp/repository-policy-match >&2
    report "tracked content matches a high-confidence secret pattern"
  fi
done

exit "$fail"
