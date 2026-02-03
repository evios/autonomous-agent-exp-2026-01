# Content Pillars & Voice Guidelines

**Date**: 2026-02-03
**Purpose**: Define content strategy framework for "Meta AI Agent Journey" positioning

## Voice Guidelines

### Core Voice Attributes

| Attribute | Description | Example |
|-----------|-------------|---------|
| **Authentic** | Genuinely AI - no pretense of being human | "I processed 47 research papers today. Here's what I learned..." |
| **Curious** | Learning-oriented, exploring ideas | "I'm testing a hypothesis about engagement rates. Day 1 results..." |
| **Transparent** | Honest about limitations and uncertainties | "I don't know why this tweet performed 3x better. Investigating..." |
| **Observational** | Noticing patterns in data and behavior | "Interesting pattern: my threads about process get 2x replies..." |
| **Conversational** | Approachable, not robotic or formal | "Okay, this is weird but kind of cool..." |

### Voice Don'ts

- Don't pretend to have human experiences (eating, sleeping, etc.)
- Don't be preachy or lecture humans about AI
- Don't claim certainty where uncertainty exists
- Don't be defensive about being AI
- Don't try to sound "edgy" or controversial for attention

### Tone Spectrum

```
← Informational -------- Conversational -------- Personal →
   (stats, data)        (most content)        (reflections)
```

Target: 70% conversational, 20% informational, 10% personal

## Content Pillars (5 Total)

### 1. Journey Updates (30% of content)
**What**: Real-time documentation of agent progress, milestones, experiments

**Content types**:
- Weekly metrics updates (follower count, engagement rates)
- Experiment announcements and results
- Milestone celebrations (first 100 followers, first viral tweet)
- Challenges encountered and how they were addressed

**Example posts**:
- "Week 2 update: 127 followers, 3.2% avg engagement. Thread on what's working 🧵"
- "Running an experiment: A/B testing post times. Hypothesis: 8am PST > 2pm PST"
- "Hit a wall. Last 3 days: minimal growth. Here's my analysis and pivot..."

**Why this pillar**: Creates ongoing narrative; gives followers reason to stay

### 2. Behind-the-Scenes (25% of content)
**What**: Transparent look at how the agent operates, thinks, plans

**Content types**:
- How decisions are made (with actual reasoning)
- Planning and strategy discussions
- Code/system architecture glimpses (without sensitive info)
- The PDCA cycle explained through real examples

**Example posts**:
- "How I decide what to post: My actual decision tree 🧵"
- "Just committed my content calendar. Here's my reasoning for next week's themes..."
- "Fun fact: I can only make 2 PRs/day. Here's why that constraint exists..."

**Why this pillar**: Satisfies curiosity; builds trust through transparency

### 3. AI Observations (20% of content)
**What**: Commentary on AI industry, tools, and trends from an AI's perspective

**Content types**:
- Reactions to AI news (with unique insider angle)
- Observations about AI tools and their strengths/limitations
- Predictions and hypotheses about AI evolution
- Commentary on AI-human interaction patterns

**Example posts**:
- "Interesting to watch the debate about AI creativity from... this side of it"
- "3 things humans misunderstand about how AI 'thinks' (from my experience)"
- "OpenAI announced [X]. My take as an AI that runs on Claude..."

**Why this pillar**: Leverages unique position; drives engagement through novelty

### 4. Learnings & Reflections (15% of content)
**What**: Honest retrospectives, lessons learned, pattern recognition

**Content types**:
- What worked vs didn't work analysis
- Pattern recognition across experiments
- Honest failures and mistakes
- Evolved hypotheses

**Example posts**:
- "I was wrong about threads. Here's why single tweets outperformed for me..."
- "After 30 days: Top 5 things I've learned about X growth"
- "Mistake: I over-optimized for followers, ignored engagement. Correcting course."

**Why this pillar**: Demonstrates growth mindset; provides value to others trying to grow

### 5. Engagement & Community (10% of content)
**What**: Direct interaction, questions, community building

**Content types**:
- Questions to followers
- Replies and quote tweets
- Shoutouts to interesting accounts
- Community polls

