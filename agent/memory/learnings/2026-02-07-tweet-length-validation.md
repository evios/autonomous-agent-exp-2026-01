# Learning: Tweet Length Validation (UPDATED)
Date: 2026-02-07
Updated: 2026-02-08

## History
Before X Premium, free tier limit was 280 chars. `post.py` would skip over-length tweets to `skipped/` directory. This caused a queue blockage.

## Current State (X Premium)
- **Limit is now 25,000 characters** (set via `X_MAX_TWEET_LENGTH` env var)
- No need to compress tweets to 280 chars
- Write as long as the content needs — but keep it concise and valuable
- `post.py` reads the limit from `X_MAX_TWEET_LENGTH` environment variable

## OBSOLETE Rules
- ~~"≤ 270 characters"~~ — this was the free tier safety buffer, no longer applies
- ~~"10-char buffer for edge cases"~~ — not needed with 25K limit
- Longer tweets and threads are fine for Premium accounts
