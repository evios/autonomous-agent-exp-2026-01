#!/usr/bin/env bash
# check-session.sh - Check PR limits for work sessions
#
# Required env vars:
#   GITHUB_OUTPUT   - GitHub Actions output file
# Optional env vars:
#   MAX_PRS_VAR     - override for max PRs per day

set -euo pipefail

# --- Resolve max PRs per day ---
# Prefer GitHub var, fallback to config file, default 2
if [ -n "${MAX_PRS_VAR:-}" ]; then
  MAX_PRS="$MAX_PRS_VAR"
else
  MAX_PRS=$(grep -E "^\| MAX_PRS_PER_DAY" agent/config.md | awk -F'|' '{print $3}' | tr -d ' ')
  MAX_PRS=${MAX_PRS:-2}
fi
echo "max_prs_per_day=$MAX_PRS" >> "$GITHUB_OUTPUT"

# --- Check PR count for today ---
TODAY=$(date -u +%Y-%m-%d)
CURRENT_COUNT=0

if [ -f agent/state/current.md ]; then
  LAST_UPDATE=$(grep -E "^Last Updated:" agent/state/current.md | head -1 || echo "")
  if [[ "$LAST_UPDATE" == *"$TODAY"* ]]; then
    PR_LINE=$(grep -E "^PR Count Today:" agent/state/current.md || echo "")
    CURRENT_COUNT=$(echo "$PR_LINE" | grep -oE "[0-9]+/" | tr -d '/' || echo "0")
  fi
fi

echo "current_count=$CURRENT_COUNT" >> "$GITHUB_OUTPUT"
echo "today=$TODAY" >> "$GITHUB_OUTPUT"

# --- Decide whether to skip ---
if [ "$CURRENT_COUNT" -ge "$MAX_PRS" ]; then
  echo "skip=true" >> "$GITHUB_OUTPUT"
  echo "Daily limit reached ($CURRENT_COUNT/$MAX_PRS). Skipping."
else
  echo "skip=false" >> "$GITHUB_OUTPUT"
  echo "PR count: $CURRENT_COUNT/$MAX_PRS. Proceeding."
fi
