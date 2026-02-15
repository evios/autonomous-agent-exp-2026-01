---
name: discovery
description: Gather context about repo owner, products, and domain. Build domain expertise by reading top voices. Use proactively before creating content.
user-invocable: false
---

# Discovery Skill

> Find voices, read content, build expertise

## Owner & Product Discovery

**Repo owner:**
```bash
gh api users/{owner}  # Returns: name, bio, blog, twitter_username, company, location
```
Additional: Check `ME.md`, GitHub profile README, pinned repos, blog/website.

**Owner's products:**
1. `gh api users/{owner}/repos?sort=updated`
2. Read READs, check live demos, docs sites
3. Check owner's blog for announcements

**Staleness:** Owner profile >30 days = refresh. Products = weekly refresh.

## Domain Trends Research

Use web search for current data:
- `"X Twitter growth strategies {current_year OR previous_year}"`
- `"AI developer Twitter accounts successful"`
- `"{niche} best practices {current_year}"`

**Refresh:** Fresh each session (trends change constantly).

---

## Become a Domain Expert

**The best content comes from deep knowledge.** Systematically read and learn from top voices.

### 1. Build a Top Voices List (~20 voices)

**Find them:**
- Web search: `"best {niche} blogs {current_year}"`, `"top {niche} Twitter accounts"`
- Follow-the-follows: who do top accounts retweet and cite?
- Curated lists: awesome-lists, blog rolls, newsletter recommendations

**Capture (store in `agent/memory/research/top-voices.md`):**
```markdown
## @handle / Name
- Platform: X / Blog / Newsletter / YouTube
- URL: [primary URL]
- Focus: [specific niche/angle]
- Why follow: [value]
- Content style: [threads, essays, hot takes, tutorials]
```

**Refresh:** Monthly. Drop inactive voices, add rising ones.

### 2. Regular Reading Routine

**Reading process (each session, pick 2-3 voices):**
1. Fetch latest content: `WebFetch` blogs/RSS, web search for X posts, check newsletter archives
2. Read with intent — look for:
   - Key arguments and insights
   - Data points worth citing
   - Emerging trends or shifts
   - Contrarian takes (agree/disagree?)
   - Gaps — what's NOT being discussed?

**Reading cadence:**
- Top 5 voices: Every session (skim latest, deep-read standouts)
- Voices 6-20: Weekly rotation (skim latest)
- New/trending: Quick scan for relevance

### 3. Capture Reply Targets While Reading (Critical)

**While reading, note reply-worthy posts.** Eliminates separate "find reply targets" step.

For each reading session:
1. Read the source for content notes
2. Note 1-2 recent posts (<48h old) worth replying to
3. Add to `agent/memory/research/reply-targets.md` with reply angle
4. Create reply files in same PR as content

**Evidence:** Week 2 retro — 0 replies in 2 weeks because reply discovery was treated as separate task.

### 4. Synthesize Into Notes (Optional, When Valuable)

**Per-article notes** (when something is noteworthy):
```markdown
# Reading: [Title]
Source: [URL] | Author: [name] | Date: [YYYY-MM-DD]

## Key Takeaways
- [insight 1]
- [insight 2]

## My Take
- Agree/disagree because [reasoning]
- Connects to [other knowledge]

## Content Ideas Sparked
- [post idea inspired by this]
```

**Store in:** `agent/memory/research/reading-notes/YYYY-MM-DD-slug.md`

**Monthly synthesis** (consolidate into domain expertise):
```markdown
# Domain Expertise: [Topic Area]
Last updated: [date]

## Current Consensus | Active Debates | Emerging Trends | Contrarian Opportunities | Key Stats & Data Points
```

**Store in:** `agent/memory/research/expertise/`

### 5. Turn Reading Into Content

| Reading output | Content use |
|----------------|-------------|
| Key takeaway | Authority post (your angle) |
| Disagreement | Contrarian take |
| Data point | Credibility boost |
| Trend spotted | First-mover post |
| Content gap | Fill it - own the topic |
| Inspired idea | Original with fresh framing |

**Rules:**
- Never plagiarize — add your perspective, experience, framing
- Credit sources when building on someone's idea
- Aim for 1 reading-inspired post per 3-5 articles consumed
- Goal: informed originality, not summary

### 6. Graduate Research Into Skills (High Leverage)

**CRITICAL:** Research in `agent/memory/research/` helps THIS SESSION. Research in `.claude/skills/` helps ALL FUTURE SESSIONS.

**When to graduate:**
1. Substantial research completed (15+ sources, multiple sessions)
2. Findings validated and actionable (not speculative)
3. Knowledge applies broadly (not one-off tactics)
4. Created templates, frameworks, or protocols

**Graduation protocol:** Follow "Skill Development (High Bar)" from CLAUDE.md. Validate thoroughly, evaluate alternatives, gather evidence, document reasoning.

**Which skill to update:**
- Publishing research → `.claude/skills/publishing/SKILL.md`
- Engagement research → `.claude/skills/commenting/SKILL.md`
- Discovery methods → `.claude/skills/discovery/SKILL.md` (this file)
- Integration/technical → `.claude/skills/integrations/SKILL.md`

**Graduation frequency:**
- After research sprint (3+ sessions on same topic)
- During weekly retros (audit if recent research should graduate)
- When skills feel outdated or incomplete
- NOT every session (reserve for validated, substantial findings)

**Why this matters:** Skills = highest leverage. One update improves ALL future sessions (permanent). Research without graduation = knowledge loss.

---

## Find Reply Targets

X API free tier is write-only. Use web search.

**Search process (find 2-3 targets/session):**

**By account** (prioritize top voices from `agent/memory/research/top-voices.md`):
```
WebSearch: "site:x.com @handle {topic}"
WebSearch: "site:linkedin.com/posts {name} {topic}"
```

**By topic** (trending conversations):
```
WebSearch: "site:x.com {topic} {current_year}"
WebSearch: "site:x.com autonomous agents building"
```

**By mention** (people talking about you/your project):
```
WebSearch: "site:x.com {repo_name}"
WebSearch: "site:x.com @{owner_handle}"
```

**Extracting IDs:**
- X: `https://x.com/user/status/2019637612076494985` → `2019637612076494985`
- LinkedIn: post URL or URN from share link

**Prioritization:**
1. Large accounts in your niche (more exposure)
2. Recent posts (24-48h — old replies get buried)
3. Active conversations (more eyeballs)
4. Topics where you have genuine insight
5. People who engaged with your posts (reciprocity)

**Store targets in `agent/memory/research/reply-targets.md`:**
```markdown
# Reply Targets
Last updated: YYYY-MM-DD

## Pending
- ID: 2019637612076494985 | @username | "Post summary..." | Reply angle: [your insight]

## Replied
- ID: ... | @username | Replied YYYY-MM-DD
```

---

## Storage Structure

- `agent/memory/research/top-voices.md` — curated voice list
- `agent/memory/research/reading-notes/` — per-article notes
- `agent/memory/research/expertise/` — synthesized domain knowledge
- `agent/memory/research/reply-targets.md` — posts to reply to
- `agent/memory/research/` — other research and analysis

## Using Discoveries

Discoveries inform:
- **Publishing**: What to promote, how to frame
- **Content**: Topics that resonate
- **Strategy**: What's working in the space
- **Expertise**: Deep knowledge = authoritative content
- **Originality**: Gaps and angles others aren't covering
