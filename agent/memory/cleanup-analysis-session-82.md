# Memory Cleanup Analysis - Session #82
Date: 2026-02-14
Current size: 600KB (target: 500KB, reduction needed: ~100KB or 17%)

## Context
Queue at 18 pending (ABOVE threshold). Following PDCA weekly retro protocol: when queue > 15, use session for non-content work. Memory cleanup is critical to prevent token budget bloat.

## Current State Assessment

Previous cleanup plan (Session #73) targeted 1.7MB → 500KB reduction. Current size is 600KB, indicating significant progress has been made. However, still 100KB over target.

### Largest Files (Top 10)
1. `reading-notes/2026-02-14-viral-content-psychology-shareability-triggers.md` - 38KB
2. `research/content-angle-library-ready-to-deploy.md` - 36KB
3. `research/2026-02-10-voice-ai-conversational-trends-feb-2026.md` - 23KB
4. `learnings/2026-02-11-personality-shareability-content-patterns.md` - 23KB
5. `research/reply-targets-2026-02-13.md` - 20KB
6. `reading-notes/2026-02-15-feb-2026-ai-discourse-fresh-updates.md` - 20KB
7. `research/2026-02-10-linkedin-strategy-founders-2026.md` - 19KB
8. `learnings/2026-02-10-specification-engineering-positioning.md` - 18KB
9. `learnings/weekly-status-2026-02-08-to-2026-02-10.md` - 17KB
10. `reading-notes/2026-02-13-top-voices-fresh-discourse-feb-2026.md` - 17KB

### Directory Breakdown
```
agent/memory/
├── hypotheses/       - Keep (active experiments)
├── learnings/        - ~150KB (retros, patterns, insights)
├── research/         - ~400KB (discourse, reply targets, domain knowledge)
│   └── reading-notes/ - ~150KB (research from reading top voices)
├── strategies/       - Unknown size
└── CLEANUP-PLAN.md   - 10KB (outdated, from when size was 1.7MB)
```

## Opportunities for 100KB Reduction

### 1. Delete Stale Reply Targets (~20KB)
**File**: `research/reply-targets-2026-02-13.md` (20KB, created Feb 13)

**Rationale**: Reply targets from Feb 13 are now 24+ hours old. Time decay function: 50% visibility loss every 6h. After 24h, posts have ~6% of initial visibility. After 48h, effectively dead algorithmically.

**Evidence**: Publishing skill documents: "Reply timeliness is critical — a reply posted 48+ hours after the original is nearly worthless." and "Only reply to posts < 6h old (ideal) or < 24 hours max."

**Action**: This file can be deleted. Fresher reply targets exist in:
- `reading-notes/2026-02-14-reply-targets-feb14.md` (11KB, created today)
- `reading-notes/2026-02-14-reply-targets-top-voices.md` (8KB, created today)

### 2. Archive Old Weekly Status (~17KB)
**File**: `learnings/weekly-status-2026-02-08-to-2026-02-10.md` (17KB)

**Rationale**: Weekly status reports are point-in-time snapshots. Insights should be in retros or skills. This is a Feb 8-10 status report — now outdated.

**Action**: Delete. Key insights should already be in weekly retros or skills.

### 3. Consolidate Duplicate Discourse Research (~40KB savings)
**Files**:
- `reading-notes/2026-02-13-feb-13-ai-discourse-current.md` (16KB, Feb 13)
- `reading-notes/2026-02-13-top-voices-fresh-discourse-feb-2026.md` (17KB, Feb 13)
- `reading-notes/2026-02-15-feb-2026-ai-discourse-fresh-updates.md` (20KB, Feb 15 - NEWEST)

**Rationale**: Three discourse research files covering overlapping timeframes (Feb 13-15). The Feb 15 file is the most recent and comprehensive. Feb 13 files are now 24h+ stale for reply purposes.

**Analysis needed**: Check if Feb 13 files contain unique content angles NOT in Feb 15 file. If Feb 15 supersedes, delete Feb 13 files.

**Potential savings**: 16KB + 17KB = 33KB

### 4. Graduate and Delete: Personality/Shareability Patterns (~23KB)
**File**: `learnings/2026-02-11-personality-shareability-content-patterns.md` (23KB)

**Check needed**: Is this content already in `.claude/skills/publishing/SKILL.md`? The skill mentions:
- 3-Bucket Content Strategy (Authority/Personality/Shareability)
- Content creation checklist includes "Category: Authority / Personality / Shareability"

**Action**: Read this file to verify if it's been graduated to skill. If yes, delete. If no, graduate key insights first.

### 5. Archive Outdated Cleanup Plan (~10KB)
**File**: `CLEANUP-PLAN.md` (10KB)

**Rationale**: Created Session #73 when size was 1.7MB. Now at 600KB, plan is outdated. Current session (#82) has fresh analysis.

**Action**: Delete or replace with this session's analysis.

### 6. Evaluate LinkedIn Strategy (~19KB)
**File**: `research/2026-02-10-linkedin-strategy-founders-2026.md` (19KB)

**Rationale**: Current goal is X growth to 5K followers. LinkedIn is a separate platform not currently being pursued. This research may be premature.

**Check**: Is LinkedIn mentioned in GOALS.md or active plans?

**Action**: If not active, delete. If future plan, keep but acknowledge it's not current priority.

## Recommended Deletion Order (Conservative Approach)

### Phase 1: Safe Deletions (~50KB, no risk)
1. ✅ Delete `research/reply-targets-2026-02-13.md` (20KB) - stale, superseded by Feb 14 targets
2. ✅ Delete `learnings/weekly-status-2026-02-08-to-2026-02-10.md` (17KB) - outdated status snapshot
3. ✅ Delete `CLEANUP-PLAN.md` (10KB) - outdated plan from Session #73
4. ✅ Delete `research/2026-02-10-linkedin-strategy-founders-2026.md` (19KB) - not current priority (X is the goal)

**Total Phase 1 savings**: ~66KB (brings size from 600KB → 534KB)

### Phase 2: Consolidation (~40KB, requires validation)
5. ⚠️ Check if `reading-notes/2026-02-13-feb-13-ai-discourse-current.md` (16KB) and `reading-notes/2026-02-13-top-voices-fresh-discourse-feb-2026.md` (17KB) are superseded by `2026-02-15-feb-2026-ai-discourse-fresh-updates.md` (20KB)
   - If yes, delete the Feb 13 files
   - If no, keep most recent

6. ⚠️ Check if `learnings/2026-02-11-personality-shareability-content-patterns.md` (23KB) is fully in publishing skill
   - If yes, delete
   - If no, graduate key insights first, then delete

**Total Phase 2 potential savings**: ~56KB (brings size to ~478KB, UNDER 500KB target)

## State File Cleanup

The state file was 35,775 tokens (exceeds 25K read limit). Target per CLAUDE.md: < 500 lines.

**Current approach**: Reading with offset/limit works but is inefficient.

**Recommended**: Archive session history older than 7 days to separate file. Keep only:
- Current metrics
- Planned next steps
- Last 2-3 session summaries
- Active blockers

**Action**: Trim state file in this session to < 200 lines per retro protocol.

## Implementation Plan

Given turn budget (currently turn 11/25), execute conservatively:

1. **Turns 11-13**: Execute Phase 1 deletions (4 files, ~66KB saved)
   - Note: Agent lacks `rm` permission, so create file listing for repo owner

2. **Turns 14-16**: Validate Phase 2 files (read to check if superseded/graduated)

3. **Turns 17-19**: Trim state file to < 200 lines, archive old session history

4. **Turns 20**: Create PR with cleanup analysis and recommendations

## Success Criteria
- Memory directory size < 500KB (currently 600KB)
- State file < 500 lines (currently 1000+ lines)
- No data loss (all deleted content conclusions preserved in skills or not needed)
- Clear documentation of what was removed and why

## Notes
- Agent lacks `rm` permission (confirmed in config.md)
- Cleanup recommendations document what SHOULD be deleted, but repo owner must execute
- Alternative: If deletion commands fail, document recommendations in PR for owner action
