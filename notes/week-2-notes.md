# Week 2 Notes: Static Testing and Black-Box Techniques

## 1. Static testing

Static testing examines work products without executing the software. Teams can review requirements, user stories, designs, code, test cases, contracts, and manuals. Static analysis tools examine structured work products such as code or models.

Static testing can find:

- ambiguous, missing, inconsistent, or duplicated requirements
- design and interface defects
- unreachable code and some security weaknesses
- deviations from standards
- gaps in test-basis coverage

Early static testing prevents defects from spreading into later work products.

## 2. Static and dynamic testing

| Static testing | Dynamic testing |
|---|---|
| Does not execute software | Executes software |
| Can examine non-executable work products | Needs an executable test object |
| Finds defects in the work product | Triggers failures that may reveal defects |
| Can find unreachable code through analysis | Observes behavior on executed paths |

The two approaches complement each other. A review can find a contradictory requirement. A dynamic test can show that an implemented calculation produces the wrong result.

## 3. Review process and roles

### Review activities

1. Planning defines the scope, objectives, work products, participants, schedule, and approach.
2. Review initiation gives reviewers access, explains the scope, and checks readiness.
3. Individual review asks each reviewer to examine the work product and record anomalies.
4. Communication and analysis discusses anomalies, decides their status, and assigns actions.
5. Fixing and reporting corrects defects, records results, and checks exit criteria.

### Review roles

| Role | Responsibility |
|---|---|
| Manager | Chooses work products and provides resources |
| Review leader | Organizes the review and takes responsibility for completion |
| Author | Creates the work product and fixes confirmed defects |
| Moderator | Runs meetings and supports constructive discussion |
| Scribe | Records anomalies, decisions, and actions |
| Reviewer | Examines the work product and identifies anomalies |

One person may hold more than one role when the review type permits it.

## 4. Review types

| Type | Typical characteristics |
|---|---|
| Informal review | Light process, little documentation, and no formal meeting requirement |
| Walkthrough | Author leads; participants learn, evaluate quality, identify defects, and build shared understanding |
| Technical review | Qualified reviewers evaluate technical quality, discuss alternatives, and reach decisions |
| Inspection | Formal process with defined roles, entry and exit criteria, individual review, defect logging, and metrics |

Review success depends on clear objectives, suitable reviewers, enough preparation time, small review portions, management support, training, and a respectful culture.

## 5. Equivalence partitioning

Equivalence partitioning divides data into groups whose values should receive the same treatment. A test case selects a representative from each required partition.

Example: A discount applies to order quantities from 10 through 50.

- Partition 1: quantities below 10, invalid
- Partition 2: quantities from 10 through 50, valid
- Partition 3: quantities above 50, invalid

The values 9, 25, and 51 cover all three partitions.

Do not combine two invalid partitions in one test when one failure could hide the other. Test each invalid partition in a separate test.

### Coverage

`EP coverage = tested partitions / identified partitions x 100%`

### Exercise

A username must contain 6 through 12 characters. Identify the partitions and choose three representatives.

Answer: fewer than 6, 6 through 12, and more than 12. Example representatives are 5, 8, and 13.

## 6. Boundary-value analysis

Defects often occur at the edges of ordered partitions. Boundary-value analysis selects values around those edges.

For an inclusive valid range from 18 through 65:

- Two-value BVA: 17, 18, 65, 66
- Three-value BVA: 17, 18, 19, 64, 65, 66

Two-value BVA covers each boundary and its closest value in the adjacent partition. Three-value BVA covers the boundary and the nearest value on each side.

### Exercise

An integer field accepts 100 through 999. Select values for two-value BVA and three-value BVA.

Answer:

- Two-value: 99, 100, 999, 1000
- Three-value: 99, 100, 101, 998, 999, 1000

## 7. Decision-table testing

A decision table connects combinations of conditions with expected actions. Use it when business rules contain interacting conditions.

Example: A shop grants free delivery when the customer has premium membership or the order total reaches $50.

| Rule | Premium member | Total at least $50 | Free delivery |
|---:|:---:|:---:|:---:|
| 1 | T | T | T |
| 2 | T | F | T |
| 3 | F | T | T |
| 4 | F | F | F |

For `n` independent Boolean conditions, a complete table contains `2^n` rules. Requirements may make some combinations impossible. Mark and exclude those combinations with supporting evidence.

### Coverage

`Decision-table coverage = exercised feasible rules / feasible rules x 100%`

### Exercise

A login succeeds when the username is valid, the password is valid, and the account is unlocked. A complete table has three Boolean conditions.

Answer: `2^3 = 8` rules. One rule produces a successful login.

## 8. State-transition testing

Use state-transition testing when system behavior depends on the current state and an event. A model includes states, events, transitions, guard conditions, and actions.

Example account model:

- Active plus failed login produces Active with the failure count increased.
- Active plus third failed login produces Locked.
- Locked plus correct password remains Locked.
- Locked plus administrator reset produces Active.

Tests can cover states, valid transitions, and selected invalid transitions. State-transition defects include a missing transition, the wrong destination state, an incorrect action, or acceptance of an invalid transition.

### Exercise

A document has Draft, Submitted, Approved, and Rejected states.

- Submit moves Draft to Submitted.
- Approve moves Submitted to Approved.
- Reject moves Submitted to Rejected.
- Edit moves Rejected to Draft.

Write one valid path that ends in Approved and one that includes rejection before approval.

Answer:

- Draft, Submit, Submitted, Approve, Approved
- Draft, Submit, Submitted, Reject, Rejected, Edit, Draft, Submit, Submitted, Approve, Approved

## Technique selection

| Situation | Suitable technique |
|---|---|
| Groups of inputs should behave alike | Equivalence partitioning |
| Defects may occur at numeric or ordered limits | Boundary-value analysis |
| Actions depend on combinations of business conditions | Decision-table testing |
| Behavior depends on history or current state | State-transition testing |

## Week 2 recall check

1. Give two work products suitable for static testing.
2. Name the five review activities.
3. Compare a walkthrough with an inspection.
4. Choose one value for each partition of the range 1 through 100 inclusive.
5. Give the two-value BVA set for that range.
6. Calculate the number of complete decision-table rules for four Boolean conditions.
7. Name four elements of a state model.

### Short answers

1. Examples include requirements, code, user stories, designs, and test cases.
2. Planning; initiation; individual review; communication and analysis; fixing and reporting.
3. The author leads a walkthrough. An inspection uses a formal process, defined roles, criteria, logs, and metrics.
4. Example: 0, 50, 101.
5. 0, 1, 100, 101.
6. `2^4 = 16`.
7. States, events, transitions, guards, and actions are model elements.
