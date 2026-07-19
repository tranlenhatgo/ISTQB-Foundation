# CTFL Quick Reference

## Exam numbers

- 40 questions
- 60 minutes
- 26 correct answers to pass
- Personal readiness target: 32 out of 40 on two fresh mocks

## Seven testing principles

1. Testing shows the presence of defects, not their absence.
2. Exhaustive testing is impossible.
3. Early testing saves time and money.
4. Defects cluster together.
5. Tests wear out.
6. Testing depends on context.
7. Absence of defects can still leave an unusable product.

## Term pairs

| Term | Meaning |
|---|---|
| Error | A human action that produces an incorrect result |
| Defect | An imperfection in a work product |
| Failure | Observed behavior that differs from expected behavior |
| Root cause | The underlying reason an error or defect occurred |
| Verification | Checks whether the product meets specified requirements |
| Validation | Checks whether the product meets stakeholder needs in operation |
| Confirmation testing | Checks whether a fix solved the original defect |
| Regression testing | Checks whether a change harmed existing behavior |
| Static testing | Examines a work product without executing software |
| Dynamic testing | Executes software and observes its behavior |

## Test activities

Planning, monitoring and control, analysis, design, implementation, execution, and completion.

## Test levels

Component, component integration, system, system integration, and acceptance.

## Black-box techniques

- Equivalence partitioning selects representatives from valid and invalid partitions.
- Two-value BVA covers each boundary and its closest neighbor in the adjacent partition.
- Three-value BVA covers the boundary and both adjacent values.
- Decision-table testing covers combinations of conditions and resulting actions.
- State-transition testing covers states, valid transitions, events, and selected invalid transitions.

## White-box coverage

`Statement coverage = executed statements / total statements x 100%`

`Branch coverage = executed branches / total branches x 100%`

One hundred percent branch coverage implies 100 percent statement coverage. One hundred percent statement coverage does not imply 100 percent branch coverage.

## Three-point estimation

`Estimate E = (a + 4m + b) / 6`

`Standard deviation SD = (b - a) / 6`

Here, `a` is optimistic, `m` is most likely, and `b` is pessimistic.

## Risk

`Risk level` depends on likelihood and impact. Product risks threaten product quality. Project risks threaten project delivery.

## Exam habits

- Read words such as BEST, MOST, LEAST, and NOT twice.
- Use ISTQB definitions, even when your company uses different terms.
- Draw partitions, boundaries, tables, and state diagrams on paper.
- Answer each question and reserve 10 minutes for review.
