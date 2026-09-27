and # Week 3 Notes: Techniques, Management, and Tools

## 1. White-box testing

White-box techniques derive tests from the internal structure of the test object.

### Statement testing

Statement testing aims to execute the executable statements in the code.

`Statement coverage = executed statements / total executable statements x 100%`

Example: A suite executes 72 of 80 statements. Coverage is `72 / 80 x 100% = 90%`.

### Branch testing

A branch represents a possible transfer of control, such as the true and false outcomes of a decision. Branch testing aims to execute branches.

`Branch coverage = executed branches / total branches x 100%`

Example: A suite executes 9 of 12 branches. Coverage is `9 / 12 x 100% = 75%`.

One hundred percent branch coverage gives 100 percent statement coverage. Full statement coverage can miss a branch outcome.

## 2. Experience-based techniques

### Error guessing

The tester predicts probable errors, defects, and failures using product knowledge, developer habits, defect history, and common failure patterns. A fault-attack list can guide this work.

Examples for a web form include empty input, special characters, duplicated submission, expired session, interrupted network, and browser refresh during a transaction.

### Exploratory testing

The tester learns about the product while designing and executing tests. A time-boxed session uses a test charter to state the objective and scope.

Example charter: Explore shopping-cart quantity changes to discover pricing, stock, and synchronization problems across two browser tabs.

### Checklist-based testing

The tester uses a high-level list of conditions, questions, or reminders. Teams update checklists using defect history and experience. A checklist should guide thinking rather than prescribe detailed steps.

## 3. Collaborative user-story testing

A user story often follows this structure:

`As a [role], I want [goal], so that [value].`

The three Cs describe a card, a conversation, and confirmation through acceptance criteria.

Useful acceptance criteria are clear, testable, concise, and focused on outcomes. Teams may express them as rules or scenarios.

Example:

```text
Given a customer has three failed login attempts
When the customer enters the correct password
Then the system rejects the login and shows that the account is locked
```

In acceptance test-driven development, business representatives, developers, and testers create acceptance tests before implementation. The discussion exposes misunderstandings before code exists.

## 4. Test planning and estimation

A test plan records objectives, scope, assumptions, risks, approach, resources, schedule, responsibilities, environments, tools, entry criteria, and exit criteria.

Testers contribute to release and iteration planning by examining testability, identifying risks, estimating work, defining acceptance criteria, and splitting work into testable items.

### Entry and exit criteria

Entry criteria define the conditions needed to start an activity. Exit criteria define the conditions needed to declare it complete. Agile teams may use Definition of Ready and Definition of Done for related purposes.

### Estimation methods

| Method | Basis |
|---|---|
| Ratios | Historical relationships, such as development effort to test effort |
| Extrapolation | Measurements from completed work in the current project |
| Wideband Delphi | Repeated independent expert estimates followed by discussion |
| Three-point estimation | Optimistic, most likely, and pessimistic estimates |

Three-point formulas:

`E = (a + 4m + b) / 6`

`SD = (b - a) / 6`

Example: `a = 6`, `m = 9`, and `b = 18` gives `E = 10` and `SD = 2`.

### Test prioritization

Teams can prioritize tests by risk, coverage, or requirement priority. Dependencies and resource availability can change the execution order.

### Test pyramid

The test pyramid groups tests by granularity. A common shape contains many fast component tests, fewer service or integration tests, and a small set of end-to-end tests. The suitable shape depends on the product.

### Testing quadrants

| Quadrant | Perspective and purpose | Examples |
|---|---|---|
| Q1 | Technology-facing tests that support the team | Component and component-integration tests |
| Q2 | Business-facing tests that support the team | Functional tests, examples, and story tests |
| Q3 | Business-facing tests that critique the product | Exploratory, usability, and user-acceptance testing |
| Q4 | Technology-facing tests that critique the product | Performance, security, and reliability testing |

## 5. Risk management

A risk is a possible event, hazard, or situation whose occurrence would cause harm. A risk level reflects likelihood and impact.

- Project risks threaten project delivery. Examples include staff loss, supplier delay, poor estimates, and unavailable environments.
- Product risks threaten product quality. Examples include incorrect calculations, data loss, slow response, weak security, and poor usability.

Product-risk analysis identifies risks, estimates their likelihood and impact, and assigns priorities. The results guide test scope, technique choice, coverage, effort, and execution order.

Product-risk control uses mitigation and monitoring. Testing can lower uncertainty and reveal failures. Other actions can prevent a risk, reduce its impact, transfer responsibility, or accept the remaining exposure.

## 6. Monitoring, control, and completion

Test monitoring collects information and compares progress with the plan. Test control uses that information to direct corrective action.

Useful metrics include:

- completed test cases and pass or failure counts
- requirement, risk, or code coverage
- defect counts by severity and status
- planned and actual effort
- blocked tests and environment availability

A progress report supports decisions during testing. A completion report summarizes the work after a test activity or level ends. Match the content, detail, and communication channel to the audience.

## 7. Configuration management

Configuration management identifies and controls versions of the test object and testware. It helps a tester reproduce a result using the correct build, environment, data, configuration, and test script.

## 8. Defect management

A defect report should help a team reproduce, assess, fix, and track a problem. Include:

- unique identifier and concise title
- reporter and date
- test object version and environment
- preconditions, inputs, and steps
- expected and actual results
- evidence such as logs or screenshots
- severity, priority, status, and references

Severity describes the effect of the defect. Priority describes the urgency of fixing it. Organizations may define these terms through local workflows.

## 9. Test tools

Tools can support planning, management, static testing, test design, data preparation, execution, coverage, non-functional testing, collaboration, and DevOps delivery.

Potential benefits include repeatable execution, faster feedback, consistent measurement, easier access to information, and more time for analytical work.

Potential risks include unrealistic expectations, poor tool selection, weak training, maintenance cost, unsuitable automation, dependence on one tool, and loss of useful human observation.

Automation changes the tester's work. It does not replace judgment, exploration, or communication.

## Week 3 exercises

1. A suite executes 45 of 60 statements. Calculate statement coverage.
2. A suite executes 14 of 20 branches. Calculate branch coverage.
3. Write an exploratory charter for a password-reset feature.
4. Calculate `E` and `SD` when `a = 4`, `m = 7`, and `b = 16`.
5. Classify an unavailable test environment as a project or product risk.
6. Classify incorrect interest calculation as a project or product risk.
7. Explain severity and priority.
8. Name three risks of test automation.

### Answers

1. `45 / 60 x 100% = 75%`.
2. `14 / 20 x 100% = 70%`.
3. Example: Explore password-reset links to discover expiration, reuse, account-disclosure, and multi-device problems.
4. `E = (4 + 28 + 16) / 6 = 8`. `SD = (16 - 4) / 6 = 2`.
5. Project risk.
6. Product risk.
7. Severity measures effect. Priority measures repair urgency.
8. Examples include unrealistic expectations, maintenance cost, weak training, unsuitable automation, and tool dependence.
