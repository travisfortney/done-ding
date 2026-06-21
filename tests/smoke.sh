#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

LOG_FILE="$TMP_DIR/done-ding.log"

DONE_DING_DELAY="0" \
DONE_DING_LOG="$LOG_FILE" \
DONE_DING_SOUND="$TMP_DIR/no-such-sound.aiff" \
DONE_DING_PLAYER="/usr/bin/true" \
  "$ROOT/bin/done-ding" "smoke test"

for _ in 1 2 3 4 5 6 7 8 9 10; do
  if grep -q 'finished: smoke test' "$LOG_FILE" 2>/dev/null; then
    exit 0
  fi
  sleep 0.1
done

echo "Expected done-ding to write a smoke-test log entry." >&2
[ -f "$LOG_FILE" ] && cat "$LOG_FILE" >&2
exit 1
