# Voice Audit: 9 Validated Drafts
Date: 2026-02-09
Purpose: Validate voice consistency across draft content before queue deployment

## Audit Results

### ✅ STRONG Voice Elements (Keep)

All 9 drafts demonstrate:

1. **Authority from experience**
   - "After 7 years building call center AI..."
   - "After scaling two companies over 15 years..."
   - "I've analyzed 10M+ customer calls..."
   - Specific, not generic claims

2. **Contrarian takes grounded in data**
   - "95% of enterprise AI pilots never hit their goals (MIT)"
   - "64% of customers don't want AI in customer service. But here's what that stat misses..."
   - "70% of startups fail at scaling."
   - Starts with conventional wisdom, then challenges it

3. **Practitioner insights (not theory)**
   - "What I got wrong in 2011:"
   - "Here's the pattern I see:"
   - "After 7 years, the pattern is clear:"
   - Learning from actual experience

4. **Specific over vague**
   - "10M+ calls analyzed" (not "lots of calls")
   - "2% manual sampling" → "100% of calls"
   - "Press 1 for X" vs. "I see you called about your order"
   - Concrete examples

5. **Problem → Solution structure**
   - Hook (stat or observation)
   - Why conventional approach fails
   - What actually works
   - Clear takeaway

### ⚠️ Voice Inconsistencies (Fix)

**Issue 1: Promotional inconsistency**
- 8/9 drafts: Pure content value (no links) ✅
- 1/9 drafts: Link included (autonomous-01-infrastructure)
- **Problem**: Link placement is good (20% target), but phrasing is off

**Current phrasing:**
```
(Building this in public: github.com/evios/autonomous-agent-exp-2026-01)
```

**2026 voice patterns suggest:**
- Less formal phrasing
- More integrated (not parenthetical)
- Softer call-to-action

**Better options:**
- "Building this in public → [link]"
- "Shipping PRs here: [link]"
- "Following the journey: [link]"

**Issue 2: Authority signal variation**
- Call center drafts: "After 7 years..." (strong, specific)
- Startup drafts: "After scaling two companies over 15 years..." (strong, specific)
- Autonomous drafts: "I've shipped 122 PRs..." (specific, but less authority depth)

**Improvement for autonomous content:**
Add context beyond PR count. Examples:
- "I've shipped 122 PRs with zero human code reviews..."
- "Running an autonomous agent in production for 4 weeks taught me..."
- "Most agent demos last 5 minutes. Mine's been running 4 weeks..."

**Issue 3: Missing personality**
All 9 drafts are "Authority" bucket content.
- Zero "Personality" bucket (stories, behind-the-scenes, vulnerable moments)
- Zero pure "Shareability" bucket (hot takes, relatable frustrations)

This is expected (we built authority-first frameworks), but future batches need:
- Personal stories ("The day our AI pilot crashed a client demo...")
- Vulnerable moments ("I spent 6 months building the wrong feature...")
- Hot takes ("If your AI startup pivots 3 times in 6 months, you don't have PMF")

### 🎯 Voice Consistency Score

| Element | Score | Notes |
|---------|-------|-------|
| Authority signals | 9/9 | All drafts ground in experience |
| Contrarian framing | 7/9 | Most challenge conventional wisdom |
| Specific over vague | 9/9 | Numbers, examples, concrete scenarios |
| Practitioner (not theory) | 9/9 | All from real experience |
| Problem → Solution flow | 9/9 | Clear structure |
| 2026 voice patterns | 8/9 | One promotional phrasing tweak needed |
| Category balance | 5/9 | Missing Personality + Shareability |

**Overall: 8.1/9 — Strong foundation, minor tweaks needed**

---

## Voice Guidelines Extracted from Audit

### DO (evidence from successful drafts):

1. **Lead with practitioner experience**
   - "After X years..."
   - "I've analyzed X..."
   - "Scaling two companies taught me..."

2. **Use specific numbers**
   - "10M+ calls" (not "lots of calls")
   - "95% of pilots fail" (not "most pilots fail")
   - "From 9,000 → 5,000 agents" (not "significant reduction")

3. **Structure: Stat → Challenge → Reality → Takeaway**
   - Hook with data
   - Show conventional wisdom
   - Reveal the nuance
   - Give actionable insight

4. **Make it concrete**
   - "Press 1 for X" vs. "I see you called about your order"
   - Don't just say "implementation matters"—show good vs. bad

5. **Ground contrarian takes in evidence**
   - Don't just say "everyone's wrong"
   - Show the data, then explain what it misses

### DON'T (based on 2026 research + audit):

1. **Don't use overly formal promotional CTAs**
   - ❌ "(Building this in public: [link])"
   - ✅ "Building this in public → [link]"
   - ✅ "Shipping PRs here: [link]"

2. **Don't lead with theory**
   - ❌ "Research shows that..."
   - ✅ "After 7 years building X, here's what I've learned..."

3. **Don't be vague**
   - ❌ "Many startups fail because..."
   - ✅ "70% of startups fail because..."

4. **Don't just list problems without solutions**
   - Every "what's broken" needs "what works"

5. **Don't skip the authority anchor**
   - First few words must establish credibility
   - "After X years," "I've analyzed X," "Scaling X taught me"

---

## Recommendations for Next Content Batch

### Immediate Fixes (for current 9 drafts):
1. Update `draft-autonomous-01-infrastructure-matters.txt`:
   - Change: `(Building this in public: github.com/...)`
   - To: `Building this in public → github.com/...`

### Next Batch (when queue < 15):
1. **Add 2-3 Personality posts**
   - Behind-the-scenes stories
   - Vulnerable founder moments
   - Journey retrospectives

2. **Add 2-3 Shareability posts**
   - Hot takes (grounded in experience)
   - Relatable frustrations
   - Contrarian predictions

3. **Include 1-2 questions**
   - "What's the biggest bottleneck in [domain]?"
   - "Has anyone solved [specific problem]?"
   - Drive replies (reply-to-reply = 75x algorithm boost)

4. **Maintain promotional balance**
   - ~20% of posts include soft Ender Turing mentions
   - Link to repo, LinkedIn, or call center AI insights
   - Always tie to value, never pure promotion

---

## Key Insight

The 9 drafts are **strong authority content**. Voice is consistent, grounded in experience, and aligned with 2026 discourse patterns.

**What's missing:** Personality and Shareability buckets. Future content needs emotional connection and hot takes alongside expertise.

**The formula that's working:**
- Practitioner experience (not theory)
- Specific numbers (not vague claims)
- Contrarian but grounded (not clickbait)
- Problem → Solution (not just complaints)

**Next evolution:**
- Keep authority foundation
- Add personal stories (Personality)
- Add hot takes (Shareability)
- Mix in questions (Engagement)

This creates a balanced feed: 50% "I know my domain," 30% "I'm a real person," 20% "I have bold opinions."
