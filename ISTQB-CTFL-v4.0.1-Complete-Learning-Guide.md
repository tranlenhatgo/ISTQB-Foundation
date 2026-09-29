# ISTQB Certified Tester Foundation Level (CTFL) v4.0.1 — Complete Learning Guide

> A standalone, exam-oriented course for learning CTFL from scratch. It follows the six examinable chapters and all learning objectives in the official v4.0.1 syllabus. Explanations and examples are original teaching material; terminology follows ISTQB usage.

## How to use this guide

1. Read Chapters 1–3 to build the conceptual foundation.
2. Spend extra time on Chapters 4 and 5: they contain all syllabus learning objectives assessed at **K3 (Apply)**.
3. Work every example with pencil and paper before reading the solution.
4. At the end of each chapter, answer the application practice without notes, then study the rationale—not only the letter of the answer.
5. Use the final checklist to find weak learning objectives and revisit the relevant section.
6. Keep the official sample sets A–D fresh for timed practice. Attempt a set before opening its answer document; afterward, explain why every distractor fails and log the learning objective behind each mistake.

### K-levels

- **K1 — Remember:** recognize, identify, or recall a term or fact.
- **K2 — Understand:** explain, compare, distinguish, classify, summarize, or select a correct example.
- **K3 — Apply:** carry out a technique or procedure in a familiar scenario.

Everything in Chapters 1–6 can be tested at least at K1. A learning objective marked K2 or K3 may be examined at that level and at lower levels.

## Contents

- [Chapter 1 — Fundamentals of Testing](#chapter-1--fundamentals-of-testing)
- [Chapter 2 — Testing Throughout the Software Development Lifecycle](#chapter-2--testing-throughout-the-software-development-lifecycle)
- [Chapter 3 — Static Testing](#chapter-3--static-testing)
- [Chapter 4 — Test Analysis and Design](#chapter-4--test-analysis-and-design)
- [Chapter 5 — Managing the Test Activities](#chapter-5--managing-the-test-activities)
- [Chapter 6 — Test Tools](#chapter-6--test-tools)
- [Final integration and exam preparation](#final-integration-and-exam-preparation)
- [Compact keyword glossary](#compact-keyword-glossary)

## Course map

| Chapter | Subject | Official minimum training time | Main learning outcome |
|---|---|---:|---|
| 1 | Fundamentals of Testing | 180 min | Understand why and how testing is performed |
| 2 | Testing Throughout the SDLC | 130 min | Adapt testing to lifecycle, levels, types, and maintenance |
| 3 | Static Testing | 80 min | Use reviews and static analysis concepts effectively |
| 4 | Test Analysis and Design | 390 min | Derive tests using black-box, white-box, experience-based, and collaborative approaches |
| 5 | Managing the Test Activities | 335 min | Plan, estimate, prioritize, manage risk, monitor, report, configure, and report defects |
| 6 | Test Tools | 20 min | Explain tool support and automation benefits and risks |

Total official instructional time: **1,135 minutes (18 hours 55 minutes)**.

## Running example: ShopEZ

Many examples use **ShopEZ**, an online store with these simplified rules:

- Registered customers sign in, browse products, add items to a cart, apply vouchers, pay, and track orders.
- Standard shipping is free for orders of at least $100; otherwise it costs $8.
- A voucher may depend on customer status, order value, and expiry date.
- After three consecutive failed sign-in attempts, an account is locked.

The example is intentionally small. In real work, assumptions should be confirmed with stakeholders rather than silently invented.

## Exam-thinking habits

- Read qualifiers: **best**, **most likely**, **first**, **minimum**, **all**, and **except** change the answer.
- Separate near-neighbors: testing vs debugging; verification vs validation; confirmation vs regression; product vs project risk; severity vs priority.
- For calculations, write the formula and denominator before substituting numbers.
- For techniques, identify the **coverage item**: partitions, boundaries and neighbors, decision-table columns, states/transitions, statements, or branches.
- Before reading the options closely, identify the likely learning objective and the task being requested: identify, distinguish, calculate, or derive.
- Obey the response instruction exactly. A “Select TWO” item is not complete until two independently supported choices have been selected.
- Reject absolute claims such as “testing proves there are no defects” unless the context truly makes them valid.
- Watch for distractors that are nearly correct but swap one ISTQB term, put a valid task in the wrong test activity, or state a true benefit for the wrong technique.

---
# Chapter 1 — Fundamentals of Testing

## Learning objectives

- **FL-1.1.1 (K1):** Identify typical test objectives.
- **FL-1.1.2 (K2):** Differentiate testing from debugging.
- **FL-1.2.1 (K2):** Exemplify why testing is necessary.
- **FL-1.2.2 (K1):** Recall the relation between testing and quality assurance.
- **FL-1.2.3 (K2):** Distinguish root cause, error, defect, and failure.
- **FL-1.3.1 (K2):** Explain the seven testing principles.
- **FL-1.4.1–1.4.5 (K2):** Explain test activities, context, testware, traceability, and roles.
- **FL-1.5.1 (K2), FL-1.5.2 (K1), FL-1.5.3 (K2):** Understand skills, the whole-team approach, and independence.

## 1.1 What testing is

**Software testing** is a set of activities used to discover defects and evaluate the quality of software work products. A work product being tested is the **test object**: it may be executable code, but also a requirement, model, user story, interface specification, database script, or test plan.

Testing is broader than running a program:

- **Static testing** evaluates a work product without executing the software, using reviews or static analysis.
- **Dynamic testing** executes software and compares actual with expected results.
- **Verification** asks, “Did we build the product according to its specified requirements?”
- **Validation** asks, “Did we build a product that satisfies users and stakeholders in its operational setting?”

A perfectly implemented wrong requirement passes verification but fails validation. For example, a specification may require order history to be kept for 30 days, and developers may implement exactly that. If the law requires seven years, the solution is verified against the specification but is not valid for the business context.

### Typical test objectives

Testing may aim to:

1. evaluate work products;
2. cause failures and find defects;
3. achieve required coverage;
4. reduce the risk of inadequate quality;
5. verify requirements;
6. verify contractual, legal, and regulatory compliance;
7. provide decision information to stakeholders;
8. build confidence in quality; and
9. validate that the product is complete and meets stakeholder needs.

The objective changes with context. A component test may seek branch coverage; acceptance testing may validate business readiness; a regulatory project may emphasize evidence and traceability.

## 1.2 Testing and debugging

Testing and debugging are related but separate.

| Activity | Purpose | Typical owner | Key result |
|---|---|---|---|
| Testing | Reveal failures or find defects and evaluate quality | Tester or anyone in a testing role | Test result, anomaly, defect information |
| Debugging | Find the cause of a failure, analyze it, and remove the defect | Usually a developer | Corrected work product |
| Confirmation testing | Check that the original defect was fixed | Preferably the original tester | Evidence that the previous failure no longer occurs |
| Regression testing | Check that a change did not cause adverse effects elsewhere | Tester/team, often automated | Evidence about side effects |

For a dynamic failure, debugging normally includes reproducing the failure, diagnosing the defect, and fixing it. If a review finds a defect directly, reproduction and diagnosis of a failure are unnecessary because no software was executed.

**Example:** ShopEZ displays a negative order total.

- Tester executes a voucher scenario and observes the negative total: **testing**.
- Developer finds that two discounts are applied in the wrong order and changes the calculation: **debugging**.
- Tester reruns the failing scenario: **confirmation testing**.
- Tester runs other voucher, tax, refund, and invoice tests: **regression testing**.

## 1.3 Why testing is necessary

Testing is a form of quality control. It can detect defects cost-effectively, provide direct information about product quality, support release decisions, represent user concerns, and demonstrate compliance.

The causal chain is important:

> **Root cause → human error → defect in a work product → execution under triggering conditions → failure**

- **Root cause:** a fundamental condition that makes a problem possible, such as inadequate training or ambiguous responsibility.
- **Error:** a human action that produces an incorrect result, such as misunderstanding an inclusive boundary.
- **Defect:** an imperfection in a work product, such as code using `>` instead of `>=`.
- **Failure:** externally visible incorrect behavior when a defect is executed, such as charging shipping on an order of exactly $100.

Not every defect produces a failure every time. A defective leap-year calculation may remain hidden until a relevant date is processed. Failures can also arise from environmental causes, such as radiation affecting firmware.

### Testing and quality assurance

- **Testing** is product-oriented and primarily corrective: evaluate work products, reveal problems, and support correction. It is a major form of **quality control**.
- **Quality assurance (QA)** is process-oriented and preventive: establish and improve processes so good work is more likely to produce a good product.

Test results serve both. Testing uses them to expose and resolve product defects. QA uses aggregated results to improve development and test processes. QA is everyone’s responsibility, not a synonym for the test team.

## 1.4 The seven testing principles

1. **Testing shows the presence, not the absence, of defects.** Passing tests reduces uncertainty but never proves perfection.
2. **Exhaustive testing is impossible.** Except for trivial cases, all inputs, paths, environments, and timing combinations cannot be tested. Use techniques, prioritization, and risk.
3. **Early testing saves time and money.** A requirement ambiguity removed in a review cannot propagate into design, code, tests, and production.
4. **Defects cluster together.** A small set of components often contains most defects or causes most operational failures. Use observed clusters as risk input, but do not ignore the rest.
5. **Tests wear out.** Repeating unchanged tests tends to find fewer new defects. Refresh test data and tests. Stable automated regression tests remain useful for detecting reintroduced behavior.
6. **Testing is context dependent.** A medical device, game, payroll batch, and disposable prototype need different objectives, rigor, independence, and documentation.
7. **Absence-of-defects fallacy.** A system can meet every written requirement yet fail because the requirements do not solve the users’ real problem. Verification must be combined with validation.

**Common trap:** “All tests pass, so the product is defect-free” violates principles 1 and 7. It may support a risk-based release decision, but it is not proof.

## 1.5 The test process

The activities form a logical model, not a one-way waterfall. They can overlap, repeat, and run in parallel.

### Test planning — objectives and approach

Define test objectives and choose an approach that can achieve them within scope, time, budget, people, tool, and risk constraints.

**Outputs:** test plan, schedule, risk register, entry and exit criteria.

### Test monitoring and test control — compare and correct

- **Monitoring:** collect information and compare actual progress with the plan.
- **Control:** take corrective action to meet objectives—for example, reprioritize tests after a risk change or add resources after an environment delay.

**Outputs:** progress reports, metrics, control directives, updated risk information.

### Test analysis — what to test?

Analyze the **test basis** (requirements, stories, designs, code, risks, etc.) to find testable features, defects, and prioritized **test conditions**. Define measurable coverage criteria and assess testability. Test techniques may already be used here to help identify test conditions.

### Test design — how to test?

Elaborate test conditions into test cases, charters, coverage items, and test-data requirements. Design test environments and identify infrastructure and tools. The same technique may support both analysis and design; the distinction is the purpose of the work, not ownership of a technique.

### Test implementation — make tests executable

Create or acquire test data and other testware; combine cases into procedures and suites; write manual or automated scripts; prioritize and schedule execution; build and verify the environment.

### Test execution — run, compare, log, analyze

Run tests, compare actual and expected results, log outcomes, and analyze anomalies before reporting them. A mismatch may be a product defect, a test defect, bad data, or an environment problem.

### Test completion — close and learn

At a milestone, summarize results, create backlog items for unresolved work, archive or hand over useful testware, return the environment to an agreed state, record lessons, and issue a completion report.

### Activity-to-work-product map

| Activity | Typical testware |
|---|---|
| Planning | Test plan, schedule, risk register, entry/exit criteria |
| Monitoring/control | Progress reports, control directives, risk updates |
| Analysis | Prioritized test conditions; test-basis defect reports |
| Design | Test cases, charters, coverage items, data/environment requirements |
| Implementation | Procedures, scripts, suites, data, execution schedule, environment items such as stubs and drivers |
| Execution | Test logs and defect reports |
| Completion | Completion report, lessons, improvement actions, change requests |

## 1.6 Context and traceability

Testing is shaped by stakeholders; team skill and availability; business domain and criticality; technology and architecture; project constraints; organizational practices; lifecycle; and tool availability. These factors influence techniques, coverage, automation, documentation, reporting, and independence.

**Traceability** links the test basis to test conditions, cases, results, risks, and defects. It enables:

- coverage evaluation—what requirements or risks are and are not tested;
- change impact analysis—what tests are affected;
- audits and governance;
- understandable status reporting;
- assessment of residual risk.

**Example trace chain:** requirement `R-17 free shipping ≥ $100` → boundary test `TC-42 $99.99` and `TC-43 $100.00` → result → defect `D-8` → fix build → confirmation result. Without these links, a team cannot easily prove coverage or retest safely after a change.

## 1.7 Roles, skills, teamwork, and independence

### Principal roles

- The **test management role** is accountable for the overall process, team leadership, planning, monitoring, control, and completion.
- The **testing role** is accountable for technical test analysis, design, implementation, and execution.

A role is not necessarily a job title. In an Agile team, tasks may be distributed, and one person may perform both roles.

### Essential tester skills

Testing knowledge; thoroughness and curiosity; communication and active listening; teamwork; analytical, critical, and creative thinking; technical knowledge; and domain knowledge. Communicate defects constructively: describe observable facts, impact, and reproducible evidence rather than blaming the author.

### Whole-team approach

Anyone with the required skills can perform a task, and everyone shares responsibility for quality. Testers collaborate with business representatives on acceptance tests and with developers on strategy and automation. Benefits include faster communication, shared knowledge, and combined skill sets. It does not eliminate the need for specialized expertise or, in some contexts, independent testing.

### Independence of testing

A useful scale is:

1. author tests own work—no independence;
2. peer in the same team—some independence;
3. tester outside the author’s team but inside the organization—high independence;
4. external tester—very high independence.

Independence can reveal different defects because the tester has different assumptions and biases. Drawbacks include isolation, adversarial relationships, developer disengagement from quality, bottlenecks, and blame. Most projects benefit from a mixture: developers test components, a test team tests the system, and users perform acceptance testing.

## Chapter 1 application practice

### Q1 — classify the chain

A pricing policy says VIP customers receive 15%, but an analyst writes 10% in the requirement. A developer correctly implements 10%, and a VIP customer pays too much. Which classification is correct?

A. The analyst’s action is an error, “10%” in the requirement is a defect, and overcharging is a failure.  
B. The analyst’s action is a defect, “10%” in the requirement is a failure, and overcharging is an error.  
C. The developer’s implementation is an error, the customer is a defect, and the policy is a failure.  
D. The missing review is a failure, “10%” is a root cause, and overcharging is a defect.

Select ONE option.

**Answer: A.** A human action is an error, the resulting flaw in a work product is a defect, and incorrect behavior during use is a failure. A missing policy review could be a root cause. *(CTFL v4.0.1, section 1.2.3, PDF page 17.)*

### Q2 — choose the activity

During testing, 58% of high-risk requirements are covered against a planned 80%. The manager assigns an additional tester and postpones low-risk tests. Which activities are involved?

A. Measuring coverage is test analysis; changing resources is test design.  
B. Measuring coverage is test execution; postponing tests is test completion.  
C. Measuring coverage is test monitoring; assigning resources and reprioritizing are test control.  
D. Both actions are test planning because the original plan is being changed.

Select ONE option.

**Answer: C.** Monitoring gathers information and compares actual progress with the plan; control takes corrective action to meet the test objectives. *(CTFL v4.0.1, section 1.4.1, PDF page 19.)*

### Q3 — identify the principle

A team has run the same regression pack for ten releases. It still catches reintroduced defects but rarely finds new ones. What should the team conclude?

A. Exhaustive testing has been achieved because no new defects are found.  
B. Tests wear out, so tests and data should be refreshed while useful regression checks are retained.  
C. Defects no longer cluster because the same tests continue to pass.  
D. The absence-of-defects fallacy means the regression pack should be deleted.

Select ONE option.

**Answer: B.** Repeating unchanged tests tends to reveal fewer new defects, but stable tests can remain useful for detecting regressions. *(CTFL v4.0.1, section 1.3, PDF page 18.)*

### Q4 — select independence

A safety-critical calculation requires objective evidence, but developers have unique algorithm expertise. What is a sound approach?

A. Let only the developers test because familiarity is always more valuable than independence.  
B. Let only an external team test because maximum independence is always optimal.  
C. Use developers for deep component testing and an independent team for assumption reviews and system-level testing.  
D. Prevent communication between developers and independent testers to avoid shared bias.

Select ONE option.

**Answer: C.** Multiple levels of independence combine developer familiarity with different perspectives while avoiding unnecessary isolation. *(CTFL v4.0.1, section 1.5.3, PDF page 22.)*

### Q5 — verification or validation?

ShopEZ implements “guest checkout disabled” exactly as specified. Usability research later shows that most target users abandon account creation. Which statement is best?

A. Verification failed because the implementation followed the specification.  
B. Validation succeeded because no implementation defect was reported.  
C. Verification may have succeeded, but validation failed; this illustrates the absence-of-defects fallacy.  
D. Both verification and validation succeeded because the requirement was implemented exactly.

Select ONE option.

**Answer: C.** Conformance to a specification is verification; satisfying user and stakeholder needs in operation is validation. A correct implementation of the wrong requirement may still be unsuccessful. *(CTFL v4.0.1, sections 1.1 and 1.3, PDF pages 15 and 18.)*

### Chapter 1 quick check

You are ready when you can explain the causal chain, name all seven principles, distinguish every test activity by its question or output, and explain why both teamwork and independence can improve testing.

---
# Chapter 2 — Testing Throughout the Software Development Lifecycle

## Learning objectives

- **FL-2.1.1 (K2):** Explain how the SDLC affects testing.
- **FL-2.1.2–2.1.3 (K1):** Recall universal good practices and test-first approaches.
- **FL-2.1.4–2.1.6 (K2):** Explain DevOps, shift left, and retrospectives.
- **FL-2.2.1–2.2.3 (K2):** Distinguish test levels, test types, confirmation, and regression testing.
- **FL-2.3.1 (K2):** Summarize maintenance testing and its triggers.

## 2.1 Lifecycle models and testing

An **SDLC model** is a high-level representation of how development phases and activities relate logically and chronologically. Examples include sequential models such as waterfall and the V-model; iterative models such as spiral and prototyping; and incremental models such as the Unified Process. Agile methods and practices include Scrum, Kanban, XP, TDD, ATDD, and BDD.

The lifecycle affects:

- scope and timing of test activities and levels;
- detail of test documentation;
- test techniques and approach;
- degree of automation; and
- tester roles and responsibilities.

### Sequential development

Requirements and design tend to be produced before executable code. Testers can review and design tests early, but most dynamic testing waits for implementation. Formal handoffs and documentation are usually greater. A V-model associates development work products with corresponding test activities—for example, system requirements with system testing.

### Iterative and incremental development

Each iteration may deliver a prototype or working increment. Static and dynamic testing can occur at several levels in every iteration. Frequent delivery creates a strong need for fast feedback and regression testing.

### Agile development

Change is expected. Teams favor lightweight work products, collaboration, automation, and continuous feedback. Manual testing often uses experience-based techniques because detailed specifications may not be available early. “Lightweight” does not mean “no evidence”; documentation should be sufficient for risk, communication, maintenance, and compliance.

### Good practices in any lifecycle

1. Pair every development activity with a corresponding test activity.
2. Give each test level distinct objectives to achieve breadth without wasteful duplication.
3. Start analysis and design for a level during the corresponding development phase.
4. Involve testers in reviewing drafts as soon as they exist.

## 2.2 Test-first development

All three approaches define tests before production code and implement early testing/shift left.

- **TDD:** write a small component test, write just enough code to pass, then refactor tests and code. It directs coding.
- **ATDD:** derive acceptance tests from acceptance criteria before implementing the story. Business, development, and testing perspectives collaborate.
- **BDD:** express desired behavior in stakeholder-readable language, commonly `Given / When / Then`, and often automate it.

Tests can remain as an automated regression suite. Do not confuse the focus: TDD is mainly code-facing, whereas ATDD/BDD emphasize externally valuable behavior and shared understanding.

## 2.3 DevOps and testing

**DevOps** aligns development—including testing—and operations around common goals. It combines culture, team autonomy, fast feedback, integrated toolchains, continuous integration (CI), and continuous delivery/deployment (CD).

Benefits for testing include rapid quality feedback, earlier component tests and static analysis, stable repeatable pipelines, increased visibility of non-functional behavior, reduced repetitive execution, and broad automated regression.

Challenges include the cost and skill needed to design and maintain the pipeline, tools, environments, and automated tests. Automation does not eliminate manual testing, especially exploratory, usability, and user-perspective testing.

## 2.4 Shift left

**Shift left** means performing testing earlier in the lifecycle, not eliminating later testing. Examples:

- review specifications from a tester’s perspective;
- write tests before code and use a test harness;
- run component tests and static analysis in CI;
- start feasible non-functional checks at component level;
- make testability a design concern.

It can increase early training and setup cost, but aims to reduce expensive late rework. Stakeholder support is necessary.

## 2.5 Retrospectives

At an iteration, release, project milestone, or when needed, participants discuss:

1. What worked and should be retained?
2. What did not work and should improve?
3. How will the team implement and follow up the improvement?

Record owners and due dates. Benefits include more effective and efficient testing, better testware and test bases, learning, team bonding, and improved cooperation. A meeting that produces no followed-up action is not effective continuous improvement.

## 2.6 Test levels

A **test level** is a group of test activities organized and managed together for software at a particular development phase. Levels can overlap.

| Level | Primary focus | Typical basis/object | Typical responsibility or environment |
|---|---|---|---|
| Component testing | Components in isolation | Code and component design | Usually developers; unit framework/test harness |
| Component integration testing | Interfaces and interactions among components | Architecture and interface design | Development environment; influenced by top-down, bottom-up, or big-bang integration |
| System testing | End-to-end behavior and complete-system quality | System requirements/specifications | Often independent team; representative environment |
| System integration testing | Interfaces with other systems and external services | System/interface agreements | Environment resembling operations |
| Acceptance testing | Validation and deployment readiness | Business needs, contracts, regulations, operations | Ideally intended users or relevant authorities |

Acceptance forms include user acceptance, operational acceptance, contractual acceptance, regulatory acceptance, alpha, and beta testing.

Distinguish levels by test object, objective, basis, characteristic defects/failures, approach, and responsibilities—not merely by who runs the test.

## 2.7 Test types

A **test type** groups activities aimed at a quality characteristic or test objective and can usually be applied at any level.

### Functional testing

Checks **what** the system should do: functional completeness, correctness, and appropriateness.

### Non-functional testing

Checks **how well** it behaves. CTFL lists performance efficiency, compatibility, usability (interaction capability), reliability, security, maintainability, portability (flexibility), and safety. Some checks can start early; others require a representative complete system. Late discovery can be expensive because architecture may be implicated.

### Black-box testing

Derives tests from specified externally observable behavior without using internal structure. Tests can remain useful when implementation changes but behavior does not.

### White-box testing

Derives tests from implementation or internal structure, such as code, architecture, workflows, and data flows. It measures structural coverage.

**Key distinction:** “level” answers *where/at what development scope?* “type” answers *what quality or perspective?* Security testing (type) can occur at component, integration, system, and acceptance levels.

## 2.8 Confirmation and regression testing

- **Confirmation testing:** demonstrate that the specific original defect has been fixed. It may rerun failed tests, add tests for the fix, or—under severe constraints—repeat only the reproducing steps.
- **Regression testing:** detect adverse consequences caused by a change in the changed area, other components, connected systems, or the environment.

Perform impact analysis to choose regression scope. Regression suites grow and repeat, making them strong automation candidates. Both confirmation and regression can be needed at every affected level.

## 2.9 Maintenance testing

Maintenance includes corrective changes, adaptation to environment changes, and improvements to performance or maintainability. Releases may be planned or emergency hot fixes.

Scope depends mainly on change risk, existing-system size, and change size. Maintenance-testing triggers are:

1. **Modification:** enhancement, corrective change, or hot fix.
2. **Upgrade or migration:** platform change, environment change, or data conversion.
3. **Retirement:** archive data and test restore/retrieval procedures during retention.

Maintenance testing evaluates the changed behavior and regression risk in unchanged areas. Impact analysis may also be performed before deciding whether to make the change.

## Chapter 2 application practice

### Q1 — level or type?

A team measures API response time between ShopEZ and a payment provider in a production-like environment. Which combination best classifies this test?

A. Component testing and functional testing  
B. System integration testing and non-functional performance-efficiency testing  
C. System testing and maintainability testing  
D. Acceptance testing and security testing

Select ONE option.

**Answer: B.** The test level is system integration testing because the focus is the interface between ShopEZ and an external service. The test type is non-functional testing because response time is a performance-efficiency characteristic. *(CTFL v4.0.1, sections 2.2.1 and 2.2.2, PDF pages 29–30.)*

### Q2 — test-first classification

Before coding, a developer writes a failing unit test for `calculateTax()`, adds code until it passes, and then refactors. Which test-first approach is specifically illustrated?

A. Acceptance test-driven development (ATDD)  
B. Behavior-driven development (BDD)  
C. Test-driven development (TDD)  
D. Risk-based testing

Select ONE option.

**Answer: C.** TDD uses a test-first cycle at the component level: write a test, write enough code to pass it, and then refactor. ATDD derives acceptance tests from acceptance criteria, while BDD commonly expresses desired behavior in natural language. *(CTFL v4.0.1, section 2.1.3, PDF pages 25–26.)*

### Q3 — choose confirmation and regression

A fix changes the voucher calculation. Which option correctly distinguishes confirmation testing from regression testing?

A. Rerun the exact voucher test that failed for confirmation; test other voucher classes, totals, tax, refunds, and invoices for regression.  
B. Test all unaffected features for confirmation; ask the developer to inspect the fix for regression.  
C. Rerun the exact voucher test for regression only; confirmation requires a new test environment.  
D. Review the voucher requirement for confirmation; rerun only the failed test for regression.

Select ONE option.

**Answer: A.** Confirmation testing checks whether the original defect was fixed. Regression testing checks whether the change caused adverse consequences elsewhere. A test can sometimes contribute to both objectives, but the objectives remain distinct. *(CTFL v4.0.1, section 2.2.3, PDF page 30.)*

### Q4 — shift-left decision

The team plans a system-level load test only one week before release. Which response best applies shift-left testing without eliminating necessary later testing?

A. Replace the system load test with a requirements review because static testing finds every performance problem.  
B. Move the complete production-scale load test into unit testing and remove all later performance testing.  
C. Review performance requirements and architecture early, run suitable component/API performance checks in CI, and retain representative system-level load testing.  
D. Keep all performance testing one week before release because shift left applies only to functional tests.

Select ONE option.

**Answer: C.** Shift left encourages earlier testing, such as early reviews and lower-level performance checks, but it does not mean later test levels should be neglected. System-level testing can expose risks involving integration, infrastructure, and production-like load. *(CTFL v4.0.1, section 2.1.5, PDF page 27.)*

### Q5 — maintenance scope

ShopEZ migrates its database while the application code remains unchanged. Which test scope is most appropriate?

A. No testing, because maintenance testing is needed only when application code changes.  
B. Only a static review of the migration script, because executing migrated data is unnecessary.  
C. Only complete system retesting, without prioritization or migration-specific checks.  
D. Test data conversion completeness and accuracy, platform compatibility, critical business flows, rollback/restore, and risk-based regression.

Select ONE option.

**Answer: D.** Migration is a maintenance trigger. Its scope can include testing the change, regression testing for side effects, and data migration tests; the unchanged application code does not remove those risks. *(CTFL v4.0.1, section 2.3.1, PDF page 31.)*

### Chapter 2 quick check

You are ready when you can independently classify a scenario by both level and type, explain how lifecycle changes the approach, and distinguish TDD/ATDD/BDD plus confirmation/regression.

---
# Chapter 3 — Static Testing

## Learning objectives

- **FL-3.1.1 (K1):** Recognize work products examinable by static testing.
- **FL-3.1.2–3.1.3 (K2):** Explain the value of static testing and compare it with dynamic testing.
- **FL-3.2.1 (K1):** Identify benefits of early and frequent stakeholder feedback.
- **FL-3.2.2 (K2):** Summarize review activities.
- **FL-3.2.3 (K1):** Recall principal review roles.
- **FL-3.2.4 (K2):** Compare review types.
- **FL-3.2.5 (K1):** Recall review success factors.

## 3.1 Static testing basics

Static testing evaluates a work product without executing the software. It includes:

- **Reviews:** people examine a work product, usually aided by a defined process and review techniques.
- **Static analysis:** a tool evaluates a structured work product such as source code, a model, or formally structured text.

Objectives include detecting defects, improving quality, assessing readability/completeness/correctness/testability/consistency, and building confidence. Static testing supports both verification and validation.

### What can be tested statically?

Almost any readable work product: requirements, user stories, acceptance criteria, source code, models, architecture, interface specifications, test plans, test cases, charters, contracts, product backlog items, and project documentation. Static analysis needs a structure it can parse. A third-party executable that cannot legally or practically be examined is not a suitable static test object.

**Examples**

- A review finds “orders above $100 receive free shipping,” which is ambiguous at exactly $100.
- A linter identifies an undeclared variable.
- A security analyzer identifies an unsafe buffer operation.
- A tester reviews acceptance criteria and detects that the error case has no expected behavior.

## 3.2 Why static testing is valuable

Static testing:

- detects defects early, before they propagate;
- finds defects dynamic testing may not expose, such as unreachable code or omissions in non-executable requirements;
- creates shared understanding and improves stakeholder communication;
- can evaluate maintainability and security;
- usually reduces total cost by avoiding later rework;
- can find some code defects more efficiently than execution.

A review has a direct effect and a preventive effect. Directly, it removes the current defect. Preventively, discussion helps the team learn and avoid similar errors.

## 3.3 Static versus dynamic testing

| Aspect | Static testing | Dynamic testing |
|---|---|---|
| Executes software? | No | Yes |
| Finds | Defects directly and anomalies requiring analysis | Failures; analysis/debugging locates underlying defects |
| Test objects | Executable and non-executable work products | Executable test objects only |
| Strong examples | Ambiguity, omission, unreachable code, interface mismatch, standards deviation | Incorrect runtime behavior, timing, memory/resource behavior, performance |
| When possible | As soon as a reviewable draft exists | When executable software and a suitable environment exist |

They complement one another; neither subsumes the other. Some defect types can be found only statically and others only dynamically. Static testing can expose an absent or contradictory requirement and unreachable code. Dynamic testing can reveal that a specified feature was not implemented and can measure response time under load; a document review alone cannot reproduce runtime performance. *(CTFL v4.0.1, section 3.1.3, PDF page 34.)*

Defects often cheaper/easier to find statically include contradictory or ambiguous requirements, poor modularization, undefined variables, duplicated/unreachable code, excessive complexity, coding-standard violations, parameter mismatches, some security vulnerabilities, and gaps in test coverage.

## 3.4 Early and frequent feedback

Without regular stakeholder feedback, the team can build an internally consistent product that no longer matches stakeholder needs. Feedback helps prevent requirement misunderstandings, respond to change earlier, focus on valuable features and significant risks, avoid late rework, and improve shared understanding.

Feedback is broader than a formal review meeting. Examples include backlog refinement, example mapping, pair work, prototype evaluation, review comments, and short demos. The important properties are timeliness, relevance, and action.

## 3.5 Generic review process

The process is tailored to the situation; a highly formal review uses more tasks and evidence.

1. **Planning**
   - define purpose, scope, work product, quality characteristics, focus areas, standards, effort, schedule, and measurable exit criteria;
   - choose the review type, participants, and approach.
2. **Review initiation**
   - distribute an accessible, stable version and supporting information;
   - ensure participants understand objectives, roles, procedure, and deadlines.
3. **Individual review**
   - each reviewer examines the work product and records anomalies, questions, and recommendations, possibly using a checklist or scenario.
4. **Communication and analysis**
   - discuss anomalies; decide whether each is a defect; assign status, owner, and action; evaluate work-product quality and whether follow-up is needed.
5. **Fixing and reporting**
   - create defect records where needed, correct the work product, verify exit criteria, and report results.

An **anomaly** is anything identified in review that differs from expectations. It becomes a confirmed defect only after analysis. Treating every comment automatically as a defect creates noisy metrics and unproductive debate.

## 3.6 Review roles

| Role | Core responsibility |
|---|---|
| Manager | Decides what will be reviewed and provides resources |
| Author | Created the work product and makes corrections |
| Moderator/facilitator | Runs effective meetings, manages time and conflict, maintains psychological safety |
| Scribe/recorder | Consolidates anomalies and records decisions and new findings |
| Reviewer | Examines the work product; may be a project member, specialist, or stakeholder |
| Review leader | Owns the review, selects participants, and organizes when/where it happens |

A person can hold more than one role unless the review type forbids it. In an inspection, the author cannot be the review leader or scribe.

## 3.7 Review types

Formality is a continuum. Choose based on objectives, risk, criticality, complexity, lifecycle, maturity, legal/audit needs, resources, work-product type, and culture.

### Informal review

No defined process or required formal output. Its main objective is detecting anomalies. Examples include desk checks and pair review. It is fast and flexible but less repeatable and auditable.

### Walkthrough

Led by the author. It may educate reviewers, explain usage, gain consensus, generate ideas, build confidence, and detect anomalies. Individual preparation may occur but is not mandatory.

### Technical review

Performed by technically qualified reviewers and led by a moderator. It emphasizes technical consensus and decisions, while also evaluating quality and finding anomalies.

### Inspection

The most formal type. It follows the complete process, aims to find the maximum number of anomalies, uses defined roles and exit criteria, collects metrics, and supports process improvement. The author cannot be review leader or scribe.

**Selection example:** A quick peer check of a low-risk internal script may be informal. A cross-team architecture choice may need a technical review. A safety-related requirement baseline may require inspection and audit evidence.

## 3.8 Success factors

- clear objectives and measurable exit criteria;
- no evaluation of participants as a review objective;
- suitable review type and participants;
- small review chunks that preserve concentration;
- timely, constructive feedback;
- enough preparation time;
- management support;
- trained participants;
- a learning culture rather than blame;
- effective facilitation;
- follow-up of actions and useful metrics.

Review efficiency falls when a 200-page document is sent five minutes before a meeting, when the author’s performance is being judged, or when findings have no owners.

## Chapter 3 application practice

### Q1 — static or dynamic?

Which option correctly classifies these findings: (a) a tool reports unreachable code; (b) a load tool records a 4-second response time; (c) a reviewer finds contradictory acceptance criteria?

A. (a) Static analysis; (b) dynamic non-functional testing; (c) review/static testing  
B. (a) Dynamic functional testing; (b) static analysis; (c) dynamic testing  
C. (a) Review; (b) static non-functional testing; (c) component testing  
D. (a) Confirmation testing; (b) regression testing; (c) system testing

Select ONE option.

**Answer: A.** Static analysis can identify code anomalies without execution; measuring response time requires dynamic execution; and reviewing acceptance criteria is a static testing activity. *(CTFL v4.0.1, section 3.1.3, PDF page 34.)*

### Q2 — order the process

A team has already distributed the correct document and role instructions during review initiation. What normally comes next, and what should reviewers produce?

A. Fixing and reporting; reviewers immediately modify the work product without recording findings.  
B. Planning; reviewers select the review type and estimate effort for the first time.  
C. Individual review; reviewers examine the work product and record anomalies, questions, and recommendations.  
D. Communication and analysis; reviewers close all findings before inspecting the work product.

Select ONE option.

**Answer: C.** Individual review follows review initiation. Reviewers assess the work product and document potential anomalies, recommendations, and questions before communication and analysis. *(CTFL v4.0.1, section 3.2.2, PDF page 35.)*

### Q3 — select the review type

An architect needs qualified peers to reach a decision on two security designs. An independent moderator will lead. Which type best fits?

A. Informal review  
B. Walkthrough  
C. Technical review  
D. Inspection

Select ONE option.

**Answer: C.** A technical review is performed by technically qualified reviewers, is led by a moderator, and can aim to reach consensus and make decisions on technical alternatives. An inspection is the most formal review type and primarily seeks maximum anomaly detection. *(CTFL v4.0.1, section 3.2.4, PDF pages 36–37.)*

### Q4 — identify role conflict

In a planned inspection, the author is also assigned as scribe. Which statement is correct?

A. This is required because only the author can record anomalies accurately.  
B. This is acceptable whenever the author is also the manager.  
C. This is not acceptable; in an inspection the author cannot act as the review leader or scribe.  
D. This is not acceptable because authors may never participate in any review activity.

Select ONE option.

**Answer: C.** An inspection has defined roles and rules, including that the author cannot act as the review leader or scribe. The author may still participate in other permitted ways. *(CTFL v4.0.1, sections 3.2.3 and 3.2.4, PDF pages 36–37.)*

### Q5 — improve a failed review

Reviewers received 150 pages on the morning of a two-hour meeting, found few issues, and argued defensively. Which improvement package is most likely to make the review effective?

A. Review smaller chunks, allow adequate individual preparation, define clear objectives and exit criteria, and use a trained moderator to support a safe discussion.  
B. Increase the document size, remove individual preparation, and let the author defend every disputed point.  
C. Measure success only by the number of meeting hours and require managers to overrule reviewers.  
D. Remove review objectives and checklists so participants can discuss any topic without constraints.

Select ONE option.

**Answer: A.** Review success factors include clear objectives, manageable work-product size, adequate preparation time, participant training, and facilitation that promotes a culture of learning rather than blame. *(CTFL v4.0.1, section 3.2.5, PDF page 37.)*

### Chapter 3 quick check

You are ready when you can order all review activities, map every principal role, distinguish the four review types, and explain why static and dynamic testing are complementary.

---
# Chapter 4 — Test Analysis and Design

## Learning objectives

- **FL-4.1.1 (K2):** Distinguish black-box, white-box, and experience-based techniques.
- **FL-4.2.1–4.2.4 (K3):** Use equivalence partitioning (EP), boundary value analysis (BVA), decision table testing, and state transition testing.
- **FL-4.3.1–4.3.3 (K2):** Explain statement testing, branch testing, and white-box value.
- **FL-4.4.1–4.4.3 (K2):** Explain error guessing, exploratory testing, and checklist-based testing.
- **FL-4.5.1–4.5.2 (K2), FL-4.5.3 (K3):** Explain collaborative stories and criteria; use ATDD to derive tests.

## 4.1 Technique families

A test technique helps answer **what to test** during analysis and **how to test it** during design. It identifies test conditions, coverage items, cases, and data so a relatively small but sufficient set is selected systematically.

- **Black-box/specification-based:** derive tests from specified behavior, without reference to implementation. Behavioral tests may survive an internal rewrite.
- **White-box/structure-based:** derive tests from code or another internal structure. Design or implementation must be available.
- **Experience-based:** use tester knowledge of the product, domain, developer mistakes, and historical failures. Effectiveness depends strongly on skill.

These families are complementary. A black-box test can expose missing or wrong behavior, a white-box test can expose untested code paths, and experience can target weaknesses the formal models omitted.

## 4.2 Equivalence partitioning (EP)

EP divides a data domain into non-empty, non-overlapping **equivalence partitions** whose values are expected to be processed in the same way. One representative value is normally sufficient for each partition. Partitions can describe inputs, outputs, configurations, internal values, time, or interface parameters; they may be continuous/discrete, ordered/unordered, finite/infinite. A partition need not be one continuous range: for example, “every tenth value but not every twentieth value” can be a discrete partition if all such values receive the same behavior.

A **valid partition** contains values the system should process as valid. An **invalid partition** contains values expected to be rejected, ignored, or otherwise handled as invalid. The team must agree on these meanings.

### Procedure

1. Identify the data element and its full relevant domain.
2. Read every rule that changes processing.
3. Split the domain wherever expected behavior changes.
4. Check partitions are non-empty, mutually exclusive, and collectively cover the intended domain.
5. Choose at least one representative from every valid and invalid partition.
6. Calculate coverage:

`EP coverage = exercised partitions / identified partitions × 100%`

Exercise invalid partitions separately where practical. Combining several invalid values in one test can mask which input caused the rejection. *(CTFL v4.0.1, section 4.2.1, PDF pages 39–40.)*

### Worked example

Rule: “Customers aged 18 through 65 inclusive may register.” Assume integer ages and that all integers are accepted as input.

| Partition | Range | Expected behavior | Representative |
|---|---:|---|---:|
| P1 | age < 18 | Reject as underage | 12 |
| P2 | 18 ≤ age ≤ 65 | Accept | 40 |
| P3 | age > 65 | Reject for this product | 70 |

Tests at 12 and 40 cover 2 of 3 partitions: **66.7% EP coverage**. A test at 70 is needed for 100%.

### Multiple inputs and Each Choice coverage

Suppose payment method partitions are card, wallet, and bank transfer; customer type partitions are guest and registered. **Each Choice** requires every partition from each set to appear at least once. The following three tests achieve it:

1. card + guest;
2. wallet + registered;
3. bank transfer + guest.

This does **not** cover all 3 × 2 = 6 combinations. Do not claim combination coverage when only Each Choice is achieved.

First remove infeasible combinations imposed by business rules. Then choose feasible tests that cover as many still-uncovered partitions as possible. Constraints can make the minimum Each Choice suite larger than the largest number of partitions in any one input set; never select an impossible combination merely to reduce the test count.

### Common EP mistakes

- testing only valid partitions;
- creating overlapping ranges (`0–10` and `10–20`);
- leaving gaps;
- assuming all values in a partition are handled identically when another rule splits it;
- choosing several random values in one partition while leaving another untested.

## 4.3 Boundary value analysis (BVA)

BVA exercises the boundaries of **ordered** partitions because off-by-one and incorrect relational operators often appear there. A partition’s minimum and maximum are its boundary values.

### 2-value BVA

For each boundary, exercise the boundary and its closest neighbor in the adjacent partition. For the age rule 18–65 inclusive, the unique coverage items are:

`17, 18, 65, 66`

Coverage is:

`2-value BVA coverage = exercised identified boundary values / total identified boundary values × 100%`

The name “2-value” describes two coverage items at each boundary, not two values for the whole input.

Include a known endpoint of the input domain when it is itself a partition boundary. For a password-length domain starting at zero, `0` is a boundary even if the main validity rule is “6 through 12.” Existing tests or starting conditions count only when they actually exercise the coverage item. *(CTFL v4.0.1, section 4.2.2, PDF page 40.)*

### 3-value BVA

For each boundary, exercise the boundary and both neighbors. Unique values are:

`17, 18, 19, 64, 65, 66`

It is stronger because it checks behavior on both sides and just inside the partition. For example, if `x ≤ 10` is wrongly coded as `x = 10`, tests 10 and 11 from 2-value BVA do not expose the defect; 3-value BVA adds 9, which does.

### Worked coverage example

For valid quantity 1–100 inclusive, 3-value BVA items are `0, 1, 2, 99, 100, 101`. If tests exercise `0, 1, 2, 100`, coverage is `4/6 = 66.7%`.

### Common BVA mistakes

- using BVA on unordered categories such as colors;
- forgetting that inclusive/exclusive wording changes the boundary;
- counting test cases rather than unique coverage items;
- applying only “min and max” and omitting adjacent-partition neighbors required by the selected variant.

## 4.4 Decision table testing

Decision tables model rules where combinations of conditions produce actions. Conditions and actions are rows; each column is a **decision rule**.

Limited-entry notation commonly uses:

- condition `T` or `F`;
- `–` for irrelevant;
- `N/A` for infeasible;
- action `X` for occurs and blank for does not occur.

A full table with *n* independent Boolean conditions has up to `2^n` rules. Remove infeasible combinations. Columns with the same actions may be merged when differing conditions are irrelevant.

### Procedure

1. List conditions with precise yes/no meanings.
2. List possible actions/outcomes.
3. Enumerate condition combinations.
4. Mark infeasible combinations and determine actions.
5. Check for gaps and contradictions with stakeholders.
6. Create at least one test for every feasible rule.

`Decision-table coverage = exercised feasible columns / total feasible columns × 100%`

### Worked example: voucher

Rules:

- A valid voucher gives 10% discount.
- Premium customers with a valid voucher receive free shipping as well.
- An invalid voucher produces an error and no discount.

| Conditions/actions | R1 | R2 | R3 |
|---|:---:|:---:|:---:|
| Voucher valid? | T | T | F |
| Premium customer? | T | F | – |
| Apply 10% discount | X | X |  |
| Free shipping | X |  |  |
| Show voucher error |  |  | X |

The premium condition is irrelevant when the voucher is invalid, so two invalid-voucher columns can be merged. Three tests achieve 100% feasible-rule coverage.

### Strengths and limits

Decision tables systematically reveal overlooked combinations, missing rules, and contradictions. Their weakness is combinatorial growth; minimize where logically safe or prioritize by risk.

## 4.5 State transition testing

A state model describes possible **states** and **transitions**. A transition is triggered by an event, optionally constrained by a guard and producing an action:

`event [guard] / action`

A state table places states in rows and events in columns. Cells show target state/action; empty cells show invalid transitions. A test is usually an event sequence and may cover several transitions.

### Example: account lock

Simplified states: `Active-0Failures`, `Active-1Failure`, `Active-2Failures`, `Locked`.

- failed login advances the failure count;
- successful login from any active state returns to `Active-0Failures`;
- a third consecutive failure moves to `Locked`;
- admin reset moves `Locked` to `Active-0Failures`.

A test sequence `fail, fail, success, fail, fail, fail` verifies reset-after-success and then locking. State matters: the third `fail` has a different result depending on the preceding sequence.

### Coverage criteria

1. **All states coverage:** every state is visited.
2. **Valid transitions coverage (0-switch):** every valid single transition is executed.
3. **All transitions coverage:** every valid transition is executed and every invalid transition is attempted.

`coverage = exercised coverage items / total coverage items × 100%`

Strength relation:

`all transitions ⇒ valid transitions ⇒ all states`

The reverse does not hold. One state can be reached through one transition while another transition into it remains untested. When testing invalid transitions, use one invalid transition per test where possible to reduce defect masking.

For event-sequence questions, trace from the stated initial state one event at a time and mark each valid transition only when it is actually traversed. Stop or apply the model’s defined behavior after reaching a terminal state; later event names do not automatically create coverage. To minimize the number of tests, look for one executable path that chains several uncovered transitions before starting a new test. *(CTFL v4.0.1, section 4.2.4, PDF pages 41–42.)*

## 4.6 White-box testing

### Statement testing and coverage

Coverage items are executable statements.

`statement coverage = executed statements / total executable statements × 100%`

At 100%, every executable statement ran at least once. That does not prove each statement is correct and may miss data-dependent defects or decision outcomes.

Coverage percentages from separate tests describe sets and cannot simply be added. If one test covers 40% of statements and another covers 65%, their combined coverage is between 65% and 100%; because `40 + 65 > 100`, at least 5% of the statements must overlap. *(CTFL v4.0.1, section 4.3.1, PDF page 42.)*

### Branch testing and coverage

A branch is a transfer of control in a control-flow graph, conditional or unconditional. Conditional branches include true/false `if` outcomes, switch/case outcomes, and loop continuation/exit.

`branch coverage = executed branches / total branches × 100%`

100% branch coverage subsumes 100% statement coverage, but 100% statement coverage does not necessarily imply 100% branch coverage.

### Worked example

```text
discount = 0
if customer_is_premium:
    discount = 10
final_price = price - discount
```

One test with `customer_is_premium = true` executes every statement: 100% statement coverage. It exercises the true outcome but not the false outcome of the decision, so it does not achieve 100% branch coverage. Add a false test.

### Value and limitation

White-box testing objectively measures implementation coverage and can find defects even when specifications are incomplete. It can also be used statically, for example by dry-running code, pseudocode, or another control-flow model before executable software exists. White-box coverage can evaluate how much code black-box tests exercise and guide additional tests. It cannot reliably reveal requirements omitted from both specification and implementation. Coverage is evidence of execution, not proof of correctness. *(CTFL v4.0.1, section 4.3.3, PDF page 43.)*

## 4.7 Experience-based techniques

### Error guessing

Anticipate likely errors, defects, and failures using knowledge of past application behavior, developer tendencies, similar systems, and defect data. Targets often involve inputs, outputs, logic, computation, interfaces, and data. Do not confuse these test targets with a broad organizational **root cause**, such as missing training; error guessing targets the software consequences that a test can expose. *(CTFL v4.0.1, section 4.4.1, PDF pages 43–44.)*

A **fault attack** uses a list of plausible faults—for example, empty values, duplicated submission, expired tokens, interrupted network, rounding, time zones, and concurrent update—and designs tests to expose them. Maintain the list from real findings.

### Exploratory testing

Design, execute, evaluate, and learn simultaneously. A session-based structure uses:

- a time box;
- a **test charter** stating mission and focus;
- notes/session sheet recording coverage, steps, observations, risks, and defects;
- a debrief with interested stakeholders.

Example charter: “Explore voucher application for rounding, expiry, stacking, and interrupted payment using boundary and error-guessing ideas for 60 minutes.” Exploratory testing is valuable when specifications are weak, time is short, or formal techniques need complementary investigation. It can incorporate black-box, white-box, or experience-based techniques while learning, design, execution, and evaluation occur together. It is not random clicking.

### Checklist-based testing

Design and execute tests from separately checkable conditions in a checklist. Good items are specific questions based on user importance and failure knowledge. Avoid items better automated, entry/exit criteria, and vague items such as “check everything.” Update checklists as defect patterns change, but control their length.

High-level checklists give flexibility and broad exploration but lower repeatability. Detailed checklists give consistency but can constrain discovery.

## 4.8 Collaboration-based approaches

These approaches also seek **defect avoidance** through shared understanding.

### User stories and the 3 Cs

A common story form is:

> As a **role**, I want **goal**, so that **business value**.

The 3 Cs are:

- **Card:** the concise story record;
- **Conversation:** discussion that develops shared understanding;
- **Confirmation:** acceptance criteria.

Good stories satisfy **INVEST**: Independent, Negotiable, Valuable, Estimable, Small, Testable. If stakeholders cannot describe how a story would be accepted, it may be unclear or not valuable enough.

### Acceptance criteria

Conditions that implementation must satisfy to be accepted. They define scope, create consensus, include positive and negative scenarios, support estimation, and form the basis for acceptance tests.

Two common formats:

- **Scenario-oriented:** Given/When/Then.
- **Rule-oriented:** bullets or input-output tables.

### ATDD procedure

1. Hold a specification workshop with business, development, and testing perspectives.
2. Resolve ambiguity, incompleteness, and defects in the story and criteria.
3. Derive understandable tests **before** implementation.
4. Start with positive flows, add negative tests, then relevant non-functional cases.
5. Apply appropriate techniques—EP, BVA, decision tables, state models, or experience.
6. Keep tests within story scope and avoid duplicates.
7. Automate where valuable so tests become executable requirements.

### Worked ATDD example

Story: “As a shopper, I want free standard shipping for qualifying orders so that checkout cost is predictable.”

Clarified criteria:

- subtotal below $100 → $8 standard shipping;
- subtotal at least $100 → free standard shipping;
- subtotal is calculated after item discounts and before tax;
- expedited shipping is never free under this story.

Derived tests:

| Test | Preconditions/input | Expected result | Technique |
|---|---|---|---|
| 1 | Standard, subtotal $99.99 | Shipping $8 | BVA |
| 2 | Standard, subtotal $100.00 | Shipping $0 | BVA |
| 3 | Standard, subtotal $100.01 | Shipping $0 | 3-value BVA |
| 4 | Expedited, subtotal $150 | Expedited fee charged | Decision rule/negative |
| 5 | Item discount moves subtotal from $105 to $95 | Shipping $8 | Rule interaction |

The workshop converted vague “qualifying” language into testable rules before code existed.

## Chapter 4 K3 practice

### Q1 — EP derivation

A password length must be 8–20 characters inclusive. Assume length is a non-negative integer and no other input types are in scope. Which partitions and test set achieve 100% equivalence partition coverage?

A. Invalid `0–7`, valid `8–20`, invalid `21+`; test `5, 12, 25`  
B. Valid `0–7`, invalid `8–20`, valid `21+`; test `7, 8, 20`  
C. Invalid `0–8`, valid `9–19`, invalid `20+`; test `8, 12, 20`  
D. One valid partition `8–20`; test `8, 12, 20`

Select ONE option.

**Answer: A.** The rule creates one valid partition and two invalid partitions. One representative from each partition, such as `5, 12, 25`, gives 100% equivalence partition coverage for the stated scope. *(CTFL v4.0.1, section 4.2.1, PDF pages 39–40.)*

### Q2 — 2-value and 3-value BVA

For the same inclusive 8–20 password-length rule, which unique-value sets correctly apply 2-value and 3-value boundary value analysis?

A. 2-value: `8, 20`; 3-value: `7, 8, 20, 21`  
B. 2-value: `7, 8, 20, 21`; 3-value: `7, 8, 9, 19, 20, 21`  
C. 2-value: `7, 9, 19, 21`; 3-value: `6, 8, 10, 18, 20, 22`  
D. 2-value: `8, 9, 19, 20`; 3-value: `7, 9, 12, 19, 21`

Select ONE option.

**Answer: B.** For 2-value BVA, use each boundary and its closest neighbor in the adjacent partition. For 3-value BVA, also include each boundary’s neighbor within the same partition. *(CTFL v4.0.1, section 4.2.2, PDF page 40.)*

### Q3 — BVA coverage

For valid quantity 1–100, a 3-value suite runs `0, 1, 2, 99, 100` but not `101`. What is coverage?

A. 50.0%  
B. 80.0%  
C. 83.3%  
D. 100.0%

Select ONE option.

**Answer: C.** The six 3-value boundary coverage items are `0, 1, 2, 99, 100, 101`. Five are exercised, so coverage is `5/6 = 83.3%`. *(CTFL v4.0.1, section 4.2.2, PDF page 40.)*

### Q4 — decision table

A refund is auto-approved if the purchase is within 30 days **and** the item is unopened. Otherwise it requires manual review. Which statement correctly describes the full limited-entry decision table and the tests needed for 100% rule coverage?

A. It has two feasible rules; one auto-approval test and one manual-review test always give full rule coverage.  
B. It has three feasible rules; both conditions are irrelevant whenever manual review occurs.  
C. It has four feasible rules for `TT`, `TF`, `FT`, and `FF`; only `TT` auto-approves, and one test per rule means four tests.  
D. It has eight feasible rules because each action must independently be both true and false.

Select ONE option.

**Answer: C.** Two Boolean conditions produce four combinations in a full limited-entry table. Only `within 30 days = true` and `unopened = true` causes auto-approval; the other three rules require manual review. One test per feasible rule gives 100% rule coverage. *(CTFL v4.0.1, section 4.2.3, PDF page 41.)*

### Q5 — state coverage

A turnstile has `Locked` and `Unlocked`. `coin` moves Locked→Unlocked; `push` moves Unlocked→Locked. `push` in Locked and `coin` in Unlocked are invalid. What does sequence `coin, push` cover from Locked?

A. 50% state coverage and 50% valid-transition coverage  
B. 100% state coverage, 100% valid-transition coverage, and 0% invalid-transition coverage  
C. 100% coverage of all valid and invalid transitions  
D. 0% state coverage because the sequence returns to the starting state

Select ONE option.

**Answer: B.** The sequence visits both states and exercises both valid transitions. It does not attempt either invalid transition, so it provides no invalid-transition coverage and is not 100% all-transitions coverage. *(CTFL v4.0.1, section 4.2.4, PDF pages 41–42.)*

### Q6 — statement vs branch

Using the premium-discount code above, a single true test achieves what?

A. 100% statement coverage but not 100% branch coverage  
B. 100% branch coverage but not 100% statement coverage  
C. 100% statement and branch coverage  
D. Neither statement nor branch coverage

Select ONE option.

**Answer: A.** The true test executes every statement in the example, but it exercises only the true outcome of the decision. A false test is needed for 100% branch coverage; branch coverage subsumes statement coverage, not vice versa. *(CTFL v4.0.1, sections 4.3.1–4.3.3, PDF pages 42–43.)*

### Q7 — choose a technique

Requirements contain combinations of membership, order value, and voucher validity that produce different discounts. Which technique should lead, and what may complement it?

A. Lead with statement testing; use branch testing only for visual design.  
B. Lead with decision table testing; complement it with EP/BVA for value ranges and exploratory testing or error guessing for unanticipated interactions.  
C. Lead with state transition testing because every business rule necessarily represents a state.  
D. Lead with checklist-based testing and exclude all black-box techniques.

Select ONE option.

**Answer: B.** Decision tables are well suited to combinations of conditions that produce different actions. Equivalence partitioning and boundary value analysis can cover order-value ranges, while experience-based techniques can explore interactions not explicitly modeled. *(CTFL v4.0.1, sections 4.2.1–4.2.3 and 4.4.2, PDF pages 39–41 and 44.)*

### Q8 — ATDD derivation

Story: “As a registered customer, I can retry sign-in, but my account locks after three consecutive failures.” Which acceptance-test set best covers the essential behavior?

A. Test only a successful sign-in and one failed sign-in because both input classes have been represented.  
B. Test three isolated invalid passwords, each starting from a fresh account, and verify only the error text.  
C. Test success from zero failures; one and two consecutive failures remaining active; the third failure locking the account; success resetting a partial failure count; rejection while locked; and authorized reset unlocking it.  
D. Test database performance under load without checking account state transitions.

Select ONE option.

**Answer: C.** The rule depends on sequences and state changes, so the acceptance tests must cover the failure count, reset after success, lock transition, behavior while locked, and authorized recovery. *(CTFL v4.0.1, sections 4.2.4 and 4.5.3, PDF pages 41–42 and 46.)*

### Q9 — test-design diagnosis

A tester selects 15, 16, and 17 for a valid range 1–100 and claims strong coverage because three values were used. What is wrong?

A. Nothing; any three distinct values guarantee full equivalence partition and boundary coverage.  
B. All three values are in the same valid equivalence partition and none targets a boundary.  
C. The values are invalid because only 1 and 100 are permitted.  
D. The only problem is that the values were executed in ascending order.

Select ONE option.

**Answer: B.** Test quantity alone does not determine coverage. These values exercise only one valid partition and do not target either boundary; representatives from all relevant partitions and boundary values are needed for the selected criteria. *(CTFL v4.0.1, sections 4.2.1 and 4.2.2, PDF pages 39–40.)*

### Q10 — exploratory charter

Which is the best-focused charter for a 45-minute exploratory payment session?

A. “Test payments thoroughly until every possible defect has been found.”  
B. “Spend 45 minutes confirming that the happy path works once on one browser.”  
C. “Explore anything interesting in the application and report whether it seems good.”  
D. “Explore card-payment recovery from duplicate submission, network interruption, timeout, and browser refresh using state modeling and error guessing for 45 minutes; check that at most one charge and order are created.”

Select ONE option.

**Answer: D.** A useful charter defines a focused scope, objective or risk, relevant techniques, a time box, and an observable mission while leaving the tester freedom to adapt during execution. *(CTFL v4.0.1, section 4.4.2, PDF page 44.)*

## Chapter 4 quick check

You are ready when you can derive—rather than merely define—EP, 2-value/3-value BVA, decision-table, state-transition, and ATDD tests, and calculate each coverage percentage from the correct coverage items.

---
# Chapter 5 — Managing the Test Activities

## Learning objectives

- **FL-5.1.1–5.1.3:** Understand the test plan, planning contributions, and entry/exit criteria.
- **FL-5.1.4–5.1.5 (K3):** Estimate test effort and prioritize test cases.
- **FL-5.1.6–5.1.7:** Understand the test pyramid and testing quadrants.
- **FL-5.2.1–5.2.4:** Understand risk level, risk types, product-risk analysis, and risk control.
- **FL-5.3.1–5.3.3:** Understand metrics, reports, and status communication.
- **FL-5.4.1:** Explain configuration-management support for testing.
- **FL-5.5.1 (K3):** Prepare a defect report.

## 5.1 Test planning

A **test plan** describes objectives, resources, processes, and the means and schedule for achieving the objectives. It aligns stakeholders, demonstrates consistency with test policy and strategy (or explains deviations), and forces the team to think through risks, people, effort, environment, data, tools, cost, and schedule.

Typical contents:

- test context: scope, objectives, and test basis;
- assumptions and constraints;
- stakeholders, roles, responsibilities, hiring/training needs;
- communication methods, frequency, and templates;
- risk register;
- test approach: levels, types, techniques, deliverables, entry/exit criteria, independence, metrics, data and environment requirements;
- deviations from policy/strategy;
- budget and schedule.

A plan is not valuable merely because it is long. It is valuable when it supports shared decisions and adapts as context changes.

### Tester contribution to release and iteration planning

**Release planning** looks across the release. Testers help refine large stories, write testable stories and criteria, analyze project/product risk, estimate story-level testing, choose an approach, and plan testing across iterations.

**Iteration planning** focuses on one iteration. Testers assess story testability and detailed risk, identify functional/non-functional concerns, split stories into testing tasks, and estimate those tasks.

## 5.2 Entry and exit criteria

- **Entry criteria:** preconditions for starting an activity. Examples: trained people, approved/testable basis, environment and data available, budget/time allocated, smoke test passed.
- **Exit criteria:** measurable conditions for declaring it complete. Examples: target coverage achieved, planned tests executed, maximum permitted open defects, acceptable residual risk, test report completed.

If entry criteria are missed, work may still start, but it is more difficult, costly, and risky. Running out of time or budget can force an exit; stakeholders must explicitly review and accept the remaining risk.

In Agile contexts, story-level entry criteria are often called **Definition of Ready**, and releaseable-item exit criteria **Definition of Done**.

## 5.3 Estimating test effort

An estimate predicts test-related work needed to meet objectives. It depends on assumptions and contains error. Decompose large tasks into smaller tasks because small estimates are usually more accurate.

### Ratio-based estimation

Use an organizational historical ratio. If development:test effort is `3:2` and development is estimated at 600 person-days:

`test effort = 600 × 2/3 = 400 person-days`

Use comparable internal data when possible; a ratio from a very different product can mislead.

### Extrapolation

Measure actual performance early in the current project and project it forward using a model—for example, estimate the next iteration from the average of the previous three. It adapts to the current team and suits iterative delivery, but assumes past observations remain relevant.

### Wideband Delphi

Experts estimate independently. Estimates are collected; large differences are discussed to expose assumptions; then experts estimate independently again. Repeat until consensus. **Planning Poker** is an Agile variant using effort-size cards. Independence before discussion reduces anchoring and domination.

### Three-point estimation

Experts provide:

- `a` = optimistic;
- `m` = most likely;
- `b` = pessimistic.

Weighted estimate:

`E = (a + 4m + b) / 6`

Measurement error estimate:

`SD = (b − a) / 6`

Report `E ± SD`, not false precision.

**Worked example:** `a=6`, `m=9`, `b=18`.

- `E = (6 + 4×9 + 18)/6 = 60/6 = 10` hours.
- `SD = (18−6)/6 = 2` hours.
- Report **10 ± 2 person-hours**, approximately 8–12.

Keep the unit and scope visible. If `E` estimates one test case and four comparable cases must be executed, calculate the per-case estimate first and then multiply by four; do not mistake the estimate for the total. *(CTFL v4.0.1, section 5.1.4, PDF pages 49–50.)*

## 5.4 Test case prioritization

A test execution schedule must reflect value, risk, coverage, dependencies, and resources.

### Strategies

- **Risk-based:** highest product risks first.
- **Coverage-based:** tests with greatest total coverage first.
- **Additional-coverage:** first select greatest coverage, then repeatedly select the test adding the most previously uncovered items.
- **Requirements-based:** tests for highest-priority requirements first.

Dependencies can override nominal priority: a low-priority setup test may have to run before a high-priority business test. Tool, environment, data, and specialist availability also constrain order.

### Worked example: additional coverage

| Test | Covered requirements |
|---|---|
| T1 | A, B, C |
| T2 | B, C, D |
| T3 | D, E |
| T4 | A, E, F |

First choose T1 or T2/T4 because each covers three; suppose T1 is chosen. Remaining additional coverage is T2→D (1), T3→D,E (2), T4→E,F (2). Choose T3 or T4 next. If T4 is chosen, covered items are A,B,C,E,F; T2 then adds D. A sensible order is **T1, T4, T2, T3**, subject to tie-breaking and dependencies.

## 5.5 Test pyramid

The pyramid allocates more automated tests to lower, faster, isolated layers and fewer to higher, slower, integrated layers.

- Bottom: many small component/unit tests—fast, isolated, fine-grained.
- Middle: fewer service/component-integration tests.
- Top: few complex end-to-end/UI tests—slow, broad, and dependent on more system parts.

Names and layer count vary. The principle is about feedback speed, isolation, maintenance cost, and appropriate objectives—not a rigid percentage. An inverted pyramid dominated by fragile end-to-end tests usually gives slow, expensive feedback.

## 5.6 Testing quadrants

Testing quadrants organize Agile testing using two dimensions:

- **Business-facing vs technology-facing:** does the test focus on user/business behavior or technical implementation and quality?
- **Support the team vs critique the product:** does the test guide development or evaluate the resulting product against expectations?

| | Supports the team | Critiques the product |
|---|---|---|
| **Technology-facing** | **Q1** | **Q4** |
| **Business-facing** | **Q2** | **Q3** |

### Q1: technology-facing, supports the team

Q1 gives developers fast feedback about the internal building blocks. It contains **component tests** and **component-integration tests**. These tests should normally be automated and included in continuous integration.

Teaching example: an automated component test verifies that `calculateDiscount(100, VIP)` returns `15`.

> **Memory:** Q1 = the code works.

### Q2: business-facing, supports the team

Q2 describes and checks the functionality the business expects. It contains **functional tests, examples, user-story tests, user-experience prototypes, API tests, and simulations**. These tests check acceptance criteria and may be manual or automated.

Teaching example: an API test verifies that a VIP customer receives the required 15% discount.

> **Memory:** Q2 = the feature works.

### Q3: business-facing, critiques the product

Q3 evaluates the working product from the user's perspective. It contains **exploratory testing, usability testing, and user acceptance testing**. These tests are user-oriented and are often manual.

Teaching example: a tester explores checkout and discovers that users cannot understand why their voucher was rejected.

> **Memory:** Q3 = users judge it.

### Q4: technology-facing, critiques the product

Q4 challenges the product's technical quality. It contains **smoke tests and non-functional tests except usability tests**, and these tests are often automated.

Teaching example: a load test checks whether checkout remains responsive with 5,000 simultaneous users.

> **Memory:** Q4 = stress it.

For exam questions, remember that **API testing is listed in Q2**, **usability testing is in Q3**, and **smoke and other non-functional testing are in Q4**. The quadrants are a communication and coverage model, not four sequential test phases:

> **Q1 code -> Q2 features -> Q3 users -> Q4 technical quality.**

*(CTFL v4.0.1, section 5.1.7, PDF page 51.)*

## 5.7 Risk management

A **risk** is a potential event or situation whose occurrence would have an adverse effect.

- **Risk likelihood:** probability it occurs.
- **Risk impact:** harm if it occurs.
- **Risk level:** measure combining likelihood and impact. Quantitatively it may be `likelihood × impact`; qualitatively it may use a risk matrix.

High risk level deserves stronger treatment.

For a quantitative question, rearrange the same relationship when needed: `impact = risk level / likelihood` and `likelihood = risk level / impact`. Keep percentages as decimals during calculation, so 50% is `0.5`. *(CTFL v4.0.1, section 5.2.1, PDF page 52.)*

### Project vs product risks

- **Project risks** threaten project objectives—schedule, budget, or scope. Examples: delayed environment, skill shortage, inaccurate estimate, conflict, poor tool support, supplier failure, scope creep.
- **Product risks** threaten product quality and its users. Examples: wrong calculation, security vulnerability, slow response, missing function, poor usability, runtime failure, unsafe behavior.

One event can create both. A delayed security specialist is a project risk; an undetected authorization weakness is a product risk.

### Product-risk analysis

Risk analysis comprises:

1. **Risk identification:** create a broad risk list using workshops, brainstorming, interviews, cause-effect diagrams, historical defects, and domain knowledge.
2. **Risk assessment:** categorize; estimate likelihood, impact, and level; prioritize; propose handling.

Results influence test scope, levels, types, techniques, coverage, effort, order, skills, independence, and non-test risk-reduction activities.

### Product-risk control

Risk control comprises:

- **Risk mitigation:** perform actions to reduce likelihood and/or impact.
- **Risk monitoring:** check mitigation effectiveness, update assessments, and identify emerging risks.

Responses include mitigate by testing, accept, transfer, or prepare contingency. Testing-based mitigation can use skilled specialists, suitable independence, reviews/static analysis, stronger techniques and coverage, relevant test types, and regression testing. Testing reduces uncertainty and residual risk; it does not make risk vanish.

### Worked risk example

Use qualitative scores 1–5 for likelihood and impact.

| Risk | L | I | Score L×I | Response |
|---|---:|---:|---:|---|
| Duplicate charge on retry | 3 | 5 | 15 | High: state, concurrency, interruption tests; payment specialist |
| Minor icon misalignment | 4 | 1 | 4 | Low: basic visual check or accept |
| Voucher rounding error | 3 | 3 | 9 | Medium: BVA and currency-data tests |

Scores help prioritize but do not replace judgment. A rare catastrophic safety risk may need treatment despite a moderate numerical product.

## 5.8 Monitoring, control, and completion

- **Test monitoring:** gather information, assess progress, and measure exit-criterion status.
- **Test control:** issue corrective guidance based on monitoring—for example, reprioritize after a risk materializes, reassess entry/exit after rework, adjust a delayed schedule, or add resources.
- **Test completion:** consolidate data, experience, and useful testware at a milestone such as level completion, iteration end, release, cancellation, or maintenance completion.

### Common metrics

- Project progress: task completion, effort, resource use.
- Test progress: cases implemented/run/not run/passed/failed, environment readiness, execution time.
- Product quality: availability, response time, mean time to failure.
- Defects: counts by status/priority, density, defect detection percentage.
- Risk: residual risk level.
- Coverage: requirements, risk, statement, branch, or other coverage.
- Cost: test cost and organizational cost of quality.

Metrics need context. “95% passed” is weak without knowing the unrun tests, risk distribution, environment, and severity of failures.

## 5.9 Test reports and communication

### Test progress report

Produced regularly to support ongoing control. Typical content:

- reporting period;
- progress and deviations from plan;
- impediments and workarounds;
- metrics;
- new or changed risks;
- next-period plan.

### Test completion report

Produced when a project, test level, cycle, iteration, or type is complete. Typical content:

- summary;
- quality evaluation against objectives and exit criteria;
- deviations from plan;
- impediments/workarounds;
- final metrics;
- unresolved defects and unmitigated risks;
- lessons learned.

Communication can be verbal, dashboards, email/chat, online documentation, or formal reports. Tailor frequency, detail, language, and formality to the audience. Executives need decision-oriented risk and trend; developers need actionable technical details; auditors need evidence and traceability.

A test report summarizes testing; it is not a substitute for individual defect reports. Detailed reproduction steps, data, logs, and defect-specific evidence belong in the defect record and may be referenced from the report. Choose the communication channel using urgency, audience, formality, geographical distance, and time-zone constraints; face-to-face communication is not automatically best for a distributed audience. *(CTFL v4.0.1, sections 5.3.2–5.3.3, PDF page 55.)*

## 5.10 Configuration management (CM)

CM identifies, controls, versions, and tracks test plans, strategies, conditions, cases, scripts, data, environments, results, logs, reports, and test items. It records relationships and supports traceability.

An approved configuration becomes a **baseline** and changes through formal control. CM enables exact identification of the tested build, environment, data, and script versions; reproduction of results; rollback to a prior baseline; and unambiguous references in reports. CI/CD pipelines usually automate much of this.

**Failure example:** “Checkout failed in staging yesterday” is hard to reproduce if the build, API mock, database, feature flags, test data, and script revision are unknown.

## 5.11 Defect management

A defect process handles an anomaly from discovery to closure: log, analyze/classify, decide a response, correct or consciously retain, confirm, and close. A reported anomaly may later be classified as a defect, duplicate, environment issue, change request, or false-positive result.

### Objectives of a defect report

- give resolvers enough information to understand and reproduce the issue;
- track work-product quality;
- provide data for process improvement.

### Strong defect-report contents

1. unique ID;
2. concise, specific title;
3. observation date, reporting organization, author/role;
4. exact test object/build and environment;
5. context: case, activity, lifecycle phase, technique, data;
6. reproducible steps and supporting logs/screenshots/dumps/recording;
7. expected result;
8. actual result;
9. severity—the stakeholder impact;
10. priority—the urgency/order of fixing;
11. status;
12. references and trace links.

### Example defect report

**Title:** Checkout creates two charges when Pay is retried after a timeout  
**Build/environment:** ShopEZ 4.8.2, staging, Chrome 128, payment sandbox v6  
**Precondition:** Registered user; cart contains product P100; valid card token  
**Steps:** (1) Open checkout. (2) Click Pay. (3) Simulate gateway timeout after authorization. (4) Click Retry once.  
**Expected:** One order and at most one captured charge; user receives recoverable status.  
**Actual:** Two captured charges with different transaction IDs; one order.  
**Evidence:** gateway log timestamps, two transaction IDs, screen recording  
**Severity:** Critical/high due to financial and trust impact  
**Priority:** Immediate for release decision  
**References:** payment retry story, state-transition test, risk “duplicate charge”

A title such as “Payment broken” is not sufficient. Severity and priority are related but different: a severe defect in a dormant feature may receive lower immediate priority; a low-severity legal wording issue may require urgent correction.

## Chapter 5 K3 practice

### Q1 — ratio estimate

Historical development:test effort is 5:2. New development effort is 750 person-days. Estimate test effort.

A. 150 person-days  
B. 300 person-days  
C. 750 person-days  
D. 1,875 person-days

Select ONE option.

**Answer: B.** Using the historical ratio, test effort is `750 × 2/5 = 300 person-days`, assuming the new project is comparable and the ratio covers the same work. *(CTFL v4.0.1, section 5.1.4, PDF pages 49–50.)*

### Q2 — extrapolation

Test effort in the last three similar iterations was 32, 40, and 36 person-days. Using a simple average, estimate the next iteration.

A. 32 person-days  
B. 36 person-days  
C. 40 person-days  
D. 108 person-days

Select ONE option.

**Answer: B.** The simple average is `(32 + 40 + 36) / 3 = 36 person-days`. The estimate should be reconsidered if scope, team, or context is not comparable. *(CTFL v4.0.1, section 5.1.4, PDF pages 49–50.)*

### Q3 — three-point estimate

Given `a=8`, `m=14`, `b=26` hours, calculate E and SD.

A. `E = 14`, `SD = 6` hours  
B. `E = 15`, `SD = 3` hours  
C. `E = 16`, `SD = 9` hours  
D. `E = 48`, `SD = 18` hours

Select ONE option.

**Answer: B.** Applying three-point estimation, `E = (a + 4m + b) / 6 = (8 + 4×14 + 26) / 6 = 15` hours and `SD = (b − a) / 6 = (26 − 8) / 6 = 3` hours. *(CTFL v4.0.1, section 5.1.4, PDF pages 49–50.)*

### Q4 — Wideband Delphi

One senior engineer says 5 days before anyone else speaks; the group quickly agrees. What process property was lost?

A. Initial independent estimation, which reduces anchoring and dominance  
B. The requirement to use only historical ratio-based estimation  
C. The rule that the test manager must make every estimate alone  
D. The requirement to execute tests before estimating them

Select ONE option.

**Answer: A.** Wideband Delphi begins with independent estimates before discussion. This reduces anchoring by influential participants; the group can then discuss assumptions and re-estimate independently. *(CTFL v4.0.1, section 5.1.4, PDF pages 49–50.)*

### Q5 — prioritization with dependency

T1 is low priority but creates data required by high-priority T2. T3 is high priority and independent. Which order runs an independent high-priority test first and also satisfies the dependency?

A. T2, T3, T1  
B. T1, T2, T3  
C. T3, T1, T2  
D. T3, T2, T1

Select ONE option.

**Answer: C.** T3 can run early because it is high priority and independent. T1 must precede T2 because the dependency overrides T2’s nominal priority, making `T3, T1, T2` a rational order. *(CTFL v4.0.1, section 5.1.5, PDF page 50.)*

### Q6 — additional coverage

T1 covers A,B,C; T2 covers B,C,D; T3 covers D,E; T4 covers A,E,F. If T1 is first, which tests maximize additional coverage next?

A. T2 only, because it shares the most items with T1  
B. T3 or T4, because each adds two previously uncovered items  
C. T4 only, because alphabetical order breaks every prioritization tie  
D. None, because T1 already provides 100% coverage

Select ONE option.

**Answer: B.** After T1 covers A, B, and C, T3 adds D and E while T4 adds E and F. Each adds two new coverage items, so either can be selected next; risk, cost, priority, or dependencies can break the tie. *(CTFL v4.0.1, section 5.1.5, PDF page 50.)*

### Q7 — product or project risk

Which option correctly classifies these risks: (a) the only performance tester resigns; (b) checkout exposes card data; (c) the test environment arrives late?

A. (a) Product; (b) project; (c) product  
B. (a) Project; (b) product; (c) project  
C. (a) Product; (b) product; (c) project  
D. (a) Project; (b) project; (c) product

Select ONE option.

**Answer: B.** Staff loss and late environments threaten project execution, so they are project risks. Exposure of card data is a quality problem in the product and therefore a product risk. *(CTFL v4.0.1, sections 5.2.1 and 5.2.2, PDF page 52.)*

### Q8 — risk-based response

A payment-duplication risk has high impact and medium likelihood. Which is the most appropriate testing response?

A. Defer it until all low-risk cosmetic tests pass, because likelihood is not high.  
B. Run one happy-path test and close the risk if it passes.  
C. Prioritize it early, assign skilled testers, apply strong review and state/concurrency/interruption coverage in a realistic integration environment, automate regression where useful, and monitor residual risk.  
D. Transfer the risk to users and omit testing because risk acceptance is a business decision.

Select ONE option.

**Answer: C.** Product risk analysis influences test scope, levels, techniques, coverage, effort, priority, and expertise. A high-impact payment risk warrants early and thorough testing plus monitoring of the residual risk. *(CTFL v4.0.1, section 5.2.4, PDF page 53.)*

### Q9 — progress or completion report?

A weekly document lists execution status, blockers, changed risks, and next week’s plan. Which report?

A. Test progress report  
B. Test completion report  
C. Defect report  
D. Test charter

Select ONE option.

**Answer: A.** A test progress report supports ongoing control by describing current status, impediments, risks, and planned work. A completion report summarizes completed testing against objectives and exit criteria. *(CTFL v4.0.1, section 5.3.2, PDF pages 54–55.)*

### Q10 — evaluate defect report

Report: “App crashed. High priority. Please fix.” Which option best identifies the information needed to make this a useful defect report?

A. Only the tester’s preferred solution and the developer’s name  
B. Exact build and environment, preconditions and data, reproducible steps, expected and actual results, evidence, severity and priority rationale, reporter/date, and references  
C. Only a higher priority value and a shorter title  
D. The complete source code for the application, but no reproduction steps

Select ONE option.

**Answer: B.** A useful defect report supplies enough context and evidence to reproduce, analyze, resolve, and confirm the defect, while distinguishing impact-based severity from business-oriented priority. *(CTFL v4.0.1, section 5.5, PDF pages 56–57.)*

### Chapter 5 quick check

You are ready when you can calculate all four estimation examples, order tests under priorities/dependencies, distinguish every risk and reporting concept, and write a reproducible defect report from a scenario.

---
# Chapter 6 — Test Tools

## Learning objectives

- **FL-6.1.1 (K2):** Explain how tool types support testing.
- **FL-6.2.1 (K1):** Recall test-automation benefits and risks.

## 6.1 Tool support across testing

A **test tool** is any tool that assists testing; even a spreadsheet can be one in context. Categories overlap, and one product may support several.

| Tool category | Typical support |
|---|---|
| Test management | Requirements/test/defect/configuration links, planning, scheduling, reporting, traceability |
| Static testing | Review workflow, coding-rule checks, control/data-flow issues, complexity, security findings |
| Test design and implementation | Generate or organize cases, data, procedures, models, or scripts |
| Test execution and coverage | Run tests, compare outcomes, log results, measure code or requirement coverage |
| Non-functional testing | Generate load, measure performance, scan security, test reliability—work difficult or impossible manually |
| DevOps | Versioning, build, CI/CD, orchestration, quality gates, deployment pipeline |
| Collaboration | Communication, shared review, work tracking, knowledge sharing |
| Scalability/deployment standardization | Virtual machines, containers, repeatable environments |

Classify a tool by the testing activity it supports in the scenario, not by brand name.

## 6.2 Benefits of test automation

Potential benefits include:

- less repetitive manual effort for regression, data entry, comparison, and standards checking;
- greater consistency and repeatability, reducing simple human errors;
- objective measurements such as coverage and measures difficult for humans;
- easier access to statistics, trends, graphs, and status information;
- shorter execution time, earlier defect detection, faster feedback, and faster delivery;
- more tester time for new, deep, and creative testing.

Automation changes effort rather than eliminating it. Time saved in execution may be reinvested in analysis and exploration.

## 6.3 Risks of test automation

- unrealistic expectations of capability, ease, or return;
- underestimated introduction, training, integration, and maintenance cost;
- automating work better done manually;
- overreliance on tools and loss of human critical thinking;
- vendor dependency or poor support;
- abandonment or frequent dependency updates in open source;
- incompatibility with the development platform;
- selection that violates regulatory or safety requirements.

### Practical mitigation

- connect automation to explicit objectives and risks;
- evaluate technical/platform/regulatory fit;
- pilot a representative slice and measure total cost;
- design maintainable testware and ownership;
- train users and plan ongoing support;
- keep exploratory and judgment-heavy testing human-led;
- monitor flaky tests, false positives/negatives, execution time, and maintenance effort;
- preserve portable data, code, and interfaces where vendor lock-in matters.

A tool is not a strategy. Automating poor tests only executes poor tests faster.

## Chapter 6 application practice

### Q1 — classify the support

A tool creates 5,000 virtual users and records latency percentiles. Which category?

A. A non-functional testing tool supporting performance testing  
B. A static analysis tool supporting code review only  
C. A test management tool supporting estimation only  
D. A collaboration tool supporting acceptance-criteria writing only

Select ONE option.

**Answer: A.** Simulating many users and measuring latency supports dynamic, non-functional performance testing, even if the tool also integrates with execution or reporting systems. *(CTFL v4.0.1, section 6.1, PDF page 59.)*

### Q2 — benefit or risk?

A suite runs consistently overnight and frees testers for exploratory work, but UI changes require frequent script repair. Which assessment is correct?

A. Consistency and freed tester time are risks; script repair is a benefit.  
B. All three outcomes are guaranteed benefits of automation.  
C. Consistent repeated execution and freed tester time are benefits; recurring script maintenance is a risk or cost.  
D. None of the outcomes is related to test automation.

Select ONE option.

**Answer: C.** Automation can provide repeatability and save manual effort, but maintenance effort—especially for unstable interfaces—is a recognized risk and must be included in the adoption decision. *(CTFL v4.0.1, section 6.2, PDF pages 59–60.)*

### Q3 — tool decision

A team wants to automate a one-time, rapidly changing visual prototype evaluation. What should it consider?

A. Automate it fully because every test activity benefits equally from automation.  
B. Prefer manual exploratory/usability testing if it offers better value after comparing automation build and maintenance cost with expected repetition and decision value.  
C. Cancel all testing because rapidly changing products cannot be evaluated.  
D. Select a tool solely because it has the most features, regardless of objectives or compatibility.

Select ONE option.

**Answer: B.** Tool support should be selected for the activity and context. For a one-time, rapidly changing visual prototype, automation costs may exceed its benefit, while human exploratory and usability assessment may provide greater value. *(CTFL v4.0.1, sections 6.1 and 6.2, PDF pages 59–60.)*

### Q4 — overreliance

Coverage reports 100%, but users still cannot complete checkout. Explain.

A. 100% coverage guarantees defect-free software, so the users must be mistaken.  
B. Coverage proves that selected items were exercised, not that behavior is correct or useful; missing requirements, weak oracles, and usability problems may remain.  
C. Any coverage metric above 80% removes the need for validation.  
D. The only possible explanation is that the coverage tool calculated the percentage incorrectly.

Select ONE option.

**Answer: B.** A coverage result describes the exercised coverage items and criterion. It does not prove correctness, suitability, or absence of defects; complementary techniques and human validation are still needed. *(CTFL v4.0.1, sections 1.3 and 6.2, PDF pages 18 and 59–60.)*

### Q5 — safe adoption

Which package provides the strongest controls before adopting a new test-execution tool?

A. Buy the tool with the longest feature list, automate everything immediately, and measure only the number of scripts.  
B. Let one enthusiastic tester deploy it without a pilot, training, maintenance owner, or success criteria.  
C. Replace all manual testing as soon as the first automated test passes.  
D. Define objectives, assess technical and regulatory fit, pilot representative tests, estimate introduction and maintenance effort, train users, assign ownership, and monitor outcomes.

Select ONE option.

**Answer: D.** Successful tool introduction depends on realistic objectives and expectations, a suitable pilot, organizational and technical fit, training, ownership, maintenance planning, and measurement of benefits and risks. *(CTFL v4.0.1, section 6.2, PDF pages 59–60.)*

## Chapter 6 quick check

You are ready when you can map a tool to the activity it supports and explain why every claimed automation benefit has an associated adoption or maintenance consideration.

---
# Final integration and exam preparation

## High-confusion distinctions

| Pair | Distinction |
|---|---|
| Testing / debugging | Testing reveals failure or defect information; debugging finds/removes the cause |
| Verification / validation | Conformance to specified requirements / fitness for stakeholder needs in use |
| Error / defect / failure | Human action / work-product flaw / observed incorrect behavior |
| QA / testing | Preventive process orientation / primarily corrective product evaluation |
| Monitoring / control | Gather and compare / take corrective action |
| Test analysis / design | Primarily what to test / primarily how to test; a technique may support both |
| Confirmation / regression | Original fix works / no adverse side effects |
| Test level / test type | Development scope / quality or perspective |
| Static / dynamic | No execution / execution |
| Review leader / moderator | Overall review ownership and organization / effective meeting facilitation |
| Severity / priority | Impact / urgency or order of fix |
| Product / project risk | Threat to product quality / threat to project objectives |
| Entry / exit criteria | Preconditions to start / conditions to finish |
| Progress / completion report | Ongoing control / completed-scope summary and learning |
| EP / BVA | Representatives from behavior partitions / ordered boundaries and neighbors |
| Statement / branch coverage | Executable statements / control-flow transfers; branch subsumes statement |

## What the four official sample exams reveal

The scored portions of official sample sets A–D contain **160 questions in total**. Every 40-question set uses the same chapter and cognitive-level distribution shown below, although the exact learning objectives chosen within some chapters vary.

| Chapter | Questions per set | Share of a 40-question set |
|---|---:|---:|
| 1 — Fundamentals | 8 | 20% |
| 2 — Testing throughout the SDLC | 6 | 15% |
| 3 — Static testing | 4 | 10% |
| 4 — Test analysis and design | 11 | 27.5% |
| 5 — Managing test activities | 9 | 22.5% |
| 6 — Test tools | 2 | 5% |

Each sample contains **8 K1, 24 K2, and 8 K3 questions**. Chapters 4 and 5 therefore account for half the paper, and every K3 learning objective appears once per sample: EP, BVA, decision tables, state transitions, ATDD, estimation, prioritization, and defect reporting. This supports a study strategy of mastering the procedures, not merely memorizing definitions.

The official sample question documents sort questions by learning objective to support study; they explicitly warn that a live examination should not be expected to follow that order. Practice switching topics quickly.

### Recurring distractor patterns

- **One-word substitution:** verification is swapped with validation, defect with failure, or severity with priority.
- **Right task, wrong activity:** a legitimate task is assigned to analysis instead of design, implementation instead of completion, or test reporting instead of defect management.
- **Right concept, wrong scope:** a test type is confused with a test level, confirmation with regression, or product risk with project risk.
- **Coverage without a denominator:** options count tests instead of partitions, boundary values, feasible rules, transitions, statements, or branches.
- **Ignoring feasibility or state:** an impossible input combination is selected, or an event sequence is counted without tracing its current state.
- **Unjustified absolutes:** an option claims that coverage proves correctness, automation removes human judgment, or one technique finds every defect type.

### A reliable question-solving routine

1. Circle the qualifier and response count: **BEST**, **MOST likely**, **NOT**, **minimum**, **Select ONE**, or **Select TWO**.
2. Name the learning objective or distinction before evaluating the options.
3. For K3 items, write the coverage items, state path, dependency order, or formula first; then compare with the options.
4. For each rejected option, identify the exact word, scope, calculation, or model rule that makes it fail.
5. After a mock, review by learning objective and rationale, not by answer letter. Treat an unsupported guess as a weakness even when it is correct.

*Analysis source: official ISTQB CTFL v4.0.1 sample sets A v1.7, B v1.7, C v1.6, and D v1.5, using their 40 scored questions and answer-key learning-objective mappings. No official question text is reproduced here.*

## Exam calculation sheet

The official sample exams use simple arithmetic, but they test whether you choose the correct inputs and denominator. Do not memorize sample answers or answer letters. Prepare to recall the formulas below: Samples A and D ask for a three-point estimate without supplying its formula.

### Formulas to memorize and apply

| Purpose | Formula | Exam use |
|---|---|---|
| Coverage | `coverage % = exercised coverage items / total coverage items × 100` | First identify the correct coverage item. For example, use partitions for EP, boundary values or boundary-neighbor items for BVA, feasible columns for decision tables, transitions for transition coverage, executable statements for statement coverage, and branches for branch coverage. *(CTFL v4.0.1, sections 4.2.1–4.3.2, PDF pages 40–43.)* |
| Three-point estimate | `E = (a + 4m + b) / 6` | `a` is optimistic, `m` is most likely, and `b` is pessimistic. The most-likely estimate has four times the weight. *(CTFL v4.0.1, section 5.1.4, PDF page 50.)* |
| Three-point measurement error | `SD = (b − a) / 6` | Report the result as approximately `E ± SD` when the question asks for the measurement error or range. *(CTFL v4.0.1, section 5.1.4, PDF page 50.)* |
| Quantitative risk level | `risk level = risk likelihood × risk impact` | Rearrange when needed: `impact = level / likelihood` or `likelihood = level / impact`. Convert a percentage likelihood to a decimal before calculating. *(CTFL v4.0.1, section 5.2.1, PDF page 53.)* |
| Ratio-based estimate | `new test effort = new development effort × historical test-to-development ratio` | Derive the ratio from comparable historical projects before applying it. If development:test is `5:2`, the test-to-development ratio is `2/5`. *(CTFL v4.0.1, section 5.1.4, PDF page 49.)* |

### Understand rather than memorize as one fixed formula

- **Extrapolation:** apply the model stated in the question or extrapolate comparable current-project observations, such as an average from recent iterations. There is no single universal extrapolation equation in the syllabus. Official Sample C supplies its particular model in the question. *(CTFL v4.0.1, section 5.1.4, PDF pages 49–50.)*
- **EP, BVA, decision tables, and state transitions:** these usually require identifying and counting coverage items, tracing rules or paths, and then applying the general coverage formula. They do not have separate arithmetic formulas to memorize. *(CTFL v4.0.1, sections 4.2.1–4.2.4, PDF pages 39–42.)*
- **Full decision tables:** do not automatically use `2^n`. Irrelevant conditions, infeasible combinations, extended-entry conditions, and minimized rules can change the number of columns that must be tested. Count the feasible rule columns shown or derived from the question. *(CTFL v4.0.1, section 4.2.3, PDF page 41.)*

## Integrated scenario practice

### Scenario

ShopEZ adds “buy now, pay later” (BNPL). Rules: registered adult customers may use BNPL for order subtotals from $50 through $1,000 inclusive. A risk review rates duplicate agreements likelihood 3 and impact 5 on a 1–5 scale. The feature calls an external credit service. After three consecutive credit-service timeouts, the request enters `ManualReview`; a successful response before the third timeout resets the timeout count. Release is in two iterations.

### Q1

Identify the valid order-value partition and two invalid partitions.

A. Valid 50–1,000; invalid below 50 and above 1,000  
B. Valid 51–999; invalid 50 and 1,000  
C. Valid above 50 only; invalid below 50  
D. One valid partition containing all numeric values

Select ONE option.

**Answer: A.** “From $50 through $1,000 inclusive” makes both endpoints valid and creates one valid partition between two invalid partitions. *(CTFL v4.0.1, section 4.2.1, PDF pages 39–40.)*

### Q2

Which is the correct 2-value BVA set for the order subtotal, assuming whole-dollar inputs?

A. 50, 1,000  
B. 49, 50, 1,000, 1,001  
C. 49, 50, 51, 999, 1,000, 1,001  
D. 0, 500, 2,000

Select ONE option.

**Answer: B.** Two-value BVA uses each boundary plus its closest neighbor in the adjacent partition. Option C is the corresponding 3-value set. *(CTFL v4.0.1, section 4.2.2, PDF page 40.)*

### Q3

What additional conditions should a decision table include beyond amount?

A. Registered status and adult status  
B. Code statement count only  
C. Tester seniority only  
D. Browser color theme only

Select ONE option.

**Answer: A.** Registered status and adult status combine with the amount to determine eligibility actions, making them relevant decision-table conditions. *(CTFL v4.0.1, section 4.2.3, PDF page 41.)*

### Q4

Which sequence is essential for state testing?

A. timeout, timeout, success, timeout, timeout, timeout  
B. $50, $51, $999  
C. open requirement document  
D. run the same successful request once

Select ONE option.

**Answer: A.** The event sequence checks that success resets the timeout count and that three later consecutive timeouts cause the transition to `ManualReview`. *(CTFL v4.0.1, section 4.2.4, PDF pages 41–42.)*

### Q5

The external credit-service interface is primarily tested at which level?

A. Component testing  
B. System integration testing  
C. User acceptance only  
D. Static testing only

Select ONE option.

**Answer: B.** System integration testing focuses on interfaces and interactions between the system under test and external systems or services. Other test levels and static reviews may complement it. *(CTFL v4.0.1, section 2.2.1, PDF page 29.)*

### Q6

What is the quantitative risk score for duplicate agreements?

A. 2  
B. 8  
C. 15  
D. 35

Select ONE option.

**Answer: C.** A quantitative risk level can be calculated as likelihood multiplied by impact: `3 × 5 = 15`. Treatment still requires judgment and agreed scale thresholds. *(CTFL v4.0.1, section 5.2.1, PDF page 52.)*

### Q7

A defect caused duplicate agreements. After a fix, rerunning the exact timeout sequence is what?

A. Debugging  
B. Confirmation testing  
C. Regression testing only  
D. QA only

Select ONE option.

**Answer: B.** Rerunning the test that previously failed directly checks whether the original defect was fixed. Other payment, order, and retry tests can address regression. *(CTFL v4.0.1, section 2.2.3, PDF page 30.)*

### Q8

Which is the best early static activity?

A. Wait until system execution  
B. Review eligibility criteria and timeout-state model with business, developers, and testers  
C. Execute production transactions  
D. Remove acceptance criteria

Select ONE option.

**Answer: B.** Reviewing requirements and models with varied stakeholders can expose ambiguity and missing rules early, before executable code exists. *(CTFL v4.0.1, section 3.1.2, PDF page 33.)*

### Q9

Which defect title is strongest?

A. BNPL broken  
B. Error happened  
C. Third consecutive credit timeout creates two BNPL agreements in build 5.2.0  
D. Please fix urgently

Select ONE option.

**Answer: C.** The title identifies the trigger, observed failure, and build. The report body must still provide the environment, steps, expected and actual results, evidence, severity, and priority. *(CTFL v4.0.1, section 5.5, PDF pages 56–57.)*

### Q10

The last three iterations used 20, 24, and 22 test days. What simple extrapolated estimate applies to the next comparable iteration?

A. 20  
B. 22  
C. 24  
D. 66

Select ONE option.

**Answer: B.** Simple extrapolation gives `(20 + 24 + 22) / 3 = 22`, assuming comparable work and team conditions. *(CTFL v4.0.1, section 5.1.4, PDF pages 49–50.)*

### Q11

Which automation claim is unsafe?

A. Repeated API regression can give faster feedback  
B. Tool maintenance requires effort  
C. 100% automated execution proves the feature has no defects  
D. A pipeline can run tests consistently

Select ONE option.

**Answer: C.** Testing can show the presence of defects, not prove their absence. Automated execution and coverage therefore cannot establish that a feature is defect-free. *(CTFL v4.0.1, sections 1.3 and 6.2, PDF pages 18 and 59–60.)*

### Q12

Which report should contain the final exit-criterion evaluation, unresolved risks, defects not fixed, and lessons learned?

A. Defect report  
B. Test completion report  
C. Review checklist  
D. Test data file

Select ONE option.

**Answer: B.** A test completion report evaluates completed testing against objectives and exit criteria and typically includes unmitigated risks, unfixed defects, and lessons learned. *(CTFL v4.0.1, section 5.3.2, PDF page 55.)*

## Complete learning-objective checklist

Use the boxes as a final self-audit. “Explain” means you can give a reason and example; “apply” means you can solve a fresh scenario without copying a template.

### Chapter 1

- [ ] FL-1.1.1 Identify typical test objectives.
- [ ] FL-1.1.2 Differentiate testing from debugging.
- [ ] FL-1.2.1 Give examples of why testing is necessary.
- [ ] FL-1.2.2 Recall how testing relates to QA.
- [ ] FL-1.2.3 Distinguish root cause, error, defect, and failure.
- [ ] FL-1.3.1 Explain all seven testing principles.
- [ ] FL-1.4.1 Explain test activities and related tasks.
- [ ] FL-1.4.2 Explain how context affects the test process.
- [ ] FL-1.4.3 Match testware to activities.
- [ ] FL-1.4.4 Explain traceability’s value.
- [ ] FL-1.4.5 Compare test management and testing roles.
- [ ] FL-1.5.1 Give examples of generic tester skills.
- [ ] FL-1.5.2 Recall whole-team advantages.
- [ ] FL-1.5.3 Compare benefits and drawbacks of independence.

### Chapter 2

- [ ] FL-2.1.1 Explain SDLC impact on testing.
- [ ] FL-2.1.2 Recall lifecycle-independent good practices.
- [ ] FL-2.1.3 Recall TDD, ATDD, and BDD.
- [ ] FL-2.1.4 Summarize DevOps impact on testing.
- [ ] FL-2.1.5 Explain shift left.
- [ ] FL-2.1.6 Explain retrospectives as process improvement.
- [ ] FL-2.2.1 Distinguish five test levels.
- [ ] FL-2.2.2 Distinguish four test types.
- [ ] FL-2.2.3 Distinguish confirmation from regression.
- [ ] FL-2.3.1 Summarize maintenance testing and triggers.

### Chapter 3

- [ ] FL-3.1.1 Recognize work products suitable for static testing.
- [ ] FL-3.1.2 Explain static testing’s value.
- [ ] FL-3.1.3 Compare static and dynamic testing.
- [ ] FL-3.2.1 Identify benefits of early/frequent feedback.
- [ ] FL-3.2.2 Summarize review-process activities in order.
- [ ] FL-3.2.3 Recall principal review-role responsibilities.
- [ ] FL-3.2.4 Compare informal review, walkthrough, technical review, and inspection.
- [ ] FL-3.2.5 Recall review success factors.

### Chapter 4

- [ ] FL-4.1.1 Distinguish black-box, white-box, and experience-based techniques.
- [ ] FL-4.2.1 Apply EP and calculate coverage.
- [ ] FL-4.2.2 Apply 2-value and 3-value BVA and calculate coverage.
- [ ] FL-4.2.3 Build/use a decision table and calculate rule coverage.
- [ ] FL-4.2.4 Derive state-transition tests and calculate coverage.
- [ ] FL-4.3.1 Explain statement testing and coverage.
- [ ] FL-4.3.2 Explain branch testing and coverage.
- [ ] FL-4.3.3 Explain white-box value and limits.
- [ ] FL-4.4.1 Explain error guessing.
- [ ] FL-4.4.2 Explain exploratory testing.
- [ ] FL-4.4.3 Explain checklist-based testing.
- [ ] FL-4.5.1 Explain collaborative user-story writing and 3 Cs/INVEST.
- [ ] FL-4.5.2 Classify acceptance-criteria formats.
- [ ] FL-4.5.3 Apply ATDD to derive tests before implementation.

### Chapter 5

- [ ] FL-5.1.1 Explain test-plan purpose and contents.
- [ ] FL-5.1.2 Recognize tester contributions to release/iteration planning.
- [ ] FL-5.1.3 Compare entry and exit criteria.
- [ ] FL-5.1.4 Calculate ratio, extrapolation, and three-point estimates; explain Wideband Delphi.
- [ ] FL-5.1.5 Apply risk-, coverage-, additional-coverage-, and requirements-based prioritization with dependencies.
- [ ] FL-5.1.6 Recall the test pyramid.
- [ ] FL-5.1.7 Explain all testing quadrants.
- [ ] FL-5.2.1 Identify risk level from likelihood and impact.
- [ ] FL-5.2.2 Distinguish product and project risks.
- [ ] FL-5.2.3 Explain how product-risk analysis affects testing.
- [ ] FL-5.2.4 Explain risk responses and testing mitigations.
- [ ] FL-5.3.1 Recall metric categories.
- [ ] FL-5.3.2 Distinguish progress/completion report purpose, content, and audience.
- [ ] FL-5.3.3 Select suitable status communication.
- [ ] FL-5.4.1 Explain how CM supports testing.
- [ ] FL-5.5.1 Prepare a complete defect report.

### Chapter 6

- [ ] FL-6.1.1 Explain how tool categories support testing.
- [ ] FL-6.2.1 Recall automation benefits and risks.

## Suggested 14-day study path

| Day | Focus | Output |
|---:|---|---|
| 1 | Chapter 1 through principles | Explain causal chain and seven principles aloud |
| 2 | Chapter 1 process, testware, roles | Draw activity → work-product map |
| 3 | Chapter 2 lifecycle, test-first, DevOps | Classify 10 examples |
| 4 | Chapter 2 levels, types, maintenance | Build a level × type matrix |
| 5 | Chapter 3 | Simulate a review and role assignment |
| 6 | EP and 2/3-value BVA | Derive five fresh data sets |
| 7 | Decision tables | Build three full/minimized tables |
| 8 | State transitions | Draw two models and calculate three coverages |
| 9 | White-box and experience-based | Calculate statement/branch coverage; write charters |
| 10 | Stories, criteria, ATDD | Turn three vague stories into executable examples |
| 11 | Planning and estimation | Solve ratio, extrapolation, Delphi, three-point exercises |
| 12 | Prioritization, pyramid, quadrants | Order suites with dependencies; classify tests |
| 13 | Risk, reporting, CM, defects, tools | Produce risk table and defect report |
| 14 | Closed-book integration practice | Redo all practice; revisit every missed objective |

## Final readiness rule

Do not judge readiness only by recognizing definitions. You should be able to:

- teach each concept in plain language;
- distinguish it from its nearest confusing neighbor;
- produce your own software example;
- carry out every K3 technique and calculation without notes;
- explain why the wrong alternatives in a question are wrong.

---

## Source and scope note

This independent study guide follows the examinable material and learning objectives of **ISTQB Certified Tester Foundation Level Syllabus v4.0.1 (15 September 2024)**. Its exam guidance was cross-checked against official sample sets A v1.7, B v1.7, C v1.6, and D v1.5 and their answer rationales. It paraphrases and teaches the material rather than reproducing the official documents. ISTQB and CTFL are marks associated with their respective owner. This is not an official accredited training product and does not contain official exam questions.

# Compact keyword glossary

These definitions are phrased for learning. Where a term appears in more than one chapter, learn the same core meaning and its chapter-specific use.

## Chapter 1 keywords

- **Coverage:** degree to which specified coverage items have been exercised, usually expressed as a percentage.
- **Debugging:** developer activity of reproducing a failure, locating/analyzing its defect, and removing the cause.
- **Defect:** imperfection in a work product that may cause failure when relevant conditions occur.
- **Error:** human action that produces an incorrect result.
- **Failure:** event in which a component/system does not perform a required function within specified limits.
- **Quality:** degree to which a work product satisfies stated and implied stakeholder needs.
- **Quality assurance:** process-oriented, preventive activities intended to provide confidence that quality requirements will be fulfilled.
- **Root cause:** fundamental reason a problem occurred; removing it can prevent recurrence.
- **Test analysis:** evaluation of the test basis to identify and prioritize what to test—test conditions and coverage items.
- **Test basis:** body of knowledge used as the basis for analysis and design, such as requirements, stories, design, code, or risks.
- **Test case:** set of preconditions, inputs, actions, expected results, and postconditions developed for a test objective.
- **Test completion:** closure activities that consolidate results, preserve useful testware, report status, and capture learning.
- **Test condition:** testable aspect of a component/system identified as a basis for testing.
- **Test control:** corrective actions that guide testing toward objectives.
- **Test data:** data created or selected to provide inputs and preconditions for execution.
- **Test design:** elaboration of test conditions into cases and other testware; answers “how to test?”
- **Test execution:** running tests and comparing actual with expected results.
- **Test implementation:** creation/organization of procedures, scripts, suites, data, schedules, and environments so tests can run.
- **Test monitoring:** ongoing collection and comparison of test information against plan and criteria.
- **Test object:** work product being tested.
- **Test objective:** reason or purpose for testing.
- **Test planning:** definition of objectives and an approach to achieve them within constraints.
- **Test procedure:** sequence of test cases or test steps in executable order.
- **Test process:** context-tailored set of testing activities.
- **Test result:** actual outcome and associated information from execution.
- **Testing:** static and dynamic activities used to discover defects and evaluate software-work-product quality.
- **Testware:** work products created during testing, such as plans, conditions, cases, scripts, data, logs, and reports.
- **Traceability:** ability to relate test-basis items, risks, testware, results, and defects.
- **Validation:** confirmation that a product satisfies intended use and stakeholder needs.
- **Verification:** confirmation that specified requirements have been fulfilled.

## Chapter 2 keywords

- **Acceptance testing:** validation-oriented level demonstrating business/operational/deployment readiness.
- **Black-box testing:** testing based on external specifications without reference to internal structure.
- **Component integration testing:** testing interfaces and interactions among integrated components.
- **Component testing:** testing individual components in isolation.
- **Confirmation testing:** testing whether a specific defect was successfully fixed.
- **Functional testing:** testing what functions a component or system performs.
- **Integration testing:** general testing of interfaces/interactions; CTFL distinguishes component integration and system integration levels.
- **Maintenance testing:** testing changes to or retirement of an operational system.
- **Non-functional testing:** testing how well a system behaves regarding quality characteristics.
- **Regression testing:** testing for unintended adverse effects of change.
- **Shift left:** performing suitable testing earlier in the lifecycle while retaining necessary later tests.
- **System integration testing:** testing interfaces between the system under test and external systems/services.
- **System testing:** testing complete-system behavior and capabilities.
- **Test level:** group of test activities organized for software at a particular development scope/phase.
- **Test type:** group of test activities aimed at a quality characteristic or testing purpose.
- **White-box testing:** testing based on implementation or internal structure.

## Chapter 3 keywords

- **Anomaly:** observation that differs from expectation and requires analysis; it is not automatically a confirmed defect.
- **Dynamic testing:** testing that executes software.
- **Formal review:** review following a defined, documented process with greater role/process rigor.
- **Informal review:** review without a defined process or mandatory formal output.
- **Inspection:** most formal review type; aims for maximum anomaly detection and gathers metrics.
- **Review:** static evaluation of a work product by people.
- **Static analysis:** tool-based evaluation of a structured work product without execution.
- **Static testing:** evaluation without executing software, including reviews and static analysis.
- **Technical review:** moderated review by technically qualified participants to reach decisions/consensus and detect anomalies.
- **Walkthrough:** author-led review used for explanation, learning, consensus, ideas, and anomaly detection.

## Chapter 4 keywords

- **Acceptance criteria:** conditions a user-story implementation must meet to be accepted.
- **Acceptance test-driven development (ATDD):** collaborative test-first approach that derives acceptance tests before implementation.
- **Black-box test technique:** systematic derivation from specified behavior, independent of implementation.
- **Boundary value analysis:** black-box technique that exercises ordered partition boundaries and specified neighbors.
- **Branch coverage:** percentage of identified control-flow branches exercised.
- **Checklist-based testing:** experience-based design/execution guided by a list of independently checkable conditions.
- **Collaboration-based test approach:** approach using shared business, development, and testing perspectives to avoid defects and derive tests.
- **Coverage item:** entity selected as the unit measured by a coverage criterion.
- **Decision table testing:** testing feasible rules formed by condition combinations and resulting actions.
- **Equivalence partitioning:** division of a domain into non-overlapping partitions expected to receive equivalent processing.
- **Error guessing:** anticipation of likely errors, defects, and failures using experience and defect knowledge.
- **Experience-based test technique:** technique whose design effectiveness relies primarily on tester knowledge and skill.
- **Exploratory testing:** simultaneous learning, design, execution, and evaluation, often guided by a charter and time box.
- **State transition testing:** testing states, events, valid transitions, and invalid transitions in a behavioral model.
- **Statement coverage:** percentage of executable statements exercised.
- **Test technique:** procedure used to identify test conditions, coverage items, data, and cases.
- **White-box test technique:** technique based on internal structure or processing.

## Chapter 5 keywords

- **Defect management:** workflow and rules for recording, analyzing, resolving, confirming, and closing anomalies/defects.
- **Defect report:** record containing sufficient information to analyze, reproduce, resolve, and track an anomaly.
- **Entry criteria:** preconditions for starting an activity.
- **Exit criteria:** conditions for declaring an activity completed.
- **Product risk:** possibility that a product-quality problem will cause harm.
- **Project risk:** possibility that an event will harm schedule, budget, scope, or project objectives.
- **Risk:** potential event, threat, or situation whose occurrence causes an adverse effect.
- **Risk analysis:** risk identification plus risk assessment.
- **Risk assessment:** categorizing and evaluating likelihood, impact, level, priority, and possible handling.
- **Risk control:** risk mitigation plus risk monitoring.
- **Risk identification:** systematic generation of a broad list of risks.
- **Risk level:** measure derived from likelihood and impact.
- **Risk management:** coordinated analysis and control of risk.
- **Risk mitigation:** action to reduce risk likelihood and/or impact.
- **Risk monitoring:** tracking risks and mitigation effectiveness and identifying changes/emerging risks.
- **Risk-based testing:** selection, prioritization, and management of tests using risk analysis and control.
- **Test approach:** implementation of the test strategy for a particular project or scope, including levels, types, techniques, coverage, and resources.
- **Test completion report:** summary and evaluation of a completed test scope, including residual issues and learning.
- **Test plan:** description of objectives, resources, processes, approach, budget, and schedule for testing.
- **Test progress report:** periodic communication supporting ongoing monitoring and control.
- **Test pyramid:** model favoring many fast isolated low-level tests and fewer slower broad end-to-end tests.
- **Test strategy:** high-level description of how testing is generally performed to meet objectives.
- **Testing quadrants:** model grouping tests by business/technology facing and support-team/critique-product dimensions.

## Chapter 6 keyword

- **Test automation:** use of software to perform or support testing activities, not only test execution.
