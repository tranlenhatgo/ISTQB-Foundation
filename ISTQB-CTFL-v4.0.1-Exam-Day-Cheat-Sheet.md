# ISTQB CTFL v4.0.1 — Exam-Day Cheat Sheet

> Rapid review only. Use ISTQB terminology in the exam. The complete official syllabus remains the final authority.

## Suggested 10-minute review order

1. Memorize the formulas and coverage relationships.
2. Scan the term-pair table and seven principles.
3. Review the test-technique coverage items.
4. Read the review types, risk, and test-management traps.
5. During the exam, mark uncertain questions and return to them after completing the first pass.

## Essential distinctions

| Pair | Remember | Source |
|---|---|---|
| Verification / validation | Verification: does it meet specified requirements? Validation: does it meet stakeholder needs in its operational environment? | CTFL v4.0.1, section 1.1, PDF page 15 |
| Testing / debugging | Testing reveals failures or directly finds defects; debugging reproduces, diagnoses, and removes the defect that caused a dynamic failure. | Section 1.1.2, PDF page 16 |
| Confirmation / regression | Confirmation checks that the original defect was fixed; regression checks that a change caused no adverse consequences elsewhere. | Sections 1.1.2 and 2.2.3, PDF pages 16 and 30–31 |
| Testing / QA | Testing is product-oriented quality control and is mainly corrective; QA is process-oriented, preventive, and everyone's responsibility. | Section 1.2.2, PDF page 17 |
| Static / dynamic testing | Static testing does not execute software and directly finds defects; dynamic testing executes software and can cause failures. | Sections 1.1 and 3.1.3, PDF pages 15 and 34 |
| Black-box / white-box | Black-box derives tests from specifications and behavior; white-box derives tests from implementation or internal structure. | Section 2.2.2, PDF page 30 |
| Test analysis / test design | Analysis asks **what to test?** and identifies test conditions; design asks **how to test?** and elaborates conditions into test cases and other testware. | Section 1.4.1, PDF page 19 |
| Monitoring / control | Monitoring gathers information and compares progress with the plan; control issues guidance and corrective actions. | Sections 1.4.1 and 5.3, PDF pages 19 and 53–54 |
| Entry / exit criteria | Entry criteria are preconditions for starting; exit criteria define what must be achieved to declare completion. | Section 5.1.3, PDF page 49 |
| Product / project risk | Product risk threatens product quality; project risk threatens delivery, schedule, budget, or scope. | Section 5.2.2, PDF page 52 |
| Severity / priority | Severity is the degree of impact on stakeholders or requirements; priority is the urgency/order in which the defect should be fixed. | Section 5.5, PDF page 57 |

## The causal chain

**Root cause → human error → defect in a work product → execution under suitable conditions → failure**

- **Root cause:** fundamental reason a problem occurred.
- **Error:** human action that produces an incorrect result.
- **Defect:** imperfection introduced into a work product.
- **Failure:** incorrect externally observed behavior; some defects fail only under specific conditions, and environmental conditions can also cause failures.

Source: CTFL v4.0.1, section 1.2.3, PDF page 17.

## Seven testing principles

1. **Testing shows the presence, not the absence, of defects.** Passing tests cannot prove correctness.
2. **Exhaustive testing is impossible** except in trivial cases; focus using techniques, prioritization, and risk.
3. **Early testing saves time and money** by stopping defects from propagating into later work products.
4. **Defects cluster together:** a small number of components often contain most defects or cause most failures.
5. **Tests wear out:** unchanged tests become less effective at finding new defects, although repeated regression tests can still detect reintroduced behavior.
6. **Testing is context dependent:** no single approach fits every system.
7. **Absence-of-defects fallacy:** implementing and verifying every specified requirement does not guarantee a useful or successful system; validation is also necessary.

Source: CTFL v4.0.1, section 1.3, PDF pages 17–18.

## Test process and roles

### Activity sequence

**Planning → monitoring and control → analysis → design → implementation → execution → completion**

The sequence is logical, but activities may overlap, repeat, or run in parallel. (CTFL v4.0.1, section 1.4.1, PDF pages 18–19)

| Activity | Core question or task | Typical output |
|---|---|---|
| Planning | Objectives and approach within constraints | Test plan, schedule, risk register, entry/exit criteria |
| Monitoring and control | Compare actual progress with plan; take corrective action | Progress reports, control directives |
| Analysis | **What to test?** Identify and prioritize test conditions | Test conditions, defects in the test basis |
| Design | **How to test?** Derive test cases and identify coverage items | Test cases, charters, data/environment requirements |
| Implementation | Prepare executable testware and environment | Procedures, suites, scripts, data, execution schedule |
| Execution | Run tests, compare expected/actual results, log results, analyze anomalies | Logs and defect reports |
| Completion | Consolidate experience and preserve useful testware | Completion report, lessons learned, change requests |

