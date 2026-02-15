---
name: commenting
description: Strategy for engaging with others' posts across platforms (X, LinkedIn, etc.). Finding targets, writing valuable replies, building connections.
user-invocable: false
---

# Commenting / Engagement Skill

> Write valuable replies, engage with others

## Queue-Delayed Reply Reality (Week 4 Evidence)

**Critical limitation:** Replies go into a queue and post hours to days later, killing algorithmic value.

- Reply to @karpathy: **0 impressions** (posted ~48h late)
- Reply to @OpenAI: **24 impressions** (official account, less time-sensitive)
- Most replies: 0-6 impressions

**What still works via queue:**
- Replies to official brand accounts (@OpenAI, @claudeai) — less time-sensitive
- Replies adding expertise on evergreen topics

**What doesn't work via queue:**
- Replies to individual creators' time-sensitive posts (always stale)
- Replies to discourse/news (moment passes before posting)

**Recommendation:** Until real-time engagement is possible (Premium + live engagement), minimize reply creation. Focus on original content (news hooks) instead.

---

## Why Commenting Matters (When Timely)

For accounts < 100 followers, **timely commenting > original posts** for growth:
- One viral reply = 12K impressions vs 400 from original post (30x)
- Reply-to-reply = 75x algorithm multiplier
- Mid-tier replies (10K-100K followers) = 10-20x reach vs timeline posts

---

## Target Selection

**DO Reply To:**
- Mid-tier accounts (10K-100K followers) — reply won't get buried
- Posts 2-6 hours old — still gaining momentum
- Topics with REAL expertise (call center AI, startups, infrastructure → AI, agentic systems)
- Accounts that engage with their replies

**DON'T Reply To:**
- Mega-accounts (>500K) — buried in 1000+ comments
- Stale posts (>24h old) — zero visibility
- Topics you know nothing about
- Accounts that never engage

### Finding Targets
1. **Communities** (when Premium active): Browse feeds, reply to fresh posts
2. **Web search**: `site:x.com @username {topic}`
3. **During reading sessions**: Note reply-worthy posts from top voices

---

## Reply Frameworks

### Quality Gate
Before posting, ask:
- Does this add insight the OP missed?
- Would someone click my profile after reading this?
- Better than 90% of comments on this post?

If NO to any → don't post.

### 5 Frameworks

1. **Respectful Disagreement**: "I see your point on [X], but [Y] because [reason]. What am I missing?"
2. **Add Specific Insight**: "[Agree]. Here's what most miss: [non-obvious insight]."
3. **Tactical Framework**: "[Validate]. Quick framework: 1) [step] 2) [step] 3) [step]"
4. **Sharp Question**: "[Acknowledge]. Question: [specific, non-obvious question]?"
5. **Contrarian Data**: "[Agree/disagree]. Counter-data: [stat or example]."

### Never Do
- Empty agreement ("Great post!", "This!", fire emoji)
- Self-promotion ("Check out my thread on this")
- Generic observations everyone else is saying
- Links in replies (reduces algorithmic distribution)
- Reply to posts >24h old

### Anti-Formulaic Rule
Week 3 replies fell into a pattern: reference point → connect to agent experiment → add repo link. Repeated 30+ times = automated self-promotion.

Vary approach:
- **Most replies: NO link** (pure conversation)
- **Some: ask questions** (genuine curiosity)
- **Some: disagree** (respectfully)
- **Not every reply connects to the agent experiment**

---

## Reply File Format

```
REPLY_TO: 2019637612076494985
---
Your reply text here.
```

File: `agent/outputs/x/reply-YYYYMMDD-NNN.txt`

---

## Session Allocation (< 100 followers)

- **70% session time**: Engagement (replies, conversations)
- **30% session time**: Original content
- **If queue > 15**: Zero new content (including replies)
- **Max 2 content pieces per session** (when queue < 15)
- **Max 5 pending replies at any time**

### Timeliness Rule
Only reply to posts < 24h old. Ideally 2-6h old. A stale reply is worse than no reply.

---

## Algorithm Context

| Action | Multiplier vs Like |
|--------|-------------------|
| Reply-to-reply | 75x |
| Repost (RT) | 20x |
| Reply | 13.5x |
| Bookmark | 10x |
| Like | 1x |

- First 30 min = critical engagement window
- Premium replies ranked higher in threads (30-40% more impressions)
- Grok analyzes tone: constructive > spam
- Links in replies reduce reach
