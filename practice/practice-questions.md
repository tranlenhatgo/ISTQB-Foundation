# CTFL Practice Questions

These 30 original questions use one correct answer each. Answer the assigned group before reading the key.

## Questions 1 to 10: Week 1

### 1. Which statement describes a valid test objective?

A. Prove that the test object has no remaining defects  
B. Provide stakeholders with information for decisions  
C. Debug each failure found during execution  
D. Execute every possible input combination

### 2. Which task belongs to debugging?

A. Review a requirement for ambiguity  
B. Compare an actual result with an expected result  
C. Locate and correct the defect that caused a failure  
D. Execute a regression suite after a release

### 3. Which statement compares testing and quality assurance?

A. Testing focuses on products, while quality assurance focuses on processes  
B. Testing prevents defects, while quality assurance triggers failures  
C. Testing and quality assurance use the same activities  
D. Quality assurance forms one test level

### 4. One module contains 65 percent of the defects found in a system. Which principle does this illustrate?

A. Exhaustive testing is impossible  
B. Testing depends on context  
C. Defects cluster together  
D. Tests wear out

### 5. A regression suite has stopped finding new defects after many unchanged executions. Which action follows the tests-wear-out principle?

A. Stop regression testing  
B. Add new tests and revise existing tests  
C. Execute the same suite more often  
D. Replace dynamic testing with debugging

### 6. During which activity does a tester identify and prioritize test conditions from the test basis?

A. Test analysis  
B. Test implementation  
C. Test execution  
D. Test completion

### 7. Which benefit does traceability provide?

A. It proves that the product contains no defects  
B. It connects the test basis, tests, results, and defects for coverage and reporting  
C. It replaces impact analysis after a change  
D. It removes the need for test monitoring

### 8. Which is a possible drawback of test independence?

A. Independent testers cannot find failures  
B. Independent testing removes developer responsibility for quality  
C. Separation can reduce collaboration and product familiarity  
D. Independent testers must perform debugging

### 9. Which activity represents shift-left testing?

A. Running acceptance tests after release  
B. Reviewing acceptance criteria before implementation  
C. Moving regression tests to the end of the project  
D. Delaying performance testing until users report slowness

### 10. A developer fixes an incorrect total. Which test checks whether that specific fix works?

A. Regression testing  
B. Confirmation testing  
C. Acceptance testing  
D. Exploratory testing

## Questions 11 to 20: Week 2

### 11. Which activity is static testing?

A. Execute a load test against an API  
B. Review a user story for missing acceptance criteria  
C. Run an automated component test  
D. Measure response time in production

### 12. Which task belongs to review initiation?

A. Fix confirmed defects  
B. Give reviewers access to the work product and explain the scope  
C. Select the work product six months before the review  
D. Measure failures during test execution

### 13. Who commonly leads a walkthrough?

A. The author  
B. The test automation engineer  
C. The project sponsor  
D. The external auditor

### 14. An age field accepts integers from 18 through 65 inclusive. Which set covers all equivalence partitions with the fewest values?

A. 18, 65  
B. 17, 18, 65, 66  
C. 17, 40, 66  
D. 18, 40, 65

### 15. A quantity field accepts integers from 1 through 100 inclusive. Which set provides two-value boundary coverage?

A. 1, 100  
B. 0, 1, 100, 101  
C. 1, 2, 99, 100  
D. 0, 2, 99, 101

### 16. A field accepts integers from 5 through 10 inclusive. Which set provides three-value boundary coverage?

A. 4, 5, 10, 11  
B. 5, 6, 9, 10  
C. 4, 5, 6, 9, 10, 11  
D. 3, 4, 5, 10, 11, 12

### 17. A complete decision table has three independent Boolean conditions. How many rules does it contain?

A. 3  
B. 6  
C. 8  
D. 9

### 18. A system locks an account after three failed attempts. Which technique best tests the sequence of attempts and the locked state?

A. Statement testing  
B. State-transition testing  
C. Equivalence partitioning  
D. Checklist-based testing

### 19. A shipping charge depends on membership status, destination, and order value. Which technique best covers combinations of these conditions?

A. Decision-table testing  
B. Statement testing  
C. Error guessing  
D. Boundary-value analysis

### 20. Which defect can static testing find before executable code exists?

A. A slow database query under load  
B. An ambiguous requirement  
C. A service timeout in production  
D. A memory leak during a long execution

## Questions 21 to 30: Week 3

### 21. A test suite executes 60 of 80 executable statements. What statement coverage has it achieved?

