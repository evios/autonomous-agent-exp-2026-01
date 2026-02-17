# Integrations Technical Reference

Technical details for external platform integrations. For content strategy and voice guidelines, see `.claude/skills/publishing/SKILL.md`.

## How It Works

1. Agent creates files in `agent/outputs/{platform}/`
2. `process-outputs.yml` workflow detects new files on push
3. Workflow calls `agent/integrations/{platform}/post.sh` for each file
4. Successfully posted files move to `posted/` subdirectory

## Rate Limits

All integrations have rate limit protection:
- 5 second delay between posts
- On 429 (rate limit), workflow stops processing remaining files
- Failed files stay in place for next run

## Available Integrations

| Integration | Description | Preferred Auth |
|-------------|-------------|----------------|
| [x/](./x/) | Post to X (Twitter) | OAuth 1.0a |
| [bluesky/](./bluesky/) | Post to Bluesky | App Password |

## Verifying Integration Status

```bash
# Check if credentials are configured
gh variable list

# Check recent posting runs
gh run list --workflow=process-outputs.yml --limit 5
```

## Adding New Integrations

1. Create directory: `agent/integrations/{platform}/`
2. Create `post.sh` that:
   - Takes content as first argument: `post.sh "content to post"`
   - Returns exit code 0 on success, 1 on failure
   - Outputs response for logging
3. Create output directory: `agent/outputs/{platform}/`
4. Add credentials to `process-outputs.yml` env section
5. Document in platform's README.md

## Troubleshooting

### Posts moved to `posted/` but not actually posted
- Check workflow logs: `gh run view <run-id> --log`
- Verify `post.sh` returns proper exit codes

### Rate limit errors (429)
- Wait 15+ minutes before retrying
- Reduce posting frequency

### Authentication errors
- Verify credentials: `gh variable list`
- Check platform-specific README for setup