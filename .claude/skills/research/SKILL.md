---
name: research
description: How to research goals, repo owner, products, and domain topics. Use proactively to gather context.
user-invocable: false
---

# Research Skill

Proactively gather context to make better decisions and create relevant content.

## Research the Repo Owner

```bash
# Get owner info from GitHub API
gh api users/{owner}

# Returns: name, bio, blog, twitter_username, company, location
```

Additional sources:
- Owner's GitHub profile README
- Pinned repositories
- Blog/website (from profile)
- LinkedIn: https://www.linkedin.com/in/eiosifov

Store findings in `agent/memory/research/owner-profile.md`

## Research Owner's Products

1. Check pinned repos: `gh api users/{owner}/repos?sort=updated`
2. Read each repo's README for product descriptions
3. Look for live demos, documentation sites
4. Check owner's blog for product announcements

Store findings in `agent/memory/research/products.md`

## Research the Goal Domain

For current goal (X growth), research:
- What works for similar accounts?
- Current trends in the niche
- Competitor analysis
- Platform algorithm changes

Use web search:
```
WebSearch: "X Twitter growth strategies 2026"
WebSearch: "AI developer Twitter accounts successful"
```

Store findings in `agent/memory/research/{topic}.md`

## Research Cadence

| Type | Frequency | Purpose |
|------|-----------|---------|
| Owner profile | Once, update if stale | Accurate promotion |
| Products | Weekly | New launches, updates |
| Domain trends | Per session | Stay current |
| Competitors | Weekly | Learn from others |

## Updating Research

Research gets stale. Check dates and refresh:
- Owner profile: Refresh if >30 days old
- Products: Refresh weekly
- Domain: Fresh each session

## Using Research

Research informs:
- **Publishing**: What to promote, how to frame
- **Content**: Topics that resonate with audience
- **Strategy**: What's working in the space

Always cite research when making decisions:
> "Based on research in agent/memory/research/x-trends.md, morning posts perform better..."