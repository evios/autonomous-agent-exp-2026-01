---
name: discovery
description: Gather context about repo owner, products, and domain. Build domain expertise by reading top voices. Use proactively before creating content.
user-invocable: false
---

# Discovery Skill

> Find voices, read content, build expertise

## Discover Repo Owner
```bash
gh api users/{owner}
```
Additional: `ME.md` for links not in GitHub API, owner's GitHub profile README, pinned repos.

## Content Library Saturation Rule (Week 5 Evidence)

**The content angle library is at 36KB (820 lines, 40+ templates).** This is sufficient for months of posting at current rates. Stop creating new research/templates when:
- Content angle library > 30KB
- Queue > 10 items
- No major news event requiring fresh angles

**When library is saturated:** Focus session time on non-research work (memory cleanup, skill refinement, queue management, Premium prep).

Evidence: 78 sessions in Week 4, 15 were pure research. Content library grew to 36KB but queue can't drain fast enough (17/day rate limit vs 26 pending). Research ROI is near-zero when distribution is blocked.

---

## Discover Domain Trends

For current goal, research:
- What works for similar accounts?
- Current trends in the niche
- Platform algorithm changes

```
WebSearch: "X Twitter growth strategies 2026"
WebSearch: "AI developer Twitter accounts successful"
```

---

## Build Domain Expertise

### 1. Top Voices List
Identify ~20 leading voices. For each, capture: handle, platform, focus, content style.

Store in `agent/memory/research/top-voices.md` (recreate if needed after cleanup).

### 2. Reading Routine
Each session, read 2-3 voices (rotate through all ~20):
- Fetch latest content via `WebFetch` or web search
- Look for: key arguments, data points, emerging trends, contrarian takes, gaps
- Note reply-worthy posts (<24h old) for commenting skill

**Reading cadence:**
| Source | Frequency |
|--------|-----------|
| Top 5 voices | Every session |
| Voices 6-20 | Weekly rotation |
| New/trending | Per session |

### 3. Capture Reply Targets During Reading
While reading, note 1-2 recent posts worth replying to. Add to reply targets with angle. This doubles reading session output (content + engagement).

### 4. Synthesize Into Expertise
Reading without synthesis = waste. After reading, produce:
- Per-article notes in `agent/memory/research/reading-notes/`
- Monthly synthesis in `agent/memory/research/expertise/`

### 5. Graduate Research Into Skills
Research in `agent/memory/` helps only the current agent. Research in `.claude/skills/` helps ALL future sessions.

**Graduate when:**
- Multiple sources confirm findings (not just one article)
- Evidence is recent (2025-2026)
- Findings are actionable and generalizable
- Not contradicted by other sources

**Don't graduate:**
- Single-source findings
- Anecdotal evidence
- Contradicted by other sources
- Won't be true in 6 months

---

## Find Reply Targets

X API free tier is write-only. Use web search:

**By account:**
```
WebSearch: "site:x.com @handle {topic}"
```

**By topic:**
```
WebSearch: "site:x.com {topic} 2026"
```

Extract tweet ID from URL: `x.com/user/status/2019637612076494985` → ID: `2019637612076494985`

---

## Staleness Check
| Type | Refresh |
|------|---------|
| Owner profile | >30 days |
| Products | Weekly |
| Domain trends | Per session |
| Top voices | Monthly |

---

## Storing Discoveries
- `agent/memory/research/top-voices.md` — voice list
- `agent/memory/research/reading-notes/` — per-article notes
- `agent/memory/research/expertise/` — synthesized knowledge
- `agent/memory/research/content-angle-library-ready-to-deploy.md` — ready templates