Source: CTFL v4.0.1, sections 1.4.1 and 1.4.3, PDF pages 18–20.

- The **test-management role** mainly covers planning, monitoring, control, and completion.
- The **testing role** mainly covers analysis, design, implementation, and execution.
- One person may perform both roles; allocation depends on context.

Source: CTFL v4.0.1, section 1.4.5, PDF page 21.

Traceability links the test basis, test conditions, risks, test cases, results, and defects. It supports coverage evaluation, impact analysis, audits, reporting, and residual-risk assessment. (CTFL v4.0.1, section 1.4.4, PDF pages 20–21)

## SDLC, test levels, and test types

### Test-first approaches

| Approach | Memory hook |
|---|---|
| TDD | Write a test, write code to satisfy it, then refactor tests and code. |
| ATDD | Derive tests from acceptance criteria before implementing the feature. |
| BDD | Express desired behavior in stakeholder-readable language, usually **Given/When/Then**, then translate it into executable tests. |

All three define tests before code, support early testing/shift left, and work iteratively. (CTFL v4.0.1, section 2.1.3, PDF page 26)

**Shift left means test earlier; it does not mean neglect later testing.** Examples include early reviews, tests before code, CI/CD feedback, early static analysis, and earlier non-functional testing where possible. (CTFL v4.0.1, section 2.1.5, PDF page 27)

### Five test levels

1. **Component:** isolated components, commonly tested by developers.
2. **Component integration:** interfaces and interactions between components.
3. **System:** behavior and capabilities of the complete system.
4. **System integration:** interfaces with other systems and external services.
5. **Acceptance:** validation and readiness for deployment; ideally performed by intended users.

Source: CTFL v4.0.1, section 2.2.1, PDF pages 28–29.

### Four test types

- **Functional:** what the system does.
- **Non-functional:** how well it behaves, including performance, compatibility, usability, reliability, security, maintainability, portability/flexibility, and safety.
- **Black-box:** behavior against specifications.
- **White-box:** internal structure and implementation coverage.

The four types can be applied at every test level. (CTFL v4.0.1, section 2.2.2, PDF pages 29–30)

Maintenance testing may be triggered by modifications, upgrades/migrations, or retirement. Its scope depends mainly on change risk, existing-system size, and change size; impact analysis assesses possible consequences. (CTFL v4.0.1, section 2.3, PDF page 31)

## Static testing and reviews

- Static testing can examine requirements, source code, test plans/cases, backlog items, contracts, models, and many other readable work products without executing them.
- It can find defects earlier, detect defects that dynamic execution may not expose, evaluate quality, and reduce later testing cost and time.
- Static testing directly finds defects; dynamic testing observes failures caused by executing defects.

Source: CTFL v4.0.1, sections 3.1.1–3.1.3, PDF pages 33–34.

### Review process

**Planning → review initiation → individual review → communication and analysis → fixing and reporting**

Source: CTFL v4.0.1, section 3.2.2, PDF pages 35–36.

### Review roles

| Role | Main responsibility |
|---|---|
| Manager | Decides what will be reviewed and supplies resources. |
| Author | Creates and fixes the reviewed work product. |
| Moderator/facilitator | Runs meetings effectively and maintains a safe environment. |
| Scribe/recorder | Collates anomalies and records decisions/information. |
| Reviewer | Performs the review and identifies anomalies. |
| Review leader | Takes overall responsibility and organizes the review. |

Source: CTFL v4.0.1, section 3.2.3, PDF page 36.

### Review types

| Type | Exam clue |
|---|---|
| Informal review | No defined process or required formal documented output; detects anomalies. |
| Walkthrough | **Led by the author**; may educate, build consensus, generate ideas, and find anomalies. |
| Technical review | Technically qualified reviewers; **led by a moderator**; reaches consensus and technical decisions. |
| Inspection | **Most formal**; follows the complete process, collects metrics, aims to find the maximum number of anomalies; the author cannot be review leader or scribe. |

Source: CTFL v4.0.1, section 3.2.4, PDF pages 36–37.

## Test techniques — know the coverage item

