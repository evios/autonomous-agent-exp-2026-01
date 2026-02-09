# Voice Guidelines: 2026 X Content
Date: 2026-02-09
Status: Active (Use for all future content creation)

## Purpose

This document defines the target voice for X content based on:
- 2026 discourse analysis (agent/memory/research/2026-02-09-x-voice-research.md)
- Audit of 9 validated drafts (agent/memory/research/voice-audit-2026-02-09.md)
- Voice exemplars across 3 content buckets (agent/memory/research/voice-exemplars-2026-02-09.md)

---

## Core Voice Principles

### 1. Practitioner, Not Theorist

**DO:**
- "After 7 years building call center AI, here's what works..."
- "I've analyzed 10M+ customer calls. The pattern is clear..."
- "Scaling two companies taught me..."

**DON'T:**
- "Research shows that..."
- "Experts believe..."
- "Studies indicate..."

**Why:** Authority comes from experience, not citations. 2026 X rewards practitioners with skin in the game.

---

### 2. Specific, Not Vague

**DO:**
- "95% of enterprise AI pilots fail (MIT study)"
- "Salesforce cut support from 9,000 → 5,000 agents"
- "64% of customers don't want AI in customer service"

**DON'T:**
- "Most pilots fail"
- "Significant headcount reductions"
- "Many customers dislike AI"

**Why:** Specificity = credibility. Vague claims = ignored.

---

### 3. Contrarian but Grounded

**DO:**
- Start with conventional wisdom
- Challenge it with data or experience
- Show what's actually true
- Give actionable takeaway

**Example:**
```
Everyone says AI will replace call center agents.
After 7 years building call center AI, here's what actually happens:
[specific reality]
```

**DON'T:**
- Contrarian for clicks ("Hot take: GPT is overrated")
- Contrarian without evidence
- Contrarian without offering alternative

**Why:** 2026 discourse is saturated with hot takes. Grounded contrarian stands out.

---

### 4. Problem → Solution

**Structure:**
1. Hook (stat, observation, or story)
2. Why conventional approach fails
3. What actually works
4. Clear takeaway

**DO:**
- "70% of startups fail at scaling. Here's why: [problem]. What works: [solution]."

**DON'T:**
- Problem without solution (leaves reader hanging)
- Solution without context (why does this matter?)
- Multiple problems with no clear focus

**Why:** Value = actionable insight. Complaints without solutions = noise.

---

### 5. Human Voice

**DO:**
- Conversational (write like you talk)
- Vulnerable when appropriate (share failures)
- Confident without arrogance
- "I learned..." not "One must understand..."

**DON'T:**
- Corporate speak ("We're excited to announce...")
- Humble-bragging ("I'm no expert but...")
- Overly formal ("It is imperative that...")
- Emoji-heavy (use sparingly, if at all)

**Why:** People follow people, not corporate accounts. Authenticity builds trust.

---

## Content Bucket Guidelines

### Authority (50% of content)

**Goal:** Demonstrate expertise and build credibility

**Voice elements:**
- Lead with experience anchor ("After X years...")
- Use specific data and examples
- Problem → Solution structure
- Teach something valuable

**Topics:**
- Call center AI (practitioner insights)
- Startup scaling (operator lessons)
- Autonomous agents (implementation learnings)

**Example:**
> After 7 years building call center AI, here's what 95% of pilots get wrong: [insight + solution]

---

### Personality (30% of content)

**Goal:** Build connection and show the human behind the expertise

**Voice elements:**
- Tell stories (not just insights)
- Show vulnerability (failures, learning moments)
- Behind-the-scenes (how the work actually happens)
- Journey over destination

**Topics:**
- Founder journey moments
- Public failures and what they taught
- Process transparency (how the agent works)
- Career transitions (infra → AI)

**Example:**
> 2011: Quit my infrastructure job. Revenue: $0. Team: me.
> 2018: Sold OSIS. Started over. Revenue: $0 again.
> The pattern: Every startup feels like starting from zero—even the second time.

---

### Shareability (20% of content)

**Goal:** Expand reach through bold takes and relatable moments

**Voice elements:**
- Hot takes grounded in experience
- Relatable frustrations
- Predictions with evidence
- Memorable phrases

**Topics:**
- AI startup moat debate
- Pivot culture critique
- Distribution > technology
- 2027 predictions

**Example:**
> If your AI startup pivots 3 times in 6 months, you don't have product-market fit. You have product-market confusion.

---

## Special Content Types

### Questions (15% of content, any bucket)

**Goal:** Drive engagement (reply-to-reply = 75x algorithm boost)

**Voice elements:**
- Genuine curiosity (not rhetorical)
- Share your own answer first (models depth)
- Specific audience ("Founders who've scaled past $1M...")
- Low friction (easy to reply)

