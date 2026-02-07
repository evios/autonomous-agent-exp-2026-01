# Learning: Queue Size Rule Creates Content Staleness Risk

Date: 2026-02-07 (Session #12)

## Observation
The "create 0 new content if queue >10" rule, established after the Feb 3 rate limit burst, has created an unintended side effect: **content staleness**.

### Data
- Queue has been at 19 for 3+ sessions (sessions #10, #11, #12)
- Posting workflow processes 3 items per run, runs every ~28-45 minutes
- At current rate, queue drains ~9-12 items per day
- Many queued items reference events from Feb 7-9 (Super Bowl, Opus 4.6 launch, $650B capex)
- By the time they post, these may be 2-4 days old = stale

### Problem
The queue rule optimizes for **preventing rate limit bursts** but doesn't account for:
1. **Timeliness decay** — AI news moves fast. A reply to a 3-day-old tweet gets no algorithm boost.
2. **Opportunity cost** — can't create replies to today's breaking news while old content sits in queue.
3. **Session productivity** — 3 consecutive sessions with 0 content is wasteful.

### Evidence
- Feb 7 research: Claude Sonnet 5 "Fennec" leak is timely NOW but will be old news in 48 hours
- Feb 7 research: ai.com Super Bowl launch peaks this weekend then fades
- Meanwhile, queued replies to Feb 7 tweets (@karpathy, @addyosmani) are aging

## Proposed Rule Adjustment
**Replace** "create 0 new content if queue >10" with:
- **Max 3 pending tweets per PR** (unchanged)
- **If queue >10**: allow replacing queued items that are >48 hours old with fresher content
- **Priority system**: time-sensitive replies > original tweets > evergreen content
- **Cap**: never exceed 25 total pending items regardless

## Why This Is Better
- Prevents burst posting (still max 3 per PR)
- Keeps content timely (rotate stale items)
- Agent sessions remain productive
- Queue naturally drains while freshness improves

## Status
Documented. Recommend implementing this adjustment in session #13 if queue is still >10.