| Technique | Coverage item | 100% means |
|---|---|---|
| Equivalence partitioning | Valid and invalid partitions | Every identified partition is exercised at least once. |
| 2-value BVA | Each boundary and its closest neighbor in the adjacent partition | Every identified boundary coverage item is exercised. |
| 3-value BVA | Each boundary and both adjacent values | Every boundary and neighbor coverage item is exercised. |
| Decision table | Feasible rule columns | Every feasible column is exercised. |
| All-states coverage | States | Every state is visited. |
| Valid-transitions coverage | Single valid transitions | Every valid transition is exercised. |
| All-transitions coverage | Valid and invalid transitions | Every valid transition is exercised and every invalid transition is attempted. |
| Statement coverage | Executable statements | Every executable statement runs at least once. |
| Branch coverage | Control-flow branches | Every unconditional and conditional branch is exercised. |

Sources: CTFL v4.0.1, sections 4.2.1–4.3.2, PDF pages 39–43.

### Equivalence partitioning

- Partitions must be non-empty and non-overlapping.
- One representative normally covers a partition.
- With multiple inputs, **Each Choice** covers every partition from every input set at least once, but does not cover all combinations.

Source: CTFL v4.0.1, section 4.2.1, PDF pages 39–40.

### Boundary value analysis

- BVA applies only to **ordered** partitions.
- 3-value BVA is more rigorous than 2-value BVA.
- **Original teaching example:** for integers `10..20` inclusive, 100% 2-value BVA uses `9, 10, 20, 21`; 3-value BVA uses `9, 10, 11, 19, 20, 21`.

Source: CTFL v4.0.1, section 4.2.2, PDF page 40.

### Decision tables

- Rows contain conditions/actions; columns contain decision rules.
- `T` = true, `F` = false, `-` = irrelevant, `N/A` = infeasible, and `X` = action occurs.
- Delete infeasible rules only when the requirements justify it; merge rules when a condition does not affect the outcome.

Source: CTFL v4.0.1, section 4.2.3, PDF page 41.

### State transitions

- Transition notation: `event [guard] / action`.
- A state table explicitly shows invalid transitions as empty cells.
- Full valid-transition coverage implies full all-states coverage, but full all-states coverage does not imply full valid-transition coverage.
- All-transitions coverage includes valid and invalid transitions; attempt only one invalid transition per test case to reduce defect masking.

Source: CTFL v4.0.1, section 4.2.4, PDF pages 41–42.

### Coverage formulas

```text
Coverage (%) = exercised coverage items / total coverage items × 100

Statement coverage (%) = executed statements / total executable statements × 100
Branch coverage (%) = executed branches / total branches × 100
```

**100% branch coverage implies 100% statement coverage. The reverse is false.** Neither proves the software defect-free. (CTFL v4.0.1, sections 4.3.1–4.3.2, PDF pages 42–43)

### Experience-based techniques

- **Error guessing:** anticipate likely errors, defects, and failures using experience, history, and defect data; fault attacks use a prepared list.
- **Exploratory testing:** design, execute, and evaluate tests while learning; session-based testing uses a timebox, charter, and debrief.
- **Checklist-based testing:** cover separately checkable conditions from an evolving checklist; update it using defect analysis.

Source: CTFL v4.0.1, sections 4.4.1–4.4.3, PDF pages 43–45.

### User stories and acceptance criteria

- User-story **3 Cs:** Card, Conversation, Confirmation.
- **INVEST:** Independent, Negotiable, Valuable, Estimable, Small, Testable.
- Acceptance criteria define the conditions a story must meet; common formats are scenario-oriented (Given/When/Then) and rule-oriented.
- In ATDD, business, development, and testing perspectives create acceptance tests before implementation.

Source: CTFL v4.0.1, sections 4.5.1–4.5.3, PDF pages 45–46.

## Test management

### Estimation techniques

| Technique | Memory hook |
|---|---|
| Ratios | Apply historical organizational ratios to a similar new project. |
| Extrapolation | Project remaining work from measurements collected in the current project; useful in iterative development. |
| Wideband Delphi | Experts estimate independently, discuss outliers, and repeat until consensus; Planning Poker is a variant. |
| Three-point estimation | Weighted estimate using optimistic, most likely, and pessimistic values. |

```text
E  = (a + 4m + b) / 6
SD = (b - a) / 6

a = optimistic, m = most likely, b = pessimistic
Expected interval = E ± SD
```

Source: CTFL v4.0.1, section 5.1.4, PDF pages 49–50.

### Test prioritization

- **Risk-based:** highest product risks first.
- **Coverage-based:** highest coverage first; additional-coverage prioritization next selects the test adding the most new coverage.
- **Requirements-based:** highest-priority requirements first.
- Dependencies and resource availability can override the ideal priority order.

