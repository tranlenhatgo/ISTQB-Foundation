# Week 1 Notes: Fundamentals and Lifecycle

## 1. Testing objectives

Testing evaluates work products and software quality. A team may test to:

- find defects and trigger failures
- reduce product risk
- verify requirements and legal obligations
- validate stakeholder needs
- build confidence and support release decisions

Testing cannot prove that a product contains no defects. The selected tests provide evidence about quality and risk.

### Verification and validation

Verification asks whether the team built the product according to its specifications. Validation asks whether the product serves its users in its operating environment.

Example: A payment screen may match every written requirement but still confuse customers. It passes verification and may fail validation.

## 2. Testing and debugging

Testing and debugging serve different purposes.

| Testing | Debugging |
|---|---|
| Reveals failures or finds defects | Finds the cause of a failure |
| Compares results with expectations | Diagnoses and fixes the defect |
| Includes static and dynamic activities | Follows a failure or known defect |

After a developer fixes a defect, confirmation testing checks the fix. Regression testing checks for damage in other areas.

### Causes and effects

A root cause can lead a person to make an error. The error can introduce a defect into a work product. Executing defective software can cause a failure.

Example:

1. A developer lacks tax-domain knowledge. This is a root cause.
2. The developer misunderstands a tax rule. This is an error.
3. The code uses the wrong tax percentage. This is a defect.
4. A customer receives the wrong total. This is a failure.

### Testing and quality assurance

Testing provides a product-oriented form of quality control. Quality assurance uses a process-oriented approach. QA improves and follows processes intended to prevent defects. Testing finds defects and failures in work products.

## 3. Seven principles

### 3.1 Testing shows the presence of defects

Testing can reveal defects but cannot prove their absence. A successful test run lowers uncertainty for the tested conditions.

### 3.2 Exhaustive testing is impossible

Most systems have too many inputs, states, paths, and environments to test every combination. Teams choose tests based on techniques, risk, and priorities.

### 3.3 Early testing saves time and money

Review requirements and design before coding. Teams spend less effort fixing a requirement defect before it spreads into code, tests, and documentation.

### 3.4 Defects cluster together

A small number of components often contain a large share of defects or operational failures. Use defect history and risk information to focus testing.

### 3.5 Tests wear out

Repeated tests stop finding new defects after the team fixes the problems those tests cover. Review existing tests, add new data, and test from different perspectives.

### 3.6 Testing is context dependent

A medical device, online store, mobile game, and internal report need different approaches, test levels, evidence, and independence.

### 3.7 Absence-of-defects fallacy

A product can contain few known defects and still fail if it solves the wrong problem or does not meet user needs.

## 4. Test activities and testware

The activity groups can overlap and repeat.

| Activity | Main work | Example testware |
|---|---|---|
| Test planning | Define objectives, approach, schedule, resources, and responsibilities | Test plan |
| Test monitoring and control | Compare progress with the plan and take corrective action | Progress report, control decision |
| Test analysis | Examine the test basis and identify test conditions | Prioritized test conditions |
| Test design | Turn conditions into test cases and coverage items | Test cases, charters, coverage items |
| Test implementation | Prepare procedures, suites, data, scripts, and environments | Test procedures, automated scripts, test data |
| Test execution | Run tests, compare results, and report anomalies | Actual results, execution log, defect report |
| Test completion | Summarize results and preserve useful testware | Completion report, lessons learned |

Traceability connects the test basis, test conditions, test cases, results, and defects. It supports coverage measurement, impact analysis, audits, and reporting.

## 5. Roles, skills, and independence

The test-management role leads planning, monitoring, control, and completion. The testing role leads analysis, design, implementation, and execution. One person may perform both roles in a small team.

A tester benefits from:

- testing and technical knowledge
- curiosity, care, and attention to detail
- analytical and critical thinking
- communication and teamwork
- product-domain knowledge

### Whole-team approach

The whole team shares responsibility for quality. A team member with the required skills may perform a testing task. Testers work with developers and business representatives throughout development.

### Independence

Independence can help a tester find different defects because the tester brings different assumptions. Possible levels include:

1. The author tests their own work.
2. A peer from the same team tests it.
3. A tester outside the team but inside the organization tests it.
4. An external tester tests it.

More independence can create distance from the development team. Many projects combine levels, such as developers testing components and an independent team testing the full system.

## 6. Testing in the development lifecycle

The chosen software development lifecycle affects the timing, scope, documentation, automation, and roles used in testing.

Good practices across lifecycles include:

- match each development activity with a test activity
- start test analysis and design during the related development activity
- involve testers in reviews as soon as drafts exist
- define test levels with distinct objectives

### Test-first approaches

- Test-driven development uses tests to guide code design in short cycles.
- Acceptance test-driven development creates acceptance tests from acceptance criteria before implementation.
- Behavior-driven development expresses desired behavior in a shared format such as Given, When, Then.

### DevOps and continuous delivery

DevOps joins development, testing, operations, and delivery work. Automated pipelines give fast feedback. DevOps supports frequent releases but does not remove the need for manual testing or user-focused evaluation.

### Shift-left

Shift-left moves test activities earlier. Examples include reviewing requirements, writing tests before code, running static analysis, and executing component tests in a pipeline.

### Retrospectives

Teams use retrospectives to discuss completed work and agree on improvements. Testers contribute evidence about defects, delays, environments, automation, and escaped failures.

## 7. Test levels

| Level | Main focus |
|---|---|
| Component testing | Individual components, classes, or modules |
| Component integration testing | Interfaces and interactions between components |
| System testing | End-to-end behavior and qualities of the complete system |
| System integration testing | Interfaces with external systems and services |
| Acceptance testing | Business needs, user needs, and readiness for use |

## 8. Test types and maintenance

- Functional testing checks what the system does.
- Non-functional testing checks how well the system behaves, such as performance, usability, reliability, or security.
- Black-box testing derives tests from specifications without using internal structure.
- White-box testing derives tests from internal structure.

Maintenance testing follows a change to an existing system. Triggers include enhancements, defect fixes, environment changes, platform migration, and retirement. Impact analysis helps the team select confirmation and regression tests.

## Week 1 recall check

1. Can testing prove that a system has no defects?
2. Who locates and removes the defect that caused a failure?
3. Name the seven testing principles.
4. Put the seven test activity groups in a sensible order.
5. Give one benefit and one drawback of independence.
6. Explain verification and validation with one example.
7. Compare confirmation and regression testing.
8. Name the five test levels.

### Short answers

1. No. Testing can reveal defects and lower uncertainty.
2. Debugging locates, analyzes, and removes the defect.
3. See section 3.
4. Planning; monitoring and control; analysis; design; implementation; execution; completion. Activities may overlap.
5. Independence can reveal different defects but can reduce collaboration or product familiarity.
6. Verification checks specifications. Validation checks stakeholder needs in operation.
7. Confirmation checks a fix. Regression checks for unintended effects elsewhere.
8. Component, component integration, system, system integration, and acceptance.
