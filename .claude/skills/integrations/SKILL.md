---
name: integrations
description: Technical details for external platform integrations (APIs, credentials, rate limits). Use when debugging posting issues or adding new integrations.
user-invocable: false
---

# Integrations Technical Skill

Technical knowledge for working with external platform integrations.

## Reference Documentation
Detailed technical docs live with the code:
- `agent/integrations/README.md` - Overview, adding new integrations
- `agent/integrations/{platform}/README.md` - Platform-specific setup

## Quick Diagnostics

### Check if credentials are configured
```bash
gh variable list | grep X_
```
If variables exist, presume secrets are also configured.

### Check recent posting runs
```bash
gh run list --workflow=process-outputs.yml --limit 5
gh run view <run-id> --log
```

### Common Issues

| Symptom | Cause | Fix |
|---------|-------|-----|
| 429 errors | Rate limit hit | Wait 15+ min, reduce frequency |
| Files in `posted/` but not posted | Script exit code wrong | Check post.sh returns 1 on failure |
| Auth errors | Missing/expired credentials | Check `gh variable list` |

## Rate Limit Protection

Workflow has built-in protection:
- 5 second delay between posts
- Stops on first failure (429)
- Failed files stay for next run

## Adding New Platforms

1. Create `agent/integrations/{platform}/post.sh`
2. Create `agent/outputs/{platform}/`
3. Add credentials to `process-outputs.yml`
4. Document in platform README

See `agent/integrations/README.md` for full details.