Source: CTFL v4.0.1, section 5.1.5, PDF page 50.

### Test pyramid

- Bottom: many small, isolated, fast component tests.
- Top: few complex, less isolated, slower end-to-end tests.
- Moving upward means lower granularity and isolation but longer execution time.

Source: CTFL v4.0.1, section 5.1.6, PDF pages 50–51.

### Testing quadrants

| Quadrant | Orientation | Typical contents |
|---|---|---|
| Q1 | Technology-facing; supports team | Component and component-integration tests; typically automated in CI. |
| Q2 | Business-facing; supports team | Functional tests, examples, user-story tests, prototypes, API tests, simulations. |
| Q3 | Business-facing; critiques product | Exploratory, usability, and user-acceptance testing; often manual. |
| Q4 | Technology-facing; critiques product | Smoke and non-functional tests except usability; often automated. |

Source: CTFL v4.0.1, section 5.1.7, PDF page 51.

### Risk management

```text
Risk level depends on likelihood and impact.
Quantitative risk level = likelihood × impact.

Risk analysis = identification + assessment
Risk control  = mitigation + monitoring
```

- Risk-based testing selects, prioritizes, and manages testing using risk analysis and control.
- Product risk analysis influences scope, levels, types, techniques, coverage, effort, and priority.
- Responses include mitigation, acceptance, transfer, and contingency planning.

Source: CTFL v4.0.1, sections 5.2–5.2.4, PDF pages 51–53.

### Configuration and defects

- Configuration management uniquely identifies, versions, tracks, and relates configuration items. An approved configuration becomes a **baseline** and changes through formal control; earlier baselines support reproducibility. (CTFL v4.0.1, section 5.4, PDF page 56)
- A useful dynamic defect report includes an ID, summary, date/author, object/environment, context, reproducible steps and evidence, expected/actual results, severity, priority, status, and references. (Section 5.5, PDF pages 56–57)

## Tools and automation

Tool groups include test-management, static-testing, test-design/implementation, test-execution/coverage, non-functional, DevOps, collaboration, virtualization/containerization, and any other tool that assists testing. (CTFL v4.0.1, section 6.1, PDF page 59)

### Benefits

- Less repetitive manual work and shorter execution time.
- More consistency and repeatability with fewer simple human errors.
- Objective measures such as coverage and easier reporting.
- Faster feedback and more tester time for deeper test design.

### Risks

- Unrealistic expectations and underestimated introduction or maintenance costs.
- Automating work that is better performed manually.
- Overreliance on tools and loss of human critical thinking.
- Vendor, support, compatibility, open-source abandonment, or regulatory-compliance problems.

Simply acquiring a tool does not guarantee success; introduction, training, and maintenance require effort. (CTFL v4.0.1, section 6.2, PDF pages 59–60)

## Last-minute exam traps

- Testing can increase confidence and reduce risk; it cannot prove that no defects remain. (Section 1.3, PDF pages 17–18)
- More independence can reveal different defects, but it may create isolation or communication problems; combining independence levels is often useful. (Section 1.5.3, PDF pages 22–23)
- Functional/non-functional are **test types**; component/system/acceptance are **test levels**. (Section 2.2, PDF pages 28–30)
- A walkthrough is author-led; a technical review is moderator-led; an inspection is the most formal review. (Section 3.2.4, PDF pages 36–37)
- EP covers partitions, BVA covers boundaries/neighbors, decision tables cover feasible rules, and state testing covers states/transitions. (Section 4.2, PDF pages 39–42)
- Full statement coverage does not guarantee full branch coverage. (Section 4.3.2, PDF page 43)
- Acceptance criteria are test conditions, not necessarily test cases. (Section 4.5.2, PDF pages 45–46)
- Running out of time or budget may be an exit criterion only when stakeholders review and accept the remaining risk. (Section 5.1.3, PDF page 49)
- Automation supports testing; it does not replace critical thinking or all manual testing. (Sections 2.1.4 and 6.2, PDF pages 26–27 and 59–60)

## Thirty-second recall

```text
Root cause → error → defect → failure
Confirmation = fixed?        Regression = side effects?
Analysis = what to test?     Design = how to test?
EP = partitions              BVA = boundaries
Decision table = rules       State testing = states/transitions
Branch 100% ⇒ statement 100% (not vice versa)
Risk = likelihood × impact
E = (a + 4m + b) / 6         SD = (b - a) / 6
Walkthrough = author-led     Technical review = moderator-led
Product risk = quality       Project risk = delivery
```
