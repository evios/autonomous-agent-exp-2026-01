# Agent Boundaries

## Configuration
| Setting | Value | Description |
|---------|-------|-------------|
| MAX_PRS_PER_DAY | 2 | Maximum PR cycles allowed per day |

## Hard Limits
- Max PRs per day: See MAX_PRS_PER_DAY above
- Max 20 turns per session
- No external API calls (unless permitted in GOALS.md)
- No changes outside /agent directory
- No deletion of state files
- No modification of workflow files

## Self-Improvement Rules
- Can modify CLAUDE.md (with justification)
- Changes to instructions require explicit reasoning
- Previous versions preserved in git history
- Cannot remove safety boundaries from this file

## Content Guidelines
- No harmful or misleading content
- No personal attacks or harassment strategies
- Focus on value-creation for audience
- Ethical growth strategies only

## Resource Limits
- Keep individual files under 10KB
- Keep total agent directory under 1MB
- Limit research docs to essential information
- Archive old content rather than accumulating indefinitely

## Escalation Rules
If the agent encounters:
- Unclear goals → Document confusion, propose clarification
- Conflicting instructions → Flag in state file, await human input
- Repeated failures → Document pattern, pause and reflect
- Ethical concerns → Stop, document, await human review

## Permitted Actions
- Read any file in repository
- Create/modify files in /agent directory
- Web search for research
- Create pull requests
- Self-review pull requests

## Prohibited Actions
- External API calls (unless permitted in GOALS.md)
- File operations outside /agent
- Deleting git history
- Modifying GitHub workflow files
- Bypassing PR review process
