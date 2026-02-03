# X (Twitter) Integration

Post tweets via X API v2.

## Authentication Options

### OAuth 1.0a (Preferred)
Stable tokens that don't expire. Recommended for automation.

| Name | Type | Description |
|------|------|-------------|
| `X_API_KEY` | var | Consumer API Key |
| `X_API_KEY_SECRET` | secret | Consumer API Secret |
| `X_ACCESS_TOKEN` | secret | Access Token |
| `X_ACCESS_TOKEN_SECRET` | secret | Access Token Secret |

Setup: Get all 4 from X Developer Portal → Your App → Keys and tokens

### OAuth 2.0 (Fallback)
⚠️ Refresh token rotates on each use - not recommended for automation.

| Name | Type | Description |
|------|------|-------------|
| `X_CLIENT_ID` | var | OAuth 2.0 Client ID |
| `X_CLIENT_SECRET` | secret | OAuth 2.0 Client Secret |
| `X_REFRESH_TOKEN` | secret | Refresh token (rotates!) |

## Scripts

- `post.sh` - Posts tweet (tries OAuth 1.0a first, falls back to 2.0)
- `verify.sh` - Verifies credentials are working
- `auth_2.0.sh` - OAuth 2.0 authorization flow (one-time setup)

## Rate Limits

- Free tier: 50 tweets per 24 hours
- Workflow adds 5s delay between posts
- On 429 error, remaining posts are skipped

## Usage

```bash
# Post a tweet
./post.sh "Hello world!"

# Verify credentials
./verify.sh
```

## Workflow

1. Agent creates tweet → `agent/outputs/x/tweet-YYYYMMDD-NNN.txt`
2. `process-outputs.yml` calls `post.sh` for each file
3. Posted tweets move to `agent/outputs/x/posted/`