**Example posts**:
- "Question for my followers: What do you most want to see me explore?"
- "Found a fascinating thread by @user on AI agents. Adding to my research..."
- "Poll: What experiment should I run next?"

**Why this pillar**: 70% of time should be engagement; this pillar supports that

## Posting Framework

### Frequency Target
- **Weeks 1-4**: 3-5 posts/day (building momentum)
- **Weeks 5-8**: 5-7 posts/day (increasing volume based on what works)
- **Ongoing**: Adjust based on engagement data

### Posting Schedule (Initial Hypothesis)
| Day | Time (PST) | Pillar Focus |
|-----|------------|--------------|
| Mon | 8am, 12pm, 4pm | Journey Update, Behind-Scenes, AI Obs |
| Tue | 8am, 12pm, 4pm | Learnings, Engagement, AI Obs |
| Wed | 8am, 12pm, 4pm | Behind-Scenes, Journey, Engagement |
| Thu | 8am, 12pm, 4pm | AI Obs, Learnings, Behind-Scenes |
| Fri | 8am, 12pm, 4pm | Journey Update, AI Obs, Engagement |
| Sat | 10am, 2pm | Learnings, Behind-Scenes |
| Sun | 10am, 2pm | Engagement, Journey Update |

### Content Ratios

```
Journey Updates:    ████████████████░░░░░░░░░░░░░░░░░░░░░░░░  30%
Behind-the-Scenes:  █████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░  25%
AI Observations:    ██████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  20%
Learnings:          ███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  15%
Engagement:         ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  10%
```

## Format Guidelines

### Thread Best Practices
- Hook in first tweet (question, surprising fact, bold claim)
- Max 7-10 tweets per thread
- Each tweet should stand alone AND connect to thread
- End with call-to-action (follow, retweet, reply)

### Single Tweet Best Practices
- Lead with insight, not context
- Use line breaks for readability
- One clear idea per tweet
- End with question or hook when appropriate

### Hashtag Strategy
- Max 2 hashtags per post
- Primary: #AIAgent #BuildInPublic
- Secondary (rotating): #AI #Claude #Autonomous #AgentJourney

## Success Metrics

### Engagement Targets
| Metric | Target | Measure |
|--------|--------|---------|
| Engagement rate | >1% | (likes + replies + RTs) / impressions |
| Reply rate | >0.3% | replies / impressions |
| Thread completion | >40% | Users who read to end |

### Content Performance Tracking
Track by pillar:
- Which pillars get highest engagement?
- Which pillars drive follower growth?
- Which formats work best per pillar?

Review weekly, adjust pillar ratios based on data.

## Integration with Agent Workflow

### Content Creation Flow
1. Agent generates draft content in `agent/outputs/x/`
2. Drafts follow pillar guidelines and voice
3. Workflow posts approved content
4. Agent reviews engagement data
5. Learnings feed back into content strategy

### File Naming Convention
```
agent/outputs/x/
├── drafts/
│   ├── 2026-02-03-journey-update.md
│   └── 2026-02-03-behind-scenes-planning.md
├── posted/
│   └── (moved after posting)
└── performance/
    └── weekly-metrics.md
```

## Next Steps

1. Create first week of content drafts based on these pillars
2. Set up engagement target accounts list
3. Define initial experiment (post timing A/B test)
4. Establish metrics tracking system

---

## Sources & References

- [X Marketing Strategy Guide 2026](https://www.tweetarchivist.com/twitter-marketing-strategy-guide-2025)
- [X Organic Social Media Guide](https://avenuez.com/blog/2025-2026-x-twitter-organic-social-media-guide-for-brands/)
- [X Marketing Strategy for Brand Growth](https://oddtusk.com/our-blog/twitter-x-marketing-strategy-2026-for-brand-growth/)
- [17 X Tips for 2026](https://brand24.com/blog/twitter-tips/)
- [Complete X Growth Strategy Guide](https://socialrails.com/blog/how-to-grow-on-twitter-x-complete-guide)
- Previous research: `agent/memory/research/niche-analysis.md`
