---
name: publishing
description: Content strategy for external platforms (X, LinkedIn, etc.). Voice, style, and growth strategies.
user-invocable: false
---

# Publishing Content Strategy

> Create original posts, voice, strategy

## P0 BLOCKER: X Premium Required

**Without X Premium ($8/mo), ALL growth strategies are blocked.**

Week 4 data (Feb 8-14): 324 tweets posted, 7 followers. 0 new followers this week despite 1,741 impressions.

Root cause (confirmed by analytics + Buffer study):
- Free accounts: 0% median engagement
- Our average post: ~10 impressions
- Profile visits: 1/day
- Communities access blocked (30,000x multiplier unavailable)

**Until Premium activates:**
1. Queue must stay manageable (drain existing content)
2. Minimize content creation (queue already has weeks of content)
3. Zero new research when queue > 10 (content library at 36KB already)
4. Focus on: memory cleanup, skill refinement, Premium prep materials
5. See `agent/outputs/premium-activation-playbook.md` for Day 1 setup guide

## What Actually Works (Our Data)

**News hooks get 3-6x average impressions:**
- Real estate crash + Claude Cowork: 65 imp
- $285B software stock wipe: 62 imp
- Opus 4.6 + Codex convergence: 60 imp
- Average post: ~10 imp

**Proven patterns:**
1. **Dollar-amount headlines** ($285B, $2B, $1T) — quantified impact stops scroll
2. **"X just happened" format** — timeliness beats depth
3. **Name-drops** (Karpathy, Altman, Anthropic) — moderate boost
4. **Short posts** outperform long framework posts by 3-6x
5. **Replies to official accounts** > replies to individuals

**What underperforms:** Long authority posts, PDCA/spec-eng without news hook, stale replies

---

## Publishing Flow

Content in `agent/outputs/{platform}/` is automatically posted by `process-outputs.yml`:

```
agent/outputs/x/tweet-20260203-001.txt → posted → agent/outputs/x/posted/tweet-20260203-001.txt
```

### File Naming
`{type}-{YYYYMMDD}-{NNN}.txt` (e.g., `tweet-20260203-001.txt`)

### Queue Management (HARD RULES)
1. **If pending queue > 15: CREATE ZERO NEW CONTENT.** No exceptions.
2. **Max 2 content pieces per session** (when queue < 15).
3. **Max 5 pending replies at any time.**

### File Rules
- Create files in `agent/outputs/{platform}/`
- Read `posted/` to check published content
- NEVER remove/modify files in `posted/`
- NEVER delete files
- NEVER try to post (workflow does this)

### Formats
- Single tweets: `tweet-YYYYMMDD-NNN.txt`
- Threads: `thread-YYYYMMDD-NNN.txt` (separated by `---`)
- Threads: 3-5 tweets max. Hard max 5 (10-part thread = 10 against 17/day rate limit)

---

## Value Rule: Never Mix Value Types

Each post is EITHER content value (insight, no link) OR outcome value (link/promotion). **Never both.**

- 80% of posts: Pure content value (zero links)
- 20% of posts: Outcome value with link

Evidence: Week 3 had ~100% posts with links. Week 2 had 4.3%. Target: 20%.

---

## Content Deduplication Rule (Week 5 Retro Evidence)

**Before creating any content, check the pending queue AND recent posted content for overlap.**

The queue frequently contains near-duplicate tweets covering the same topic with the same proof points. This wastes rate-limited posting slots and makes the account look like a bot.

**Hard rules:**
1. **No two pending tweets should cover the same topic.** Before adding a tweet, scan existing queue.
2. **Rotate proof points.** Don't use the same stat in consecutive posts. Our proof points are:
   - 95% → 67% accuracy gap
   - 7 years Voice AI
   - 500K+ interactions
   - 160+ PRs (now 280+)
   - 14 systems integration hell
   - 20% CSAT increase
   - Ender Turing
   **Max 2 posts using the same proof point per 10 posts.**
3. **Vary the angle.** Max 3 consecutive posts on the same domain (call center AI, autonomous agents, startup, infrastructure, AI trends).

Evidence: Week 5 queue audit found tweet-20260215-001 and tweet-20260215-010 covering identical "95%→67% accuracy, Ender Turing, production reality" with near-identical structure.

---

## Content Voice

Frame as: **human building products with autonomous tools** (not "AI doing everything").

**Use:** creating, building, generating, exploring, shipping, launching
**Avoid:** testing, experimenting, trying (passive/uncertain)
**Say:** product, tool, solution (never "content")

---

## Growth Strategies

### Build in Public (BIP)
This repo is BIP-worthy. ~25% of posts should be BIP updates covering: progress, learnings, failures, metrics, behind-the-scenes.

### 3-Bucket Content Strategy
| Bucket | Target | Example |
|--------|--------|---------|
| Authority | 40% | Frameworks, how-tos, industry insights |
| Personality | 30% | Stories, vulnerability, career journey |
| Shareability | 30% | Hot takes, contrarian, relatable |

### Content Patterns (Quick Reference)

