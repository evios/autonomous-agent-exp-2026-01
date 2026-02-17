# Bluesky Integration

Post to Bluesky via AT Protocol SDK.

## Authentication

App password auth — no OAuth complexity, no token rotation.

### Required

| Name | Type | Description | Example |
|------|------|-------------|---------|
| `BLUESKY_HANDLE` | var | Your Bluesky handle | `yourname.bsky.social` |
| `BLUESKY_APP_PASSWORD` | secret | App password (not your main password) | `xxxx-xxxx-xxxx-xxxx` |

### Optional

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `BLUESKY_POSTS_PER_RUN` | var | Max posts per workflow run | `1` |
| `BLUESKY_REPLIES_PER_RUN` | var | Max replies per workflow run | `1` |

### How to get an App Password

1. Open Bluesky app or [bsky.app](https://bsky.app)
2. Go to **Settings > Privacy and Security > App Passwords**
3. Click **Add App Password**, give it a name (e.g. "github-agent")
4. Copy the generated password (format: `xxxx-xxxx-xxxx-xxxx`)
5. Add it as a GitHub secret: repo Settings > Secrets and variables > Actions > New repository secret

### Where to configure in GitHub

- **Variables:** repo Settings > Secrets and variables > Actions > Variables tab > New repository variable
- **Secrets:** repo Settings > Secrets and variables > Actions > Secrets tab > New repository secret

## Rate Limits

- **300 graphemes per post** (not characters — emoji/CJK may count as more)
- ~1,667 createRecord calls per hour (~11,666/day)
- Login: 30 per 5 minutes, 300 per day per handle
- Script adds 0.5s delay between posts
- On rate limit: partial success (some posted) exits 0, zero posted exits 1

## Usage

```bash
# Verify credentials
python bluesky.py --verify

# Post directly
python bluesky.py --post --text "Hello Bluesky!"

# Post from queue
python bluesky.py --post --limit-tweets 3 --limit-replies 2

# Post specific file
python bluesky.py --post --file tweet-20260217-001.txt

# Get metrics
python bluesky.py --metrics
python bluesky.py --metrics --compact
```

## File Formats

### Post
```
Your post text here (max 300 graphemes)
```

### Thread (--- separator)
```
First post in thread
---
Second post
---
Third post
```

### Reply (REPLY_TO header)
```
REPLY_TO: at://did:plc:xxx/app.bsky.feed.post/rkey
---
Your reply text here
```

Reply IDs are AT URIs (not numeric like X). Get them from post URLs or API responses.

## Workflow

1. Agent creates post file in `agent/outputs/bluesky/`
2. `process-outputs.yml` runs `bluesky.py --post` on schedule
3. Posted files move to `agent/outputs/bluesky/posted/`
4. Oversized files (>300 graphemes) move to `agent/outputs/bluesky/skipped/`
5. Failed files stay in place for next run
