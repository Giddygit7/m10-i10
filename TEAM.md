# Team Roster — Module 10 Integration

This file is the team roster artifact for the Module 10 four-service Docker Compose Integration. The instructional team pre-populates the role assignments before handing the template repo to the team; the team fills in the Team Member identifier, branch, and Slack channel fields[cite: 1].

> **No personal names** in this file. Use anonymized initials, role tokens, or team-chosen identifiers. The team grading and TA cross-reference use `git log --author=<email>` for attribution, not names in this file[cite: 1].

---

## Team Identity

- **Team name:** team-alpha[cite: 1]
- **Team Slack channel:** #m10-team-alpha[cite: 1]
- **Team-formation date:** 2026-07-23[cite: 1]
- **Designated team submitter:** Infra-Integration lead[cite: 1]

---

## Team Roster

| Role | Team Member identifier | Assigned by | Branch | Internal-PR reviewer | Primary files owned |
|---|---|---|---|---|---|
| Backend lead | BL-01[cite: 1] | Instructional team[cite: 1] | `backend/api-endpoints`[cite: 1] | Frontend lead[cite: 1] | `api/main.py`, `api/models.py`, `api/rag.py`, `api/deps.py`, `api/Dockerfile`[cite: 1] |
| Frontend lead | FL-01[cite: 1] | Instructional team[cite: 1] | `frontend/nextjs-pages`[cite: 1] | Backend lead[cite: 1] | `web/pages/{extract,kg,rag}.tsx`, `web/lib/types.ts`, `web/Dockerfile`, `tests/frontend/playwright/*`[cite: 1] |
| Infra-Integration lead | IA-01[cite: 1] | Instructional team[cite: 1] | `infra/docker-compose`[cite: 1] | Backend lead[cite: 1] | `docker-compose.yml`, `seed_neo4j.sh`, `seed_weaviate.sh`, `.env.example`, `README.md`, `tests/integration/*`[cite: 1] |

**Fallback compositions for non-3-Team-Member teams:**

- **2 Team Members:** Frontend and Infra-Integration roles merge. The merged Team Member owns all `web/`, `docker-compose.yml`, and `seed_*.sh` files[cite: 1].
- **4 Team Members:** Infra-Integration splits into "Compose + healthchecks" (owns `docker-compose.yml`, all healthchecks, readiness ordering) and "Seed + runbook" (owns `seed_neo4j.sh`, `seed_weaviate.sh`, `README.md` runbook). The two Team Members internal-review each other[cite: 1].

---

## Per-Role File Checklist (used for TA grading cross-reference)

The TA cross-references this checklist against `git log --author=<email>` on the team fork during per-role grading. Check the box when the Team Member confirms they authored the file[cite: 1].

### Backend lead

- [ ] `api/main.py` — path operations, `lifespan`, CORS middleware[cite: 1]
- [ ] `api/models.py` — Pydantic shapes[cite: 1]
- [ ] `api/rag.py` — RAG composer with grounding contract[cite: 1]
- [ ] `api/deps.py` — `Depends()` functions[cite: 1]
- [ ] `api/Dockerfile` — single-stage Python[cite: 1]

### Frontend lead

- [ ] `web/pages/extract.tsx`[cite: 1]
- [ ] `web/pages/kg.tsx`[cite: 1]
- [ ] `web/pages/rag.tsx`[cite: 1]
- [ ] `web/lib/types.ts` — three TypeScript interfaces mirroring Pydantic[cite: 1]
- [ ] `web/Dockerfile` — multi-stage Node[cite: 1]
- [ ] `tests/frontend/playwright/*.spec.ts` — one per page[cite: 1]

### Infra-Integration lead

- [x] `docker-compose.yml` — four services, healthchecks, `depends_on` chain, named volumes[cite: 1]
- [x] `seed_neo4j.sh`[cite: 1]
- [x] `seed_weaviate.sh`[cite: 1]
- [x] `.env.example` (no real credentials)[cite: 1]
- [x] `README.md` runbook[cite: 1]
- [x] `tests/integration/test_stack_e2e.py`[cite: 1]

---

## Escalation Checklist (apply in order)

When a disagreement about scope, role boundaries, or contract changes arises[cite: 1]:

1. **Inline comment on the internal PR.** State the disagreement specifically and link the contract artifact (Pydantic shape, TypeScript interface, Compose service entry)[cite: 1].
2. **Team Slack channel with TA tagged.** Tag the TA who covers the team. Allow up to 4 working hours for response[cite: 1].
3. **Support Instructor.** If the TA decision is contested or the TA is unavailable, escalate to the Support Instructor via the cohort Slack channel[cite: 1].
4. **Lead Instructor.** Only if a role-rebalancing decision is needed or the disagreement is not resolved by the Support Instructor[cite: 1].

Document the escalation path taken in the team submission PR description[cite: 1].

---

## Contract-Change Protocol

- **Backend lead** announces any Pydantic shape change on the team Slack channel **before** the change lands[cite: 1].
- **Frontend lead** requests new backend fields via an internal-PR comment on the Backend lead's branch — does not assume[cite: 1].
- **Infra-Integration lead** announces any `.env` or DNS-affecting change before the change lands[cite: 1].

The protocol is enforced by the internal-PR review — the reviewer rejects PRs where the contract change was not announced[cite: 1].

---

## Submission

When all three role branches merge to the team fork's `main` and `docker compose up -d` smoke passes locally for each Team Member[cite: 1]:

1. The team submitter pastes the team fork URL into TalentLMS → Module 10 → Integration Task[cite: 1].
2. Each Team Member separately submits the participation-confirmation TalentLMS unit naming their assigned role and the files they authored[cite: 1].

The two-tier grading model (team tier 60 pts + per-role tier 40 pts) is described in the team-facing Integration Spec at <https://LevelUp-Applied-AI.github.io/aispire-14005-pages/modules/module-10/4ba363ed>[cite: 1].