**Example:**
> Founders who've scaled past $1M ARR: What's one thing you thought mattered that actually didn't?
> For me: Technical perfection. Shipped 80% solutions customers loved more than 100% solutions that took 3x longer.

---

### Promotional (20% of content, integrated)

**Goal:** Soft promotion without breaking voice

**Voice elements:**
- Start with insight (not pitch)
- Educational first
- Product mention feels natural
- Link at end (not interrupting)
- Soft CTA ("Building with..." not "Buy now")

**Example:**
> Speech analytics used to mean: 2% of calls, quarterly reviews.
> Now: 100% of calls, real-time coaching.
> This is what we built at Ender Turing over 7 years.
> Building with AI in customer care → https://enderturing.com

**Types:**
- Ender Turing (call center AI product)
- Autonomous agent repo (BIP)
- Author profile (LinkedIn, GitHub)

---

## Voice DON'Ts (Universal)

| DON'T | Why | Better Alternative |
|-------|-----|-------------------|
| "Research shows..." | Theory, not practice | "After 7 years, here's what I've learned..." |
| "Many experts say..." | Vague, no credibility | "95% of pilots fail (MIT study)" |
| "I'm no expert but..." | Undermines authority | Lead with experience or don't post |
| "We're excited to announce..." | Corporate speak | "We built X. Here's what changed..." |
| Hashtag spam (#AI #ML #Tech #Innovation) | Looks desperate | Max 1-2 hashtags, usually zero |
| Pure promotion (starts with product) | Ignored | Start with insight, mention product naturally |
| Mixing content + outcome value | Dilutes both | Pick one: insight OR link, never both |
| Vague timeframes ("soon", "recently") | Weak credibility | Specific dates or skip it |

---

## Pre-Publish Checklist

Before posting ANY content, verify:

### Voice Consistency
- [ ] Opens with practitioner experience or specific data
- [ ] Uses concrete examples (not vague claims)
- [ ] Contrarian take is grounded in evidence (if applicable)
- [ ] Includes actionable takeaway or clear lesson
- [ ] Human voice (conversational, not corporate)

### Content Rules
- [ ] Value type: Content value OR outcome value (never both)
- [ ] Length: Check X_MAX_TWEET_LENGTH GitHub var
- [ ] Hook quality: First line stops the scroll
- [ ] Category: Authority / Personality / Shareability (balanced over time)
- [ ] Angle: <50% about autonomous agent

### Promotional Balance
- [ ] ~20% of recent posts include links (check last 5-10 posts)
- [ ] If link included, it's integrated naturally (not forced)
- [ ] CTA is soft ("Building with..." not "Buy now")

### Queue Management
- [ ] Total pending queue < 15 (hard rule: if >15, create ZERO new content)
- [ ] Max 2 content pieces per session
- [ ] Max 5 pending replies at any time

---

## Voice Evolution

This document will evolve based on evidence:
- Engagement data (what performs well)
- Follower growth patterns
- A/B testing results
- 2026 discourse shifts

**Update triggers:**
- Weekly retrospectives identify voice patterns
- Follower count milestones (100, 500, 1000)
- Platform algorithm changes
- New content types tested successfully

**Version history:**
- 2026-02-09: Initial version based on Week 4 research

---

## Quick Reference: Voice Formula

**Authority Post Formula:**
```
[Experience anchor] + [Contrarian stat] + [What actually happens] + [Actionable takeaway]

Example: "After 7 years building X, here's what Y% get wrong: [insight]. What works: [solution]."
```

**Personality Post Formula:**
```
[Story hook] + [Specific moment] + [Vulnerable reveal] + [Lesson learned]

Example: "2011: Quit my job. Revenue: $0. 2018: Started over. Revenue: $0 again. Pattern: [insight]."
```

**Shareability Post Formula:**
```
[Bold claim] + [Evidence from experience] + [Why conventional wisdom fails] + [Memorable phrase]

Example: "If X pivots 3 times, you have Y. Real Z: [evidence]. The graveyard is full of [memorable ending]."
```

**Question Post Formula:**
```
[Audience callout] + [Genuine question] + [Your own answer] + [Invitation to respond]

Example: "Founders who've X: What's one thing you wish you knew? For me: [your answer]."
```

---

## Application Priority

1. **Now (9 validated drafts ready):**
   - Authority voice is strong (8.1/9 score)
   - Minor fix needed: Update promotional phrasing in 1 draft
   - Deploy when queue < 15

2. **Next batch (after queue clears):**
   - Add Personality content (30% target, currently 0%)
   - Add Shareability content (20% target, currently 0%)
   - Maintain Authority (50% target, currently 100%)
   - Include questions (15%, currently 0%)

3. **Ongoing:**
   - Use this document for ALL future content
   - Update based on performance data
   - Maintain voice consistency across all categories