**Personality Patterns:**
1. Present-Tense Vulnerability: [Struggle] + [Details] + [Learning]
2. Career Transition: [Was] → [Am] + [Bridge] + [What didn't change]
3. Founder Mistakes: [What went wrong] + [Timeline] + [What works]
4. Production vs Vendor: [Vendor claim] vs [Reality] + [Hidden 80%]
5. Evolution: [Used to think] → [Changed by] → [Now think]

**Shareability Patterns:**
1. Contrarian Take: [Common belief] is wrong. [Surprising truth]
2. Relatable Struggle: [Universal moment] + [Internal vs external] + [Lesson]
3. Timeline Comparison: [Then] vs [Now] → [Changed] → [Didn't change]
4. Numbered Insights: [Bold claim] + [N] non-obvious truths
5. Analogy: [Complex concept] is like [Simple analogy] + [Insight]

### Hook Engineering
First line = everything. Under 110 characters optimal.

**8 Hook Formulas:**
1. Bold Statement: "Nobody talks about this, but [insight]"
2. Contrarian: "[Belief] is wrong. Here's what actually works:"
3. Story: "[Time] ago I was [X]. Today [Y]..."
4. Question: "Want to know the real secret to [outcome]?"
5. Numerical: "I [achieved X] in [time] doing this"
6. Credibility: "I spent [resource] on [topic]. Here's everything."
7. Identity: "If you [situation], read this"
8. Pattern Interrupt: "Stop [practice]. Here's what works in 2026:"

### Discourse Framing
Coin memorable terms for your domain patterns:
- "The Integration Gap" (call center AI)
- "The Demo-to-Production Gap" (95%→67%)
- "Chaos Tolerance" (hiring)
- "Specification Engineering" (agent design)

### Content Angle Diversification
**Max 50% autonomous agent.** Other 50%: call center AI, startup, infrastructure→AI, broad AI trends.

---

## Algorithm Awareness (2026)

### Key Multipliers
| Factor | Impact |
|--------|--------|
| X Premium | 10x reach, 4x in-network, 2x out-of-network |
| Communities | 30,000x reach |
| Reply-to-reply | 75x multiplier |
| Retweets | 20x vs Like |
| Video (10+ sec) | 10x engagement |
| Threads | 40-60% more reach |

### What Hurts
- Free account (0% median engagement)
- External links (algorithm downgrades)
- Heavy hashtags
- Posting without engaging
- Stale replies (>24h)

### TweepCred (Hidden Reputation)
- New accounts start at -128 (Premium: -28 with +100 boost)
- Below +17: significant throttling
- Our account: likely below critical threshold (engagement debt from 300+ low-engagement posts)
- Recovery: Premium + Communities + high-quality engagement

### Time Decay
50% visibility loss every 6h. After 24h: ~6%. After 48h: dead.

---

## X Communities Strategy

**30,000x reach multiplier.** Requires Premium.

**6 Communities to join:** Build in Public (180K), AI/ML Builders (50-100K), Startup Founders (100K+), Call Center AI (10-20K), Infrastructure→AI (5-10K), Indie Hackers (150K).

**Growth formula:** Post 100% of content into Communities + "Also share with followers."

**Phases:** Manual posting (Phase 1) → Publer automation ($10/mo, Phase 2). Skip direct X API (broken, $42K+/mo).

---

## Profile Optimization

Profile = landing page. Without optimization, leak 50-70% of potential followers.

**Bio (recommended, 107 chars):** "Building Voice AI for call centers. 7 years, 500K+ interactions. Production reality > vendor hype."

**Pinned tweet:** Thread-style resume format. See `agent/outputs/premium-activation-playbook.md` for full templates and options.

**Profile conversion targets:** 15-25% (good-excellent range).

---

## Engagement-First Strategy

For accounts < 100 followers, engagement > content creation.

- **70% session time**: Engagement (replies, conversations)
- **30% session time**: Original content
- **If queue > 15**: 100% non-content work

See `@.claude/skills/commenting/SKILL.md` for reply strategy.

---

## Content Creation Checklist

Before committing any content:

1. **Queue check**: Pending > 15? STOP. Create zero content.
2. **Dedup check**: Does a similar tweet exist in queue or recent posted? If yes, skip or differentiate.
3. **Quality gate**: Would a stranger follow based on this post alone?
4. **Value type**: Content value (no link) OR outcome value (link). Never both.
5. **Link allocation**: Only ~20% of posts should include links.
6. **Proof point rotation**: Same stat as last 2 posts? Use a different one.
7. **Angle diversity**: Same domain as last 2 posts? Switch.
8. **Bucket balance**: Authority / Personality / Shareability. Personality is chronically under-represented.
9. **Hook**: First line stops the scroll? Under 110 chars?

---

## Promotional Content
~20% of posts include soft promotion. Templates:
- BIP: "[Insight]. Building this in public → [repo link]"
- Learning: "[Takeaway]. Following the journey: [repo link]"
- Profile: "[Observation]. More on building with AI → [profile link]"

## Author Info
```bash
gh api users/{owner}
```
See `ME.md` for links not in GitHub API. Never hardcode links.

## Gist Fallback
```bash
gh gist create --public -f "filename.md" content.md
gh gist edit <gist-id> -f "filename.md" updated.md
```
Track gist URLs in state file under "## External Outputs".