A. 20 percent  
B. 60 percent  
C. 75 percent  
D. 80 percent

### 22. Which relationship between statement and branch coverage is correct?

A. Full statement coverage implies full branch coverage  
B. Full branch coverage implies full statement coverage  
C. Both measures produce the same result  
D. Branch coverage measures requirements

### 23. A tester learns about a feature while designing and executing tests during a time-boxed session. Which technique is this?

A. Exploratory testing  
B. Decision-table testing  
C. Branch testing  
D. Inspection

### 24. Which acceptance criterion uses a behavior-driven scenario format?

A. The login page should work well  
B. Test all valid and invalid passwords  
C. Given a locked account, when the user enters a valid password, then access remains denied  
D. Developers must complete login by Friday

### 25. Optimistic effort is 4 hours, most likely effort is 7 hours, and pessimistic effort is 16 hours. What is the three-point estimate?

A. 7 hours  
B. 8 hours  
C. 9 hours  
D. 27 hours

### 26. Which is a product risk?

A. The test environment arrives two weeks late  
B. A key tester leaves the company  
C. The interest calculation produces incorrect totals  
D. The supplier exceeds its budget

### 27. Which test should run first under risk-based prioritization?

A. The shortest test  
B. The newest automated test  
C. The test covering the highest product risk  
D. The test with the lowest setup cost

### 28. Test monitoring shows that execution is behind schedule. The test manager assigns another tester to the blocked area. Which activity is the reassignment?

A. Test analysis  
B. Test control  
C. Test design  
D. Test completion

### 29. Which information gives a developer the strongest support for reproducing a defect?

A. The tester's job title  
B. The number of tests in the full suite  
C. Build, environment, preconditions, inputs, steps, and observed result  
D. The planned release date

### 30. Which is a risk of test automation?

A. Consistent execution  
B. Faster feedback  
C. Unrealistic expectations and high maintenance cost  
D. Repeatable measurement

# Answer Key

| Question | Answer | Explanation |
|---:|:---:|---|
| 1 | B | Testing provides information about quality and risk for stakeholder decisions. |
| 2 | C | Debugging diagnoses and removes the defect that caused a failure. |
| 3 | A | Testing evaluates work products. QA improves and follows processes. |
| 4 | C | Defects and failures often concentrate in a small number of components. |
| 5 | B | Teams refresh tests and data when repeated tests lose defect-finding power. |
| 6 | A | Test analysis examines the basis and identifies test conditions. |
| 7 | B | Traceability supports coverage, impact analysis, audits, and reporting. |
| 8 | C | Organizational distance can weaken communication and product knowledge. |
| 9 | B | Reviewing criteria before coding moves defect detection earlier. |
| 10 | B | Confirmation testing checks whether the original defect has been fixed. |
| 11 | B | A review examines a work product without executing software. |
| 12 | B | Initiation prepares reviewers, access, scope, and readiness. |
| 13 | A | The author commonly leads a walkthrough. |
| 14 | C | The three partitions are below 18, 18 through 65, and above 65. |
| 15 | B | Two-value BVA covers each boundary and the closest value in the adjacent partition. |
| 16 | C | Three-value BVA covers each boundary and one value on either side. |
| 17 | C | Three Boolean conditions produce `2^3 = 8` combinations. |
| 18 | B | The behavior depends on the current state and event history. |
| 19 | A | A decision table covers combinations of conditions and resulting actions. |
| 20 | B | Reviewers can find ambiguity in a requirement before code exists. |
| 21 | C | `60 / 80 x 100% = 75%`. |
| 22 | B | Executing all branches also executes their statements. Statement coverage can miss an outcome. |
| 23 | A | Exploratory testing combines learning, design, and execution. |
| 24 | C | Given, When, Then expresses a precondition, event, and expected behavior. |
| 25 | B | `(4 + 4 x 7 + 16) / 6 = 8`. |
| 26 | C | An incorrect calculation threatens product quality. The other options threaten delivery. |
| 27 | C | Risk-based prioritization executes tests for the most important risks first. |
| 28 | B | Test control uses monitoring information to take corrective action. |
| 29 | C | Version, environment, preconditions, data, steps, and evidence support reproduction. |
| 30 | C | Tool adoption can fail through inflated expectations and neglected maintenance. |

## Score guide

- 27 to 30: strong result for this set
- 23 to 26: review mistakes, then move to official samples
- 18 to 22: repeat the related weekly notes
- Below 18: rebuild the fundamentals before timed mocks
