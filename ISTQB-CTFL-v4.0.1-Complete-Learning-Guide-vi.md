# ISTQB Certified Tester Foundation Level (CTFL) v4.0.1 - Hướng dẫn học đầy đủ bằng tiếng Việt

> Khóa tự học theo định hướng thi CTFL dành cho người bắt đầu. Tài liệu bao phủ sáu chương và toàn bộ Learning Objectives trong syllabus v4.0.1. Phần giải thích dùng tiếng Việt tự nhiên; các thuật ngữ ISTQB cần nhận biết trong đề thi được giữ bằng tiếng Anh.

## Quy ước ngôn ngữ

- Các thuật ngữ như **testing**, **debugging**, **test object**, **test basis**, **test condition**, **coverage**, **verification** và **validation** được giữ bằng tiếng Anh.
- Câu giải thích, ví dụ và phần nối ý dùng tiếng Việt để dễ hiểu và dễ nhớ.
- Learning Objective ID, K-level, công thức, code và tên chính thức của kỹ thuật được giữ nguyên.
- ShopEZ và các tình huống web, API, UI là ví dụ giảng dạy của tài liệu, không phải official syllabus examples.

## Cách sử dụng tài liệu

1. Đọc Chapters 1-3 để xây nền tảng khái niệm.
2. Dành thêm thời gian cho Chapters 4 và 5 vì hai chương này chứa toàn bộ Learning Objectives ở mức **K3 (Apply)**.
3. Tự giải từng ví dụ trên giấy trước khi mở lời giải.
4. Cuối mỗi chương, làm phần practice khi không mở tài liệu. Sau đó đọc phần giải thích, đừng chỉ nhớ chữ cái đáp án.
5. Dùng checklist cuối tài liệu để tìm Learning Objective còn yếu rồi học lại phần tương ứng.

### K-levels

- **K1 - Remember:** nhận ra, xác định hoặc nhớ lại một thuật ngữ hay sự kiện.
- **K2 - Understand:** giải thích, so sánh, phân biệt, phân loại, tóm tắt hoặc chọn ví dụ đúng.
- **K3 - Apply:** áp dụng một kỹ thuật hoặc quy trình vào tình huống quen thuộc.

Mọi nội dung trong Chapters 1-6 đều có thể xuất hiện ít nhất ở mức K1. Learning Objective được đánh dấu K2 hoặc K3 cũng có thể được kiểm tra ở mức thấp hơn.

## Mục lục

- [Chapter 1 - Fundamentals of Testing](#chapter-1---fundamentals-of-testing)
- [Chapter 2 - Testing Throughout the Software Development Lifecycle](#chapter-2---testing-throughout-the-software-development-lifecycle)
- [Chapter 3 - Static Testing](#chapter-3---static-testing)
- [Chapter 4 - Test Analysis and Design](#chapter-4---test-analysis-and-design)
- [Chapter 5 - Managing the Test Activities](#chapter-5---managing-the-test-activities)
- [Chapter 6 - Test Tools](#chapter-6---test-tools)
- [Tổng hợp và chuẩn bị thi](#tổng-hợp-và-chuẩn-bị-thi)
- [Glossary từ khóa ngắn gọn](#glossary-từ-khóa-ngắn-gọn)

## Course map

| Chapter | Chủ đề | Official minimum training time | Kết quả học tập chính |
|---|---|---:|---|
| 1 | Fundamentals of Testing | 180 phút | Hiểu vì sao cần testing và testing được thực hiện như thế nào |
| 2 | Testing Throughout the SDLC | 130 phút | Điều chỉnh testing theo lifecycle, test levels, test types và maintenance |
| 3 | Static Testing | 80 phút | Sử dụng hiệu quả review và static analysis |
| 4 | Test Analysis and Design | 390 phút | Suy ra test bằng black-box, white-box, experience-based và collaboration-based approaches |
| 5 | Managing the Test Activities | 335 phút | Lập kế hoạch, ước lượng, ưu tiên, quản lý risk, theo dõi, báo cáo, quản lý configuration và defect |
| 6 | Test Tools | 20 phút | Giải thích tool support cùng lợi ích và risk của test automation |

Tổng official instructional time: **1.135 phút (18 giờ 55 phút)**.

## Running example: ShopEZ

Nhiều ví dụ dùng **ShopEZ**, một cửa hàng trực tuyến có các quy tắc rút gọn:

- Registered customer có thể sign in, xem sản phẩm, thêm sản phẩm vào cart, áp dụng voucher, thanh toán và theo dõi order.
- Standard shipping miễn phí khi order đạt ít nhất $100; nếu thấp hơn, phí shipping là $8.
- Voucher có thể phụ thuộc vào customer status, order value và expiry date.
- Account bị khóa sau ba lần sign-in thất bại liên tiếp.

Ví dụ được giữ nhỏ để dễ học. Trong công việc, bạn cần xác nhận assumption với stakeholder thay vì tự đặt ra.

## Thói quen làm bài thi

- Đọc kỹ các từ giới hạn như **best**, **most likely**, **first**, **minimum**, **all** và **except** vì chúng có thể thay đổi đáp án.
- Tách rõ các khái niệm gần nhau: testing với debugging; verification với validation; confirmation với regression; product risk với project risk; severity với priority.
- Khi tính toán, viết công thức và denominator trước khi thay số.
- Với test technique, xác định **coverage item**: partition, boundary và neighbor, decision-table column, state/transition, statement hoặc branch.
- Loại các phát biểu tuyệt đối như “testing chứng minh không còn defect”, trừ khi bối cảnh thật sự cho phép kết luận đó.

---

# Chapter 1 - Fundamentals of Testing

## Learning Objectives

- **FL-1.1.1 (K1):** Xác định các test objectives điển hình.
- **FL-1.1.2 (K2):** Phân biệt testing với debugging.
- **FL-1.2.1 (K2):** Nêu ví dụ giải thích vì sao testing là cần thiết.
- **FL-1.2.2 (K1):** Nhớ mối quan hệ giữa testing và quality assurance.
- **FL-1.2.3 (K2):** Phân biệt root cause, error, defect và failure.
- **FL-1.3.1 (K2):** Giải thích bảy testing principles.
- **FL-1.4.1-1.4.5 (K2):** Hiểu test activities, context, testware, traceability và test roles.
- **FL-1.5.1 (K2), FL-1.5.2 (K1), FL-1.5.3 (K2):** Hiểu tester skills, whole-team approach và independence.

## 1.1 What Testing Is

**Software testing** là tập hợp các hoạt động nhằm tìm defect và đánh giá chất lượng của software work product. Work product đang được kiểm thử gọi là **test object**. Test object có thể là executable code, requirement, model, user story, interface specification, database script hoặc test plan.

Testing rộng hơn việc chạy chương trình:

- **Static testing** đánh giá work product mà không chạy phần mềm, thông qua review hoặc static analysis.
- **Dynamic testing** chạy phần mềm rồi so sánh actual result với expected result.
- **Verification** đặt câu hỏi: “Chúng ta có xây sản phẩm đúng theo specified requirements không?”
- **Validation** đặt câu hỏi: “Sản phẩm có đáp ứng nhu cầu của user và stakeholder trong operational environment không?”

Một requirement sai nhưng được implementation chính xác có thể vượt qua verification nhưng thất bại ở validation. Ví dụ, specification yêu cầu giữ order history trong 30 ngày và developer làm đúng như vậy. Nếu pháp luật yêu cầu giữ bảy năm, implementation đã được verified theo specification nhưng không valid trong business context.

### Typical Test Objectives

Testing có thể nhằm:

1. đánh giá work product;
2. gây ra failure và tìm defect;
3. đạt required coverage;
4. giảm risk do chất lượng không phù hợp;
5. verify requirements;
6. verify contractual, legal và regulatory compliance;
7. cung cấp thông tin để stakeholder ra quyết định;
8. tạo niềm tin vào chất lượng;
9. validate rằng sản phẩm đầy đủ và đáp ứng stakeholder needs.

Test objective thay đổi theo bối cảnh. Component test có thể nhắm đến branch coverage; acceptance testing có thể validate business readiness; dự án chịu regulation có thể ưu tiên evidence và traceability.

CTFL v4.0.1, section 1.1.1, PDF pages 15-16.

## 1.2 Testing and Debugging

Testing và debugging có liên quan nhưng là hai hoạt động riêng.

| Hoạt động | Mục đích | Người thường thực hiện | Kết quả chính |
|---|---|---|---|
| **Testing** | Làm lộ failure hoặc tìm defect và đánh giá chất lượng | Tester hoặc người đang thực hiện testing role | Test result, anomaly, defect information |
| **Debugging** | Tìm nguyên nhân của failure, phân tích rồi loại bỏ defect | Thường là developer | Work product đã sửa |
| **Confirmation testing** | Kiểm tra original defect đã được sửa thành công | Nên là người thực hiện test ban đầu | Bằng chứng failure cũ không còn xảy ra |
| **Regression testing** | Kiểm tra change có gây adverse effect ở nơi khác không | Tester hoặc team, thường được automate | Bằng chứng về side effect |

Với failure do dynamic testing phát hiện, debugging thường gồm tái hiện failure, chẩn đoán defect và sửa defect. Nếu review tìm defect trực tiếp, không cần tái hiện hoặc chẩn đoán failure vì phần mềm chưa được chạy.

**Teaching example:** ShopEZ hiển thị order total âm.

- Tester chạy voucher scenario và thấy total âm: **testing**.
- Developer tìm ra hai discount được áp dụng sai thứ tự rồi sửa calculation: **debugging**.
- Tester chạy lại scenario từng fail: **confirmation testing**.
- Tester kiểm tra thêm voucher, tax, refund và invoice: **regression testing**.

> **Mẹo nhớ:** Testing tìm vấn đề. Debugging tìm nguyên nhân và sửa vấn đề.

CTFL v4.0.1, section 1.1.2, PDF page 16.

## 1.3 Why Testing Is Necessary

Testing là một dạng quality control. Testing có thể tìm defect với chi phí hợp lý, cung cấp thông tin trực tiếp về product quality, hỗ trợ release decision, đại diện cho user concerns và chứng minh compliance.

Causal chain cần nhớ:

> **Root cause → Human error → Defect trong work product → Kích hoạt defect → Failure**

- **Root cause:** điều kiện nền tảng khiến vấn đề có thể xảy ra, như training không đủ hoặc responsibility mơ hồ.
- **Error:** hành động của con người tạo ra kết quả sai, như hiểu nhầm inclusive boundary.
- **Defect:** khiếm khuyết trong work product, như code dùng <code>&gt;</code> thay cho <code>&gt;=</code>.
- **Failure:** hành vi sai có thể quan sát khi defect được kích hoạt, như tính phí shipping cho order đúng $100.

Không phải defect nào cũng tạo failure trong mọi lần chạy. Leap-year calculation bị lỗi có thể nằm ẩn cho đến khi hệ thống xử lý ngày liên quan. Environmental condition, như radiation tác động lên firmware, cũng có thể gây failure.

### Testing and Quality Assurance

- **Testing** hướng vào product và mang tính corrective: đánh giá work product, làm lộ vấn đề và hỗ trợ sửa chữa. Testing là một hình thức chính của **quality control**.
- **Quality assurance (QA)** hướng vào process và mang tính preventive: thiết lập và cải tiến process để tăng khả năng tạo ra product tốt.

Test result phục vụ cả hai. Testing dùng kết quả để phát hiện và xử lý product defect. QA dùng kết quả tổng hợp để cải thiện development process và test process. QA là trách nhiệm của cả team, không phải tên khác của test team.

> **Mẹo nhớ:** Testing hỏi “Sản phẩm có vấn đề gì?”. QA hỏi “Quy trình cần cải thiện ở đâu?”.

CTFL v4.0.1, sections 1.2.1-1.2.3, PDF pages 16-17.

## 1.4 The Seven Testing Principles

1. **Testing shows the presence, not the absence, of defects.**  
   Test pass làm giảm uncertainty nhưng không chứng minh product hoàn hảo.

2. **Exhaustive testing is impossible.**  
   Trừ trường hợp rất nhỏ, bạn không thể test mọi input, path, environment và timing combination. Hãy dùng test technique, prioritization và risk.

3. **Early testing saves time and money.**  
   Requirement ambiguity được loại bỏ trong review sẽ không lan sang design, code, test và production.

4. **Defects cluster together.**  
   Một số ít component thường chứa phần lớn defect hoặc gây phần lớn operational failure. Dùng defect cluster làm input cho risk-based testing nhưng vẫn xem xét các phần còn lại.

5. **Tests wear out.**  
   Lặp lại mãi những test không đổi thường tìm được ít defect mới hơn. Team cần cập nhật test data và test. Automated regression test ổn định vẫn hữu ích để phát hiện behavior lỗi quay lại.

6. **Testing is context dependent.**  
   Medical device, game, payroll batch và disposable prototype cần objective, rigor, independence và documentation khác nhau.

7. **Absence-of-defects fallacy.**  
   System có thể đáp ứng mọi written requirement nhưng vẫn thất bại vì requirement không giải quyết nhu cầu thật của user. Cần kết hợp verification với validation.

**Exam trap:** “Mọi test đều pass nên product không còn defect” vi phạm principles 1 và 7. Kết quả pass có thể hỗ trợ risk-based release decision nhưng không chứng minh product hoàn hảo.

> **Mẹo nhớ:** Có defect - Không test hết - Test sớm - Defect theo cụm - Test bị mòn - Tùy bối cảnh - Đúng spec vẫn có thể sai nhu cầu.

CTFL v4.0.1, section 1.3, PDF page 18.

## 1.5 The Test Process

Các activity dưới đây mô tả **logic của những việc cần làm**, không phải một quy trình bắt buộc đi thẳng từ bước đầu đến bước cuối như waterfall. Trong thực tế, chúng có thể chồng lấn, lặp lại khi có thông tin mới hoặc diễn ra song song.

Ví dụ, trong khi một phần của feature đang ở test execution, tester vẫn có thể thực hiện test analysis cho phần tiếp theo. Nếu execution làm lộ requirement chưa rõ, team có thể quay lại analysis và design. Vì vậy, hãy nhớ **thứ tự để hiểu mục đích của từng activity**, nhưng đừng hiểu đó là thứ tự cứng.

### Test Planning - Objectives and Approach

Xác định test objectives rồi chọn test approach có thể đạt chúng trong giới hạn scope, time, budget, people, tool và risk.

**Outputs:** test plan, schedule, risk register, entry criteria và exit criteria.

### Test Monitoring and Test Control

- **Test monitoring:** thu thập thông tin và so sánh actual progress với plan.
- **Test control:** thực hiện corrective action để đạt objectives, như reprioritize test sau khi risk thay đổi hoặc bổ sung resource khi environment chậm.

**Outputs:** progress reports, metrics, control directives và risk information đã cập nhật.

### Test Analysis - What to Test?

Phân tích **test basis**, như requirement, story, design, code và risk, để tìm testable features, defect và **test conditions** cần ưu tiên. Team xác định measurable coverage criteria và đánh giá testability.

### Test Design - How to Test?

Chuyển test conditions thành test cases, charters, coverage items và test-data requirements. Thiết kế test environment rồi xác định infrastructure và tool cần dùng.

### Test Implementation - Chuẩn Bị Để Chạy Test

Tạo hoặc chuẩn bị test data và testware khác; ghép test cases thành procedures và suites; viết manual hoặc automated scripts; ưu tiên và lập execution schedule; xây và verify environment.

### Test Execution - Chạy, So Sánh, Ghi Nhận và Phân Tích

Chạy test, so sánh actual với expected result, ghi kết quả và phân tích anomaly trước khi báo cáo. Mismatch có thể đến từ product defect, test defect, data sai hoặc environment problem.

### Test Completion - Đóng và Rút Kinh Nghiệm

Tại milestone, team tóm tắt result, tạo backlog item cho work chưa xử lý, archive hoặc bàn giao testware hữu ích, đưa environment về trạng thái đã thống nhất, ghi lessons learned và phát hành completion report.

### Activity-to-Work-Product Map

| Activity | Typical testware |
|---|---|
| Planning | Test plan, schedule, risk register, entry/exit criteria |
| Monitoring/control | Progress reports, control directives, risk updates |
| Analysis | Prioritized test conditions; defect reports về test basis |
| Design | Test cases, charters, coverage items, data/environment requirements |
| Implementation | Procedures, scripts, suites, data, execution schedule, environment items như stubs và drivers |
| Execution | Test logs và defect reports |
| Completion | Completion report, lessons learned, improvement actions, change requests |

> **Mẹo nhớ:** Plan → Theo dõi/điều chỉnh → What → How → Chuẩn bị → Chạy → Kết thúc.

CTFL v4.0.1, sections 1.4.1 và 1.4.3, PDF pages 19-20.

## 1.6 Context and Traceability

Testing chịu ảnh hưởng bởi stakeholder; kỹ năng và availability của team; business domain và criticality; technology và architecture; project constraints; organizational practices; lifecycle; và tool availability. Các yếu tố này ảnh hưởng technique, coverage, automation, documentation, reporting và independence.

**Traceability** liên kết test basis với test conditions, test cases, results, risks và defects. Traceability hỗ trợ:

- coverage evaluation: requirement hoặc risk nào đã và chưa được test;
- change impact analysis: test nào bị ảnh hưởng;
- audit và governance;
- status reporting dễ hiểu;
- đánh giá residual risk.

**Teaching example:** requirement <code>R-17 free shipping ≥ $100</code> → boundary tests <code>TC-42 $99.99</code> và <code>TC-43 $100.00</code> → result → defect <code>D-8</code> → fix build → confirmation result.

Nếu không có các liên kết này, team khó chứng minh coverage hoặc retest an toàn sau change.

CTFL v4.0.1, sections 1.4.2 và 1.4.4, PDF pages 19-21.

## 1.7 Roles, Skills, Teamwork and Independence

### Principal Roles

- **Test management role** chịu trách nhiệm tổng thể cho test process, test team, leadership, planning, monitoring, control và completion.
- **Testing role** chịu trách nhiệm cho phần kỹ thuật: test analysis, design, implementation và execution.

Role không nhất thiết là job title. Trong Agile team, nhiều người có thể chia sẻ task và một người có thể giữ cả hai role.

### Essential Tester Skills

Tester cần testing knowledge; tính cẩn thận và tò mò; communication và active listening; teamwork; analytical, critical và creative thinking; technical knowledge; domain knowledge.

Khi báo defect, hãy mô tả fact, impact và evidence có thể tái hiện thay vì đổ lỗi cho author.

### Whole-Team Approach

Người có đủ kỹ năng có thể thực hiện task và mọi thành viên cùng chịu trách nhiệm về quality. Tester cộng tác với business representative để xây acceptance test, đồng thời làm việc với developer về strategy và automation.

Cách làm này giúp communication nhanh hơn, knowledge được chia sẻ và các skill bổ sung cho nhau. Tuy nhiên, team vẫn có thể cần specialist hoặc independent testing tùy bối cảnh.

### Independence of Testing

Một thang independence thường dùng:

1. author test chính work của mình: no independence;
2. peer trong cùng team: some independence;
3. tester ngoài team của author nhưng trong cùng organization: high independence;
4. external tester: very high independence.

Independent tester có thể tìm loại defect khác vì họ có assumption và bias khác author. Drawback gồm isolation, adversarial relationship, developer giảm trách nhiệm về quality, bottleneck và blame.

Phần lớn project hưởng lợi từ nhiều mức independence: developer test component, test team test system, user thực hiện acceptance testing.

> **Mẹo nhớ:** Independence tăng góc nhìn mới nhưng có thể làm giảm sự gần gũi và tốc độ trao đổi.

CTFL v4.0.1, sections 1.4.5 và 1.5, PDF pages 21-23.

## Chapter 1 Application Practice

### Q1 - Classify the Chain

Pricing policy nói VIP customer được giảm 15%, nhưng analyst ghi 10%. Developer implementation đúng 10%. Sau đó VIP customer phải trả quá nhiều. Hãy xác định error, defect và failure.

<details><summary>Đáp án</summary>

Việc analyst hiểu hoặc viết sai là **error**; “10%” trong requirement là **defect**; customer bị tính quá nhiều là **failure**. Root cause có thể là thiếu policy review hoặc ownership không rõ. Implementation của developer vẫn có thể conform với requirement bị defect.

</details>

### Q2 - Choose the Activity

Trong khi testing, 58% high-risk requirements đã được cover so với plan 80%. Manager phân thêm tester và hoãn low-risk tests. Activity nào đang diễn ra?

<details><summary>Đáp án</summary>

So sánh 58% với 80% là **test monitoring**; thêm resource và reprioritize là **test control**. Requirement-risk-test links phụ thuộc traceability.

</details>

### Q3 - Identify the Principle

Team chạy cùng một regression pack trong mười release. Pack vẫn bắt defect quay lại nhưng hiếm khi tìm defect mới. Team nên kết luận gì?

<details><summary>Đáp án</summary>

**Tests wear out** đối với việc tìm defect mới, nên team cần thêm hoặc cập nhật test và data. Không nên bỏ regression pack ổn định vì test lặp lại vẫn có thể phát hiện regression.

</details>

### Q4 - Select Independence

Một safety-critical calculation cần objective evidence, nhưng developer có algorithm expertise riêng. Cách tổ chức nào phù hợp?

<details><summary>Đáp án</summary>

Dùng **multiple levels of independence**. Developer thực hiện component tests chuyên sâu; independent team review assumptions và thực hiện system-level testing. Maximum independence không phải lựa chọn tốt trong mọi bối cảnh; team phải cân bằng independence với familiarity và communication.

</details>

### Q5 - Verification or Validation?

ShopEZ implementation “guest checkout disabled” đúng specification. Usability research sau đó cho thấy phần lớn target users bỏ cuộc khi phải tạo account. Phát biểu nào đúng?

<details><summary>Đáp án</summary>

Verification có thể đã thành công, nhưng validation cho thấy product không đáp ứng user/business needs. Đây là **absence-of-defects fallacy**.

</details>

### Chapter 1 Quick Check

Bạn đã sẵn sàng khi có thể giải thích causal chain, gọi tên seven principles, phân biệt từng test activity bằng câu hỏi hoặc output của nó, và giải thích vì sao teamwork lẫn independence có thể cải thiện testing.

---

# Chapter 2 - Testing Throughout the Software Development Lifecycle

## Learning Objectives

- **FL-2.1.1 (K2):** Giải thích SDLC được chọn ảnh hưởng testing như thế nào.
- **FL-2.1.2 (K1):** Nhớ các good testing practices áp dụng cho mọi SDLC.
- **FL-2.1.3 (K1):** Nhớ các ví dụ về test-first approaches.
- **FL-2.1.4 (K2):** Tóm tắt DevOps có thể ảnh hưởng testing như thế nào.
- **FL-2.1.5 (K2):** Giải thích shift left.
- **FL-2.1.6 (K2):** Giải thích retrospectives như một cơ chế process improvement.
- **FL-2.2.1-2.2.3 (K2):** Phân biệt test levels, test types, confirmation và regression.
- **FL-2.3.1 (K2):** Tóm tắt maintenance testing và các triggers của nó.

## 2.1 Lifecycle Models and Testing

**SDLC model** là representation ở mức cao về quan hệ logic và thời gian giữa các development phases và activities. Ví dụ gồm sequential models như waterfall và V-model; iterative models như spiral và prototyping; incremental models như Unified Process. Agile methods và practices gồm Scrum, Kanban, XP, TDD, ATDD và BDD.

Lifecycle ảnh hưởng:

- scope và timing của test activities và test levels;
- mức chi tiết của test documentation;
- test techniques và test approach;
- mức test automation;
- tester roles và responsibilities.

### Sequential Development

Team thường tạo requirements và design trước executable code. Tester có thể review và design test sớm, nhưng phần lớn dynamic testing phải chờ implementation. Formal handoff và documentation thường nhiều hơn.

V-model liên kết development work product với test activity tương ứng, như system requirements với system testing.

### Iterative and Incremental Development

Mỗi iteration có thể giao prototype hoặc working increment. Static testing và dynamic testing có thể diễn ra ở nhiều test levels trong từng iteration. Delivery thường xuyên làm tăng nhu cầu fast feedback và regression testing.

### Agile Development

Team chấp nhận change trong suốt project. Họ ưu tiên lightweight work products, collaboration, automation và continuous feedback. Manual testing thường dùng experience-based techniques vì detailed specifications có thể chưa có sớm.

“Lightweight” không có nghĩa là “không cần evidence”. Documentation vẫn phải đủ cho risk, communication, maintenance và compliance.

### Good Practices in Any Lifecycle

1. Ghép mỗi development activity với một test activity tương ứng.
2. Đặt objective riêng cho mỗi test level để có breadth mà không lặp thừa.
3. Bắt đầu test analysis và design cho một level trong development phase tương ứng.
4. Cho tester review draft ngay khi draft xuất hiện.

CTFL v4.0.1, sections 2.1.1-2.1.2, PDF pages 25-26.

## 2.2 Test-First Development

Ba approach đều định nghĩa test trước production code và áp dụng early testing cùng shift left.

- **TDD:** viết một component test nhỏ, viết lượng code vừa đủ để pass, rồi refactor test và code. TDD dẫn hướng coding.
- **ATDD:** suy ra acceptance tests từ acceptance criteria trước khi implementation story. Business, development và testing perspectives cùng cộng tác.
- **BDD:** mô tả desired behavior bằng ngôn ngữ stakeholder hiểu, thường dùng <code>Given / When / Then</code>, rồi thường automate nó.

Các test có thể tiếp tục tồn tại như automated regression suite. TDD thiên về code; ATDD và BDD thiên về externally valuable behavior và shared understanding.

> **Mẹo nhớ:** TDD hướng vào code. ATDD hướng vào acceptance. BDD hướng vào behavior dễ đọc.

CTFL v4.0.1, section 2.1.3, PDF page 26.

## 2.3 DevOps and Testing

**DevOps** kết nối development, bao gồm testing, với operations quanh common goals. DevOps kết hợp culture, team autonomy, fast feedback, integrated toolchains, continuous integration (CI), continuous delivery và continuous deployment (CD).

Lợi ích cho testing gồm fast quality feedback, component tests và static analysis sớm hơn, pipeline ổn định và lặp lại được, tăng visibility của non-functional behavior, giảm repetitive execution và mở rộng automated regression.

Thách thức gồm chi phí và kỹ năng để thiết kế, duy trì pipeline, tool, environment và automated tests. Automation không loại bỏ manual testing, nhất là exploratory, usability và user-perspective testing.

CTFL v4.0.1, section 2.1.4, PDF pages 26-27.

## 2.4 Shift Left

**Shift left** nghĩa là thực hiện testing sớm hơn trong lifecycle, không phải bỏ testing ở giai đoạn sau.

Ví dụ:

- review specifications theo góc nhìn tester;
- viết test trước code và dùng test harness;
- chạy component tests và static analysis trong CI;
- bắt đầu non-functional checks khả thi ở component level;
- xem testability như một design concern.

Shift left có thể tăng training và setup cost ở đầu project, đổi lại team giảm late rework tốn kém. Stakeholder cần ủng hộ cách làm này.

> **Mẹo nhớ:** Shift left = tìm vấn đề sớm hơn, không phải dời toàn bộ testing sang đầu dự án.

CTFL v4.0.1, section 2.1.5, PDF pages 27-28.

## 2.5 Retrospectives

Ở cuối iteration, release, project milestone hoặc thời điểm cần thiết, participants thảo luận:

1. Điều gì thành công và nên được giữ?
2. Điều gì chưa thành công và có thể cải thiện?
3. Team sẽ đưa improvement vào công việc sau bằng cách nào?

Team ghi lại owner và due date. Lợi ích gồm tăng test effectiveness và efficiency, cải thiện testware và test bases, hỗ trợ learning, team bonding và cooperation.

Retrospective chỉ tạo ra giá trị khi team theo dõi action sau cuộc họp.

CTFL v4.0.1, section 2.1.6, PDF page 28.

## 2.6 Test Levels

**Test level** là nhóm test activities được tổ chức và quản lý cùng nhau cho software ở một development phase. Các level có thể chồng lấn.

| Level | Trọng tâm | Typical basis/object | Responsibility hoặc environment thường gặp |
|---|---|---|---|
| Component testing | Component trong isolation | Code và component design | Thường do developer thực hiện; unit framework/test harness |
| Component integration testing | Interface và interaction giữa component | Architecture và interface design | Development environment; chịu ảnh hưởng bởi top-down, bottom-up hoặc big-bang integration |
| System testing | End-to-end behavior và quality của complete system | System requirements/specifications | Thường có independent team; representative environment |
| System integration testing | Interface với systems khác và external services | System/interface agreements | Environment gần operational environment |
| Acceptance testing | Validation và deployment readiness | Business needs, contracts, regulations, operations | Lý tưởng do intended users hoặc relevant authorities thực hiện |

Các dạng acceptance gồm user acceptance, operational acceptance, contractual acceptance, regulatory acceptance, alpha và beta testing.

Phân biệt level bằng test object, objective, basis, characteristic defects/failures, approach và responsibilities, không chỉ bằng người chạy test.

> **Mẹo nhớ thứ tự:** Component → component với nhau → cả system → system với bên ngoài → user/business chấp nhận.

CTFL v4.0.1, section 2.2.1, PDF page 29.

## 2.7 Test Types

**Test type** nhóm các hoạt động nhắm vào một quality characteristic hoặc test objective. Bốn type dưới đây có thể áp dụng ở mọi test level.

### Functional Testing

Kiểm tra system phải làm **what**: functional completeness, correctness và appropriateness.

### Non-Functional Testing

Kiểm tra system hoạt động **how well**. CTFL liệt kê performance efficiency, compatibility, usability (interaction capability), reliability, security, maintainability, portability (flexibility) và safety.

Một số check có thể bắt đầu sớm; số khác cần complete system trong representative environment. Phát hiện non-functional defect muộn có thể rất tốn kém vì architecture có thể phải thay đổi.

### Black-Box Testing

Suy ra test từ specified, externally observable behavior mà không dùng internal structure. Test có thể vẫn hữu ích khi implementation thay đổi nhưng behavior không đổi.

### White-Box Testing

Suy ra test từ implementation hoặc internal structure như code, architecture, workflows và data flows. White-box testing đo structural coverage.

> **Mẹo nhớ:** Level = test ở phạm vi nào. Type = test khía cạnh gì.

CTFL v4.0.1, section 2.2.2, PDF pages 29-30.

## 2.8 Confirmation and Regression Testing

- **Confirmation testing:** chứng minh original defect đã được sửa. Tester có thể chạy lại failed tests, thêm test cho change hoặc, khi bị giới hạn nặng, chỉ lặp reproducing steps.
- **Regression testing:** phát hiện adverse consequences do change gây ra trong changed area, component khác, connected systems hoặc environment.

Team thực hiện impact analysis để chọn regression scope. Regression suites tăng dần và được lặp lại, nên phù hợp với automation. Confirmation và regression có thể cần ở mọi test level chịu ảnh hưởng.

> **Mẹo nhớ:** Confirmation nhìn vào defect cũ. Regression nhìn ra xung quanh.

CTFL v4.0.1, section 2.2.3, PDF pages 30-31.

## 2.9 Maintenance Testing

Maintenance gồm corrective changes, adaptation trước environment changes và improvement cho performance hoặc maintainability. Release có thể được plan trước hoặc là emergency hot fix.

Scope phụ thuộc chủ yếu vào change risk, kích thước existing system và kích thước change. Maintenance-testing triggers gồm:

1. **Modification:** enhancement, corrective change hoặc hot fix.
2. **Upgrade hoặc migration:** platform change, environment change hoặc data conversion.
3. **Retirement:** archive data và test restore/retrieval procedures trong retention period.

Maintenance testing đánh giá changed behavior và regression risk trong unchanged areas. Team cũng có thể thực hiện impact analysis trước khi quyết định có làm change hay không.

CTFL v4.0.1, section 2.3, PDF pages 31-32.

## Chapter 2 Application Practice

### Q1 - Level or Type?

Team đo API response time giữa ShopEZ và payment provider trong production-like environment. Hãy xác định level và type phù hợp.

<details><summary>Đáp án</summary>

**System integration testing** vì trọng tâm là interface giữa ShopEZ và external service; **non-functional performance-efficiency testing** vì team đánh giá response time.

</details>

### Q2 - Test-First Classification

Trước khi coding, developer viết failing unit test cho <code>calculateTax()</code>, thêm code cho đến khi test pass rồi refactor. Đây là approach nào?

<details><summary>Đáp án</summary>

**TDD**. Nếu business, developer và tester cùng suy ra acceptance examples từ story criteria, đó là ATDD. Natural-language behavioral scenarios thường chỉ BDD.

</details>

### Q3 - Confirmation and Regression

Một fix thay đổi voucher calculation. Test nào là confirmation, test nào là regression?

<details><summary>Đáp án</summary>

Chạy lại đúng voucher test từng fail là confirmation. Kiểm tra voucher classes khác, totals, tax, refunds và invoices để tìm side effects là regression. Một test đôi khi phục vụ cả hai, nhưng objectives vẫn khác nhau.

</details>

### Q4 - Shift-Left Decision

Team dự định chỉ chạy system-level load test một tuần trước release. Nêu hai shift-left actions mà vẫn giữ later testing cần thiết.

<details><summary>Đáp án</summary>

Review performance requirements và architecture sớm; chạy component/API performance checks trong CI với stubs phù hợp. Vẫn giữ representative system-level testing vì integration, infrastructure và production-like load có thể làm lộ risk khác.

</details>

### Q5 - Maintenance Scope

ShopEZ migrate database nhưng application code không đổi. Team nên test gì?

<details><summary>Đáp án</summary>

Data conversion completeness và accuracy, compatibility với database/platform mới, critical business flows, rollback/restore và risk-based regression. “Không đổi application code” không có nghĩa là “không cần testing”.

</details>

### Chapter 2 Quick Check

Bạn đã sẵn sàng khi có thể phân loại scenario theo cả level lẫn type, giải thích lifecycle thay đổi approach thế nào, đồng thời phân biệt TDD/ATDD/BDD và confirmation/regression.

---

# Chapter 3 - Static Testing

## Learning Objectives

- **FL-3.1.1 (K1):** Nhận biết các work products có thể được kiểm tra bằng static testing.
- **FL-3.1.2 (K2):** Giải thích giá trị của static testing.
- **FL-3.1.3 (K2):** So sánh static testing với dynamic testing.
- **FL-3.2.1 (K1):** Xác định lợi ích của stakeholder feedback sớm và thường xuyên.
- **FL-3.2.2 (K2):** Tóm tắt các review-process activities.
- **FL-3.2.3 (K1):** Nhớ trách nhiệm của các principal review roles.
- **FL-3.2.4 (K2):** So sánh các review types.
- **FL-3.2.5 (K1):** Nhớ các review success factors.

## 3.1 Static Testing Basics

**Static testing** đánh giá work product mà không chạy phần mềm. Static testing gồm:

- **Review:** con người kiểm tra work product, thường theo process và review technique đã định.
- **Static analysis:** tool đánh giá structured work product như source code, model hoặc formally structured text.

Các objective gồm phát hiện defect, cải thiện quality, đánh giá readability, completeness, correctness, testability và consistency, đồng thời tăng confidence. Static testing hỗ trợ cả verification và validation.

### Work Products Examinable by Static Testing

Hầu hết readable work products đều có thể static test: requirements, user stories, acceptance criteria, source code, models, architecture, interface specifications, test plans, test cases, charters, contracts, product backlog items và project documentation.

Static analysis cần một structure mà tool có thể parse. Third-party executable không thể được xem xét vì technical hoặc legal restriction không phải static test object phù hợp.

**Teaching examples**

- Review tìm thấy câu “order trên $100 được free shipping”, câu này mơ hồ ở đúng $100.
- Linter tìm undeclared variable.
- Security analyzer tìm unsafe buffer operation.
- Tester review acceptance criteria và thấy error case không có expected behavior.

CTFL v4.0.1, section 3.1.1, PDF page 33.

## 3.2 Why Static Testing Is Valuable

Static testing:

- tìm defect sớm, trước khi defect lan sang work product khác;
- tìm defect mà dynamic testing có thể không làm lộ, như unreachable code hoặc omission trong non-executable requirement;
- tạo shared understanding và cải thiện stakeholder communication;
- có thể đánh giá maintainability và security;
- thường giảm tổng chi phí nhờ tránh rework muộn;
- có thể tìm một số code defects hiệu quả hơn execution.

Review có cả direct effect lẫn preventive effect. Direct effect là loại bỏ defect hiện tại. Preventive effect là giúp team học và tránh error tương tự.

CTFL v4.0.1, section 3.1.2, PDF pages 33-34.

## 3.3 Static Testing versus Dynamic Testing

| Aspect | Static testing | Dynamic testing |
|---|---|---|
| Có chạy phần mềm không? | Không | Có |
| Tìm thấy | Defect trực tiếp và anomaly cần phân tích | Failure; analysis/debugging tìm underlying defect |
| Test objects | Executable và non-executable work products | Executable test objects |
| Ví dụ mạnh | Ambiguity, omission, unreachable code, interface mismatch, standards deviation | Runtime behavior sai, timing, memory/resource behavior, performance |
| Có thể bắt đầu khi nào? | Khi có draft đủ để review | Khi có executable software và environment phù hợp |

Hai loại testing bổ sung cho nhau. Static testing có thể phát hiện missing requirement; dynamic testing không thể kiểm tra behavior chưa từng được specify hoặc implement. Dynamic testing đo response time dưới load; document review không thể tái tạo runtime performance.

Các defect thường được tìm rẻ hoặc dễ hơn bằng static testing gồm contradictory hoặc ambiguous requirements, poor modularization, undefined variables, duplicated/unreachable code, excessive complexity, coding-standard violations, parameter mismatches, một số security vulnerabilities và gaps trong test coverage.

> **Mẹo nhớ:** Static tìm defect trong work product. Dynamic quan sát failure khi phần mềm chạy.

CTFL v4.0.1, section 3.1.3, PDF pages 34-35.

## 3.4 Early and Frequent Feedback

Nếu thiếu stakeholder feedback thường xuyên, team có thể xây product nhất quán về nội bộ nhưng không còn phù hợp stakeholder needs. Feedback giúp:

- ngăn requirement misunderstanding;
- phản ứng sớm với change;
- tập trung vào valuable features và significant risks;
- tránh late rework;
- cải thiện shared understanding.

Feedback rộng hơn formal review meeting. Backlog refinement, example mapping, pair work, prototype evaluation, review comments và short demos đều có thể cung cấp feedback. Feedback cần đúng lúc, liên quan và dẫn tới action.

CTFL v4.0.1, section 3.2.1, PDF page 35.

## 3.5 Generic Review Process

Team điều chỉnh process theo tình huống; formal review dùng nhiều task và evidence hơn.

1. **Planning**
   - xác định purpose, scope, work product, quality characteristics, focus areas, standards, effort, schedule và measurable exit criteria;
   - chọn review type, participants và approach.
2. **Review initiation**
   - phân phối version ổn định, có thể truy cập, cùng supporting information;
   - bảo đảm participants hiểu objectives, roles, procedure và deadlines.
3. **Individual review**
   - từng reviewer kiểm tra work product và ghi anomalies, questions, recommendations; có thể dùng checklist hoặc scenario.
4. **Communication and analysis**
   - thảo luận anomalies; quyết định anomaly có phải defect không; gán status, owner và action; đánh giá work-product quality và follow-up.
5. **Fixing and reporting**
   - tạo defect record khi cần, sửa work product, verify exit criteria và báo cáo result.

**Anomaly** là điều được tìm thấy trong review và khác expectation. Team chỉ xác nhận anomaly là defect sau khi phân tích. Nếu mọi comment đều bị tính là defect, metrics sẽ nhiễu và cuộc thảo luận mất giá trị.

> **Mẹo nhớ:** Plan → Giao tài liệu → Tự review → Cùng phân tích → Sửa và báo cáo.

CTFL v4.0.1, section 3.2.2, PDF pages 35-36.

## 3.6 Review Roles

| Role | Core responsibility |
|---|---|
| Manager | Quyết định nội dung cần review và cung cấp resources |
| Author | Tạo work product và thực hiện corrections |
| Moderator/facilitator | Điều hành meeting, quản lý time và conflict, giữ safe review environment |
| Scribe/recorder | Tổng hợp anomalies, ghi decisions và new findings |
| Reviewer | Kiểm tra work product; có thể là project member, specialist hoặc stakeholder |
| Review leader | Chịu trách nhiệm tổng thể, chọn participants và tổ chức thời gian/địa điểm |

Một người có thể giữ nhiều role nếu review type không cấm. Trong inspection, author không được làm review leader hoặc scribe.

CTFL v4.0.1, section 3.2.3, PDF page 36.

## 3.7 Review Types

Formality nằm trên một continuum. Team chọn mức formality dựa trên objectives, risk, criticality, complexity, lifecycle, maturity, legal/audit needs, resources, work-product type và culture.

### Informal Review

Không có defined process hoặc required formal output. Objective chính là phát hiện anomalies. Desk check và pair review là ví dụ. Cách này nhanh, linh hoạt nhưng khó lặp và audit hơn.

### Walkthrough

Author dẫn dắt walkthrough. Mục đích có thể gồm đào tạo reviewers, giải thích cách sử dụng, đạt consensus, tạo ideas, xây confidence và tìm anomalies. Reviewer có thể chuẩn bị individual review nhưng không bắt buộc.

### Technical Review

Technically qualified reviewers thực hiện review và moderator dẫn dắt. Technical review tập trung vào technical consensus và decisions, đồng thời đánh giá quality và tìm anomalies.

### Inspection

Inspection là review type formal nhất. Nó đi theo complete process, nhắm tới tìm maximum number of anomalies, dùng defined roles và exit criteria, thu metrics và hỗ trợ process improvement. Author không được làm review leader hoặc scribe.

**Teaching example:** Low-risk internal script có thể chỉ cần informal peer check. Cross-team architecture choice có thể cần technical review. Safety-related requirement baseline có thể cần inspection và audit evidence.

> **Mẹo nhớ:** Informal = nhẹ. Walkthrough = author dẫn. Technical = expert quyết định. Inspection = formal nhất.

CTFL v4.0.1, section 3.2.4, PDF pages 36-37.

## 3.8 Success Factors

- objectives rõ và measurable exit criteria;
- không dùng evaluation of participants làm review objective;
- review type và participants phù hợp;
- review chunks đủ nhỏ để giữ concentration;
- feedback đúng lúc và mang tính xây dựng;
- đủ preparation time;
- management support;
- participants được training;
- learning culture thay cho blame;
- facilitation hiệu quả;
- actions được follow-up và metrics có ích.

Review efficiency giảm khi team gửi document 200 trang trước meeting năm phút, dùng review để chấm performance của author hoặc không gán owner cho findings.

CTFL v4.0.1, section 3.2.5, PDF page 37.

## Chapter 3 Application Practice

### Q1 - Static or Dynamic?

Phân loại: (a) tool báo unreachable code; (b) load tool ghi response time 4 giây; (c) reviewer tìm acceptance criteria mâu thuẫn.

<details><summary>Đáp án</summary>

(a) Static analysis; (b) dynamic non-functional testing; (c) review/static testing.

</details>

### Q2 - Order the Process

Team đã phân phối đúng document và role instructions. Bước tiếp theo là gì, reviewer cần tạo output gì?

<details><summary>Đáp án</summary>

**Individual review** là bước tiếp theo. Reviewer ghi anomalies, questions và recommendations. Sau đó team thực hiện communication/analysis để classify và assign.

</details>

### Q3 - Select the Review Type

Architect cần qualified peers để ra decision giữa hai security designs. Independent moderator sẽ dẫn dắt. Type nào phù hợp nhất?

<details><summary>Đáp án</summary>

**Technical review** vì technically qualified reviewers cần đạt consensus và decisions dưới sự dẫn dắt của moderator. Inspection có objective chính là maximum anomaly detection và có formality cao hơn.

</details>

### Q4 - Identify Role Conflict

Trong planned inspection, author cũng được giao làm scribe. Việc này có được phép không?

<details><summary>Đáp án</summary>

Không. Trong **inspection**, author không được làm review leader hoặc scribe. Hãy giao recorder khác.

</details>

### Q5 - Improve a Failed Review

Reviewers nhận 150 trang vào buổi sáng trước meeting kéo dài hai giờ, tìm được ít issues và tranh luận phòng thủ. Nêu ba correction có giá trị cao.

<details><summary>Đáp án</summary>

Chia work product thành chunks nhỏ; cung cấp đủ individual preparation time; đặt objectives và exit criteria rõ; dùng trained moderator để tạo môi trường không blame; training participants. Ba thay đổi có lý do đều được chấp nhận.

</details>

### Chapter 3 Quick Check

Bạn đã sẵn sàng khi có thể sắp xếp review activities, map principal roles, phân biệt bốn review types và giải thích vì sao static testing cùng dynamic testing bổ sung cho nhau.

---

# Chapter 4 - Test Analysis and Design

## Learning Objectives

- **FL-4.1.1 (K2):** Phân biệt black-box, white-box và experience-based test techniques.
- **FL-4.2.1-4.2.4 (K3):** Áp dụng equivalence partitioning, boundary value analysis, decision table testing và state transition testing.
- **FL-4.3.1-4.3.3 (K2):** Giải thích statement testing, branch testing và giá trị của white-box testing.
- **FL-4.4.1-4.4.3 (K2):** Giải thích error guessing, exploratory testing và checklist-based testing.
- **FL-4.5.1-4.5.2 (K2), FL-4.5.3 (K3):** Hiểu collaborative stories và acceptance criteria; dùng ATDD để derive test.

## 4.1 Technique Families

Test technique giúp trả lời **what to test** trong analysis và **how to test** trong design. Technique xác định test conditions, coverage items, test cases và data để chọn một tập test nhỏ nhưng đủ.

- **Black-box/specification-based:** suy ra test từ specified behavior mà không tham chiếu implementation. Behavioral test có thể vẫn dùng được sau internal rewrite.
- **White-box/structure-based:** suy ra test từ code hoặc internal structure khác. Tester cần có design hoặc implementation.
- **Experience-based:** dùng knowledge của tester về product, domain, developer mistakes và historical failures. Effectiveness phụ thuộc nhiều vào skill.

Các family bổ sung cho nhau. Black-box test có thể tìm behavior thiếu hoặc sai; white-box test tìm untested code paths; experience nhắm vào weakness bị formal models bỏ sót.

CTFL v4.0.1, section 4.1, PDF page 39.

## 4.2 Equivalence Partitioning (EP)

EP chia data domain thành các **equivalence partitions** không rỗng và không chồng lấn. Test object được kỳ vọng xử lý mọi value trong cùng partition theo cùng cách. Một representative value thường đủ cho mỗi partition.

Partition có thể mô tả inputs, outputs, configurations, internal values, time hoặc interface parameters; chúng có thể continuous/discrete, ordered/unordered, finite/infinite.

**Valid partition** chứa values mà system cần xử lý như valid. **Invalid partition** chứa values cần bị reject, ignore hoặc xử lý theo invalid rule. Team phải thống nhất ý nghĩa này.

### Procedure

1. Xác định data element và toàn bộ relevant domain.
2. Đọc mọi rule làm thay đổi processing.
3. Chia domain tại mỗi điểm expected behavior thay đổi.
4. Kiểm tra partitions không rỗng, mutually exclusive và cover intended domain.
5. Chọn ít nhất một representative từ mọi valid và invalid partition.
6. Tính coverage:

<code>EP coverage = exercised partitions / identified partitions × 100%</code>

### Worked Example

Rule: “Customer từ 18 đến 65 tuổi, gồm cả hai đầu, có thể register.” Giả sử age là integer và input chấp nhận mọi integer.

| Partition | Range | Expected behavior | Representative |
|---|---:|---|---:|
| P1 | age &lt; 18 | Reject vì chưa đủ tuổi | 12 |
| P2 | 18 ≤ age ≤ 65 | Accept | 40 |
| P3 | age &gt; 65 | Reject cho product này | 70 |

Test 12 và 40 cover 2 trong 3 partitions: **66,7% EP coverage**. Cần test 70 để đạt 100%.

### Multiple Inputs and Each Choice Coverage

Giả sử payment method có partitions card, wallet, bank transfer; customer type có partitions guest và registered. **Each Choice** yêu cầu mỗi partition trong từng set xuất hiện ít nhất một lần. Ba test sau đạt tiêu chí:

1. card + guest;
2. wallet + registered;
3. bank transfer + guest.

Ba test này không cover toàn bộ 3 × 2 = 6 combinations. Đừng gọi Each Choice là combination coverage.

### Common EP Mistakes

- chỉ test valid partitions;
- tạo overlapping ranges như <code>0-10</code> và <code>10-20</code>;
- để gap;
- giả định mọi value trong partition được xử lý giống nhau dù rule khác chia partition đó;
- chọn nhiều random values trong một partition nhưng bỏ partition khác.

> **Mẹo nhớ:** EP hỏi “Có những nhóm behavior nào?”, không hỏi “Boundary nằm ở đâu?”.

CTFL v4.0.1, section 4.2.1, PDF pages 39-40.

## 4.3 Boundary Value Analysis (BVA)

BVA kiểm tra boundaries của **ordered partitions** vì off-by-one và relational operator sai thường xuất hiện tại đó. Minimum và maximum của partition là boundary values.

### 2-Value BVA

Với mỗi boundary, test boundary và closest neighbor thuộc adjacent partition. Với age rule 18-65 inclusive, unique coverage items là:

<code>17, 18, 65, 66</code>

Coverage:

<code>2-value BVA coverage = exercised identified boundary values / total identified boundary values × 100%</code>

Tên “2-value” chỉ hai coverage items tại mỗi boundary, không phải hai values cho toàn input.

### 3-Value BVA

Với mỗi boundary, test boundary và hai neighbors. Unique values là:

<code>17, 18, 19, 64, 65, 66</code>

3-value BVA mạnh hơn vì kiểm tra hai phía và value ngay bên trong partition. Nếu <code>x ≤ 10</code> bị code sai thành <code>x = 10</code>, tests 10 và 11 từ 2-value BVA không làm lộ defect; 3-value BVA thêm 9 và có thể phát hiện.

### Worked Coverage Example

Với valid quantity 1-100 inclusive, 3-value BVA items là <code>0, 1, 2, 99, 100, 101</code>. Nếu tests exercise <code>0, 1, 2, 100</code>, coverage là <code>4/6 = 66,7%</code>.

### Common BVA Mistakes

- dùng BVA cho unordered categories như colors;
- quên inclusive/exclusive wording thay đổi boundary;
- đếm test cases thay vì unique coverage items;
- chỉ dùng “min và max” nhưng bỏ adjacent-partition neighbors mà BVA variant yêu cầu.

> **Mẹo nhớ:** EP chọn một đại diện trong mỗi nhóm. BVA đứng sát hai bên ranh giới.

CTFL v4.0.1, section 4.2.2, PDF pages 40-41.

## 4.4 Decision Table Testing

Decision table mô hình hóa các rule trong đó combination của conditions tạo actions. Conditions và actions nằm trên rows; mỗi column là một **decision rule**.

Limited-entry notation thường dùng:

- condition <code>T</code> hoặc <code>F</code>;
- <code>-</code> cho irrelevant;
- <code>N/A</code> cho infeasible;
- action <code>X</code> nghĩa là action xảy ra, blank nghĩa là không xảy ra.

Full table với <em>n</em> independent Boolean conditions có tối đa <code>2^n</code> rules. Xóa infeasible combinations. Có thể merge columns có cùng actions nếu các conditions khác nhau không ảnh hưởng outcome.

### Procedure

1. Liệt kê conditions với yes/no meaning chính xác.
2. Liệt kê actions hoặc outcomes có thể xảy ra.
3. Liệt kê condition combinations.
4. Đánh dấu infeasible combinations và xác định actions.
5. Cùng stakeholder kiểm tra gaps và contradictions.
6. Tạo ít nhất một test cho mỗi feasible rule.

<code>Decision-table coverage = exercised feasible columns / total feasible columns × 100%</code>

### Worked Example: Voucher

Rules:

- Valid voucher giảm 10%.
- Premium customer có valid voucher còn được free shipping.
- Invalid voucher tạo error và không discount.

| Conditions/actions | R1 | R2 | R3 |
|---|:---:|:---:|:---:|
| Voucher valid? | T | T | F |
| Premium customer? | T | F | - |
| Apply 10% discount | X | X |  |
| Free shipping | X |  |  |
| Show voucher error |  |  | X |

Premium condition không liên quan khi voucher invalid, nên hai invalid-voucher columns có thể merge. Ba tests đạt 100% feasible-rule coverage.

### Strengths and Limits

Decision tables giúp tìm systematic combinations bị bỏ sót, missing rules và contradictions. Combinatorial growth là giới hạn chính; minimize table khi logic cho phép hoặc prioritize bằng risk.

> **Mẹo nhớ:** Decision table phù hợp với câu hỏi “Nếu nhiều điều kiện kết hợp thì system làm gì?”.

CTFL v4.0.1, section 4.2.3, PDF page 41.

## 4.5 State Transition Testing

State model mô tả các **states** và **transitions** có thể có. Event kích hoạt transition; guard có thể giới hạn transition và action có thể xảy ra:

<code>event [guard] / action</code>

State table đặt states trên rows và events trên columns. Cell cho biết target state/action; empty cell cho biết invalid transition. Một test thường là event sequence và có thể cover nhiều transitions.

### Example: Account Lock

Simplified states: <code>Active-0Failures</code>, <code>Active-1Failure</code>, <code>Active-2Failures</code>, <code>Locked</code>.

- failed login làm failure count tăng;
- successful login từ active state đưa system về <code>Active-0Failures</code>;
- failure thứ ba liên tiếp chuyển sang <code>Locked</code>;
- admin reset chuyển <code>Locked</code> về <code>Active-0Failures</code>.

Sequence <code>fail, fail, success, fail, fail, fail</code> kiểm tra reset-after-success rồi kiểm tra locking. State ảnh hưởng result: cùng một event <code>fail</code> có thể tạo result khác tùy sequence trước đó.

### Coverage Criteria

1. **All states coverage:** mọi state được visit.
2. **Valid transitions coverage (0-switch):** mọi valid single transition được execute.
3. **All transitions coverage:** mọi valid transition được execute và mọi invalid transition được attempt.

<code>coverage = exercised coverage items / total coverage items × 100%</code>

Strength relation:

<code>all transitions ⇒ valid transitions ⇒ all states</code>

Quan hệ ngược không đúng. Một state có thể được reach qua một transition trong khi transition khác đi vào nó chưa được test. Khi test invalid transition, nên dùng một invalid transition trong mỗi test để giảm defect masking.

> **Mẹo nhớ:** State transition testing quan tâm đến sequence. Current state quyết định event sẽ tạo result nào.

CTFL v4.0.1, section 4.2.4, PDF page 42.

## 4.6 White-Box Testing

### Statement Testing and Coverage

Coverage items là executable statements.

<code>statement coverage = executed statements / total executable statements × 100%</code>

Ở 100%, mọi executable statement đã chạy ít nhất một lần. Mức này không chứng minh từng statement đúng và có thể bỏ data-dependent defects hoặc decision outcomes.

### Branch Testing and Coverage

Branch là transfer of control trong control-flow graph, có thể conditional hoặc unconditional. Conditional branches gồm true/false outcomes của <code>if</code>, switch/case outcomes và loop continuation/exit.

<code>branch coverage = executed branches / total branches × 100%</code>

100% branch coverage subsumes 100% statement coverage; 100% statement coverage không nhất thiết đạt 100% branch coverage.

### Worked Example

~~~text
discount = 0
if customer_is_premium:
    discount = 10
final_price = price - discount
~~~

Một test với <code>customer_is_premium = true</code> execute mọi statement, nên đạt 100% statement coverage. Test chỉ exercise true outcome và bỏ false outcome, nên chưa đạt 100% branch coverage. Cần thêm false test.

### Value and Limitation

White-box testing đo implementation coverage bằng objective metric và có thể tìm defect khi specifications chưa đầy đủ. Nó khó tìm requirement bị bỏ khỏi cả specification lẫn implementation. Coverage là bằng chứng code đã được execute, không phải bằng chứng correctness.

> **Mẹo nhớ:** Statement hỏi “Dòng lệnh đã chạy chưa?”. Branch hỏi “Mỗi hướng rẽ đã đi chưa?”.

CTFL v4.0.1, section 4.3, PDF page 43.

## 4.7 Experience-Based Techniques

### Error Guessing

Tester dự đoán error, defect và failure có thể xảy ra bằng knowledge về application behavior trước đây, developer tendencies, similar systems và defect data. Targets thường liên quan inputs, outputs, logic, calculation, interfaces và data.

**Fault attack** dùng danh sách plausible faults như empty values, duplicated submission, expired tokens, interrupted network, rounding, time zones và concurrent update rồi thiết kế test để làm lộ chúng. Team nên cập nhật danh sách từ findings thực tế.

### Exploratory Testing

Tester học, design, execute và evaluate cùng lúc. Session-based structure dùng:

- time box;
- **test charter** nêu mission và focus;
- notes hoặc session sheet ghi coverage, steps, observations, risks và defects;
- debrief với interested stakeholders.

Teaching example charter: “Explore voucher application cho rounding, expiry, stacking và interrupted payment bằng boundary cùng error-guessing ideas trong 60 phút.”

Exploratory testing hữu ích khi specifications yếu, time ngắn hoặc formal techniques cần investigation bổ sung. Exploratory testing không phải random clicking.

### Checklist-Based Testing

Tester design và execute test từ các conditions có thể kiểm tra độc lập trong checklist. Item tốt là specific question dựa trên user importance và failure knowledge. Tránh item phù hợp hơn với automation, entry/exit criteria và câu mơ hồ như “check everything”.

Cập nhật checklist khi defect patterns đổi nhưng kiểm soát length. High-level checklist tạo flexibility và exploration rộng nhưng repeatability thấp. Detailed checklist tạo consistency nhưng có thể hạn chế discovery.

> **Mẹo nhớ:** Error guessing dùng kinh nghiệm để đoán lỗi. Exploratory testing vừa học vừa test. Checklist-based testing dùng danh sách nhắc việc.

CTFL v4.0.1, section 4.4, PDF pages 43-44.

## 4.8 Collaboration-Based Approaches

Các approach này dùng collaboration và communication để hỗ trợ **defect avoidance**.

### User Stories and the 3 Cs

Story form thường dùng:

> As a **role**, I want **goal**, so that **business value**.

3 Cs:

- **Card:** nơi ghi story ngắn gọn;
- **Conversation:** thảo luận để tạo shared understanding;
- **Confirmation:** acceptance criteria.

Good story thỏa **INVEST**: Independent, Negotiable, Valuable, Estimable, Small, Testable. Nếu stakeholder không biết cách accept story, story có thể chưa rõ, chưa thể hiện value hoặc stakeholder cần hỗ trợ về testing.

### Acceptance Criteria

Acceptance criteria là conditions mà implementation phải thỏa để được stakeholders accept. Chúng định nghĩa scope, tạo consensus, gồm positive và negative scenarios, hỗ trợ estimation và làm basis cho acceptance tests.

Hai formats phổ biến:

- **Scenario-oriented:** Given/When/Then.
- **Rule-oriented:** bullet list hoặc input-output table.

### ATDD Procedure

1. Tổ chức specification workshop với business, development và testing perspectives.
2. Giải quyết ambiguity, incompleteness và defect trong story hoặc criteria.
3. Derive tests dễ hiểu **trước** implementation.
4. Bắt đầu bằng positive flows, thêm negative tests, rồi thêm relevant non-functional cases.
5. Áp dụng techniques phù hợp: EP, BVA, decision tables, state models hoặc experience.
6. Giữ tests trong story scope và tránh duplicates.
7. Automate khi có value để tests trở thành executable requirements.

### Worked ATDD Example

Story: “As a shopper, I want free standard shipping for qualifying orders so that checkout cost is predictable.”

Clarified criteria:

- subtotal dưới $100 → standard shipping $8;
- subtotal ít nhất $100 → free standard shipping;
- subtotal được tính sau item discounts và trước tax;
- expedited shipping không miễn phí trong story này.

Derived tests:

| Test | Preconditions/input | Expected result | Technique |
|---|---|---|---|
| 1 | Standard, subtotal $99.99 | Shipping $8 | BVA |
| 2 | Standard, subtotal $100.00 | Shipping $0 | BVA |
| 3 | Standard, subtotal $100.01 | Shipping $0 | 3-value BVA |
| 4 | Expedited, subtotal $150 | Expedited fee được tính | Decision rule/negative |
| 5 | Item discount làm subtotal giảm từ $105 xuống $95 | Shipping $8 | Rule interaction |

Workshop chuyển từ “qualifying” mơ hồ thành testable rules trước khi có code.

> **Mẹo nhớ:** ATDD biến acceptance criteria thành tests trước khi code.

CTFL v4.0.1, section 4.5, PDF pages 45-46.

## Chapter 4 K3 Practice

### Q1 - EP Derivation

Password length phải từ 8 đến 20 characters inclusive. Giả sử length là non-negative integer. Xác định partitions và minimum EP set.

<details><summary>Đáp án</summary>

Invalid <code>0-7</code>, valid <code>8-20</code>, invalid <code>21+</code>. Representatives như <code>5, 12, 25</code> đạt 100% EP coverage. Nếu input technology cho phép null/non-string values và specification xử lý chúng khác, chúng tạo partitions bổ sung; đừng tự thêm nếu không nằm trong scope.

</details>

### Q2 - 2-Value and 3-Value BVA

Với cùng rule 8-20, derive unique values.

<details><summary>Đáp án</summary>

2-value BVA: <code>7, 8, 20, 21</code>.  
3-value BVA: <code>7, 8, 9, 19, 20, 21</code>.

</details>

### Q3 - BVA Coverage

Với valid quantity 1-100, một 3-value suite chạy <code>0, 1, 2, 99, 100</code> nhưng không chạy <code>101</code>. Coverage bằng bao nhiêu?

<details><summary>Đáp án</summary>

Sáu items là <code>0,1,2,99,100,101</code>; năm items đã được exercise. Coverage là <code>5/6 = 83,3%</code>.

</details>

### Q4 - Decision Table

Refund được auto-approved nếu purchase trong 30 ngày **và** item chưa mở. Trường hợp khác cần manual review. Tạo full limited-entry table và minimum tests.

<details><summary>Đáp án</summary>

| Conditions/actions | R1 | R2 | R3 | R4 |
|---|:---:|:---:|:---:|:---:|
| Within 30 days? | T | T | F | F |
| Unopened? | T | F | T | F |
| Auto-approve | X |  |  |  |
| Manual review |  | X | X | X |

Một test cho mỗi column đạt 100% rule coverage. Ba manual-review columns chỉ có thể được minimize khi business rule cho phép biểu diễn condition không ảnh hưởng outcome.

</details>

### Q5 - State Coverage

Turnstile có <code>Locked</code> và <code>Unlocked</code>. <code>coin</code> chuyển Locked→Unlocked; <code>push</code> chuyển Unlocked→Locked. <code>push</code> trong Locked và <code>coin</code> trong Unlocked là invalid. Sequence <code>coin, push</code> từ Locked cover gì?

<details><summary>Đáp án</summary>

Sequence cover cả hai states và cả hai valid transitions: 100% all-states và 100% valid-transitions coverage. State table có tổng cộng bốn transitions, gồm hai valid và hai invalid. Sequence cover 2/4, nên đạt **50% all-transitions coverage**. Thêm test riêng cho <code>push</code> khi Locked và <code>coin</code> khi Unlocked.

</details>

### Q6 - Statement versus Branch

Với premium-discount code ở trên, một true test đạt coverage gì?

<details><summary>Đáp án</summary>

100% statement coverage nhưng chưa đạt 100% branch coverage. Thêm false test để cover đủ decision outcomes. Branch coverage subsumes statement coverage.

</details>

### Q7 - Choose a Technique

Requirements có combinations của membership, order value và voucher validity tạo discounts khác nhau. Technique nào nên dẫn đầu, technique nào bổ sung?

<details><summary>Đáp án</summary>

Dùng **decision table testing** làm technique chính vì condition combinations quyết định actions. Dùng EP/BVA cho order-value ranges và exploratory/error guessing cho interactions chưa lường trước.

</details>

### Q8 - ATDD Derivation

Story: “As a registered customer, I can retry sign-in, but my account locks after three consecutive failures.” Viết các acceptance tests thiết yếu.

<details><summary>Đáp án</summary>

Tối thiểu gồm: successful sign-in từ zero failures; một và hai failures vẫn active; failure thứ ba liên tiếp gây lock; success sau một hoặc hai failures reset count; sign-in khi locked bị reject; authorized reset mở lock. Đây là state-transition sequences, không phải isolated input tests. Thêm expected messages/security behavior nếu acceptance criteria có định nghĩa.

</details>

### Q9 - Test-Design Diagnosis

Tester chọn 15, 16 và 17 cho valid range 1-100 rồi nói coverage mạnh vì dùng ba values. Sai ở đâu?

<details><summary>Đáp án</summary>

Cả ba values nằm trong cùng một valid equivalence partition và không value nào nhắm boundary. Nhiều test cases không đồng nghĩa nhiều coverage. Dùng representatives từ mọi partitions và boundary-focused values theo coverage criterion đã chọn.

</details>

### Q10 - Exploratory Charter

Viết focused charter cho payment session 45 phút.

<details><summary>Đáp án</summary>

Ví dụ: “Explore card payment recovery cho duplicate submission, network interruption, timeout và browser refresh bằng state modeling cùng error guessing trong 45 phút; ghi nhận system có tạo tối đa một charge/order hay không.” Charter nêu scope, risks, techniques, time box và observable mission.

</details>

## Chapter 4 Quick Check

Bạn đã sẵn sàng khi có thể tự suy ra tests bằng EP, 2-value/3-value BVA, decision-table, state-transition và ATDD; đồng thời tính coverage percentage từ đúng coverage items.

---

# Chapter 5 - Managing the Test Activities

## Learning Objectives

- **FL-5.1.1 (K2):** Nêu ví dụ về mục đích và nội dung của test plan.
- **FL-5.1.2 (K1):** Nhận biết tester tạo thêm giá trị cho iteration planning và release planning như thế nào.
- **FL-5.1.3 (K2):** So sánh entry criteria với exit criteria.
- **FL-5.1.4 (K3):** Dùng estimation techniques để tính test effort cần thiết.
- **FL-5.1.5 (K3):** Áp dụng test case prioritization.
- **FL-5.1.6 (K1):** Nhớ các khái niệm của test pyramid.
- **FL-5.1.7 (K2):** Tóm tắt testing quadrants và mối quan hệ của chúng với test levels và test types.
- **FL-5.2.1-5.2.4:** Hiểu risk level, risk types, product risk analysis và risk control.
- **FL-5.3.1-5.3.3:** Hiểu metrics, test reports và test-status communication.
- **FL-5.4.1 (K2):** Tóm tắt configuration management hỗ trợ testing như thế nào.
- **FL-5.5.1 (K3):** Chuẩn bị một defect report.

## 5.1 Test Planning

**Test plan** mô tả test objectives, resources, processes, means và schedule để đạt objectives. Test plan giúp stakeholders thống nhất, chứng minh testing tuân theo test policy và test strategy hoặc giải thích deviations, đồng thời buộc team xem xét risks, people, effort, environment, data, tools, cost và schedule.

Typical contents:

- testing context: scope, objectives và test basis;
- assumptions và constraints;
- stakeholders, roles, responsibilities, hiring/training needs;
- communication methods, frequency và templates;
- risk register;
- test approach: levels, types, techniques, deliverables, entry/exit criteria, independence, metrics, data và environment requirements;
- deviations khỏi policy/strategy;
- budget và schedule.

Một test plan dài chưa chắc có giá trị. Plan có giá trị khi giúp stakeholders cùng ra quyết định và có thể thích ứng với thay đổi của bối cảnh.

CTFL v4.0.1, section 5.1.1, PDF page 48.

### Tester Contribution to Release and Iteration Planning

**Release planning** nhìn toàn bộ release. Tester hỗ trợ refine large stories, viết testable stories và criteria, phân tích project/product risks, estimate story-level testing, chọn approach và plan testing qua các iterations.

**Iteration planning** tập trung vào một iteration. Tester đánh giá story testability và detailed risk, xác định functional/non-functional concerns, chia story thành testing tasks và estimate từng task.

CTFL v4.0.1, section 5.1.2, PDF pages 48-49.

## 5.2 Entry and Exit Criteria

- **Entry criteria:** preconditions để bắt đầu activity. Ví dụ: trained people, approved/testable basis, environment và data sẵn sàng, budget/time được cấp, smoke test pass.
- **Exit criteria:** measurable conditions để tuyên bố activity hoàn tất. Ví dụ: target coverage đạt, planned tests đã execute, số open defects nằm trong giới hạn, residual risk chấp nhận được, test report hoàn tất.

Nếu entry criteria chưa đạt, team vẫn có thể bắt đầu nhưng công việc sẽ khó, tốn thời gian, tốn chi phí và nhiều risk hơn. Hết time hoặc budget có thể được xem là valid exit criterion nếu stakeholders review và accept risk còn lại.

Trong Agile context, story-level entry criteria thường gọi là **Definition of Ready**, còn exit criteria cho releasable item gọi là **Definition of Done**.

> **Mẹo nhớ:** Entry = đủ điều kiện để vào. Exit = đủ điều kiện để ra.

CTFL v4.0.1, section 5.1.3, PDF page 49.

## 5.3 Estimating Test Effort

Estimate dự đoán lượng test-related work cần để đạt objectives. Estimate dựa trên assumptions và luôn có estimation error. Hãy chia large task thành tasks nhỏ vì estimate cho task nhỏ thường chính xác hơn.

### Ratio-Based Estimation

Dùng historical ratio của organization. Nếu development:test effort là <code>3:2</code> và development được estimate 600 person-days:

<code>test effort = 600 × 2/3 = 400 person-days</code>

Dùng internal data từ project tương đồng khi có thể. Ratio từ product rất khác có thể gây sai lệch.

### Extrapolation

Đo actual performance sớm trong current project rồi dự đoán phần còn lại bằng model. Ví dụ, estimate iteration tiếp theo bằng average của ba iterations trước.

Technique này thích ứng với current team và phù hợp iterative delivery, nhưng assumption rằng past observations còn liên quan phải được kiểm tra.

### Wideband Delphi

Experts estimate độc lập. Team thu estimates, thảo luận difference lớn để làm rõ assumptions, rồi từng expert estimate độc lập lần nữa. Lặp đến khi đạt consensus.

**Planning Poker** là Agile variant dùng cards biểu diễn effort size. Independent estimation trước discussion giúp giảm anchoring và domination.

### Three-Point Estimation

Experts cung cấp:

- <code>a</code> = optimistic;
- <code>m</code> = most likely;
- <code>b</code> = pessimistic.

Weighted estimate:

<code>E = (a + 4m + b) / 6</code>

Measurement error estimate:

<code>SD = (b - a) / 6</code>

Báo cáo <code>E ± SD</code> thay vì false precision.

**Worked example:** <code>a=6</code>, <code>m=9</code>, <code>b=18</code>.

- <code>E = (6 + 4×9 + 18)/6 = 60/6 = 10</code> giờ.
- <code>SD = (18-6)/6 = 2</code> giờ.
- Báo cáo **10 ± 2 person-hours**, xấp xỉ 8-12.

> **Mẹo nhớ:** Ratio nhìn project cũ. Extrapolation nhìn dữ liệu project hiện tại. Delphi hỏi nhiều experts. Three-point dùng a, m, b.

CTFL v4.0.1, section 5.1.4, PDF pages 49-50.

## 5.4 Test Case Prioritization

Test execution schedule cần phản ánh value, risk, coverage, dependencies và resources.

### Strategies

- **Risk-based:** chạy tests cho highest product risks trước.
- **Coverage-based:** chạy tests có greatest total coverage trước.
- **Additional-coverage:** chọn test có greatest coverage trước, sau đó luôn chọn test bổ sung nhiều uncovered items nhất.
- **Requirements-based:** chạy tests cho highest-priority requirements trước.

Dependencies có thể override nominal priority. Low-priority setup test có thể phải chạy trước high-priority business test. Tool, environment, data và specialist availability cũng giới hạn thứ tự.

### Worked Example: Additional Coverage

| Test | Covered requirements |
|---|---|
| T1 | A, B, C |
| T2 | B, C, D |
| T3 | D, E |
| T4 | A, E, F |

Ban đầu T1, T2 và T4 đều cover ba items; giả sử chọn T1. Additional coverage còn lại: T2→D (1), T3→D,E (2), T4→E,F (2). Chọn T3 hoặc T4.

Nếu chọn T4, covered items là A,B,C,E,F; T2 và T3 đều chỉ thêm D. Một order hợp lý là **T1, T4, T2, T3**, tùy tie-break và dependencies.

CTFL v4.0.1, section 5.1.5, PDF page 50.

## 5.5 Test Pyramid

Test pyramid mô tả tests có granularity, isolation và execution time khác nhau. Model thường phân bổ nhiều automated tests ở lower layers và ít tests hơn ở higher layers.

- Bottom: nhiều small component/unit tests, chạy nhanh, isolated và fine-grained.
- Middle: ít service/component-integration tests hơn.
- Top: ít complex end-to-end/UI tests, chạy chậm, phạm vi rộng và phụ thuộc nhiều system parts.

Tên và số layers có thể khác. Principle liên quan feedback speed, isolation, maintenance cost và objective phù hợp; model không quy định rigid percentage.

Inverted pyramid bị UI/end-to-end tests chi phối thường tạo feedback chậm và đắt.

> **Mẹo nhớ:** Càng lên cao, test càng rộng, chậm và ít isolated.

CTFL v4.0.1, section 5.1.6, PDF pages 50-51.

## 5.6 Testing Quadrants

Testing quadrants kết hợp hai dimensions: **business-facing với technology-facing**, và **support the team với critique the product**.

| Quadrant | Orientation | Typical contents |
|---|---|---|
| Q1 | Technology-facing; supports team | Component và component-integration tests; nên automate trong CI |
| Q2 | Business-facing; supports team | Functional examples, story tests, prototypes, API tests, simulations; manual hoặc automated |
| Q3 | Business-facing; critiques product | Exploratory, usability và user acceptance tests; thường manual |
| Q4 | Technology-facing; critiques product | Smoke và non-functional tests trừ usability; thường automated |

Quadrants là communication và coverage model, không phải sequence của phases. Model giúp team thấy test levels và test types nào đang được dùng, đồng thời chỉ ra gaps trong SDLC.

CTFL v4.0.1, section 5.1.7, PDF page 51.

## 5.7 Risk Management

**Risk** là potential event hoặc situation mà nếu xảy ra sẽ tạo adverse effect.

- **Risk likelihood:** probability risk xảy ra.
- **Risk impact:** mức thiệt hại nếu risk xảy ra.
- **Risk level:** measure kết hợp likelihood và impact. Quantitative approach có thể dùng <code>likelihood × impact</code>; qualitative approach có thể dùng risk matrix.

Risk level cao cần treatment mạnh hơn.

### Project Risks versus Product Risks

- **Project risks** đe dọa project objectives như schedule, budget hoặc scope. Ví dụ: environment chậm, skill shortage, inaccurate estimate, conflict, poor tool support, supplier failure, scope creep.
- **Product risks** đe dọa product quality và users. Ví dụ: calculation sai, security vulnerability, slow response, missing function, poor usability, runtime failure, unsafe behavior.

Một event có thể tạo cả hai. Security specialist đến trễ là project risk; authorization weakness không bị phát hiện là product risk.

> **Mẹo nhớ:** Project risk làm dự án khó hoàn thành. Product risk làm sản phẩm gây vấn đề.

### Product Risk Analysis

Risk analysis gồm:

1. **Risk identification:** tạo broad risk list bằng workshops, brainstorming, interviews, cause-effect diagrams, historical defects và domain knowledge.
2. **Risk assessment:** categorize; estimate likelihood, impact và level; prioritize; đề xuất handling.

Kết quả ảnh hưởng test scope, levels, types, techniques, coverage, effort, order, skills, independence và non-test risk-reduction activities.

### Product Risk Control

Risk control gồm:

- **Risk mitigation:** actions giảm likelihood và/hoặc impact.
- **Risk monitoring:** kiểm tra mitigation effectiveness, cập nhật assessment và tìm emerging risks.

Response options gồm mitigate bằng testing, accept, transfer hoặc chuẩn bị contingency. Testing-based mitigation có thể dùng skilled specialists, suitable independence, reviews/static analysis, stronger techniques và coverage, relevant test types cùng regression testing.

Testing giảm uncertainty và residual risk; nó không làm risk biến mất.

### Worked Risk Example

Dùng qualitative scores 1-5 cho likelihood và impact.

| Risk | L | I | Score L×I | Response |
|---|---:|---:|---:|---|
| Duplicate charge on retry | 3 | 5 | 15 | High: state, concurrency, interruption tests; payment specialist |
| Minor icon misalignment | 4 | 1 | 4 | Low: basic visual check hoặc accept |
| Voucher rounding error | 3 | 3 | 9 | Medium: BVA và currency-data tests |

Scores hỗ trợ prioritization nhưng không thay thế judgment. Rare catastrophic safety risk có thể cần treatment dù numerical product ở mức trung bình.

CTFL v4.0.1, section 5.2, PDF pages 51-53.

## 5.8 Monitoring, Control and Completion

- **Test monitoring:** thu thập information, đánh giá progress và đo exit-criterion status.
- **Test control:** đưa corrective guidance dựa trên monitoring. Ví dụ: reprioritize khi risk thành issue, reassess entry/exit criteria sau rework, điều chỉnh schedule chậm hoặc thêm resources.
- **Test completion:** tổng hợp data, experience và testware hữu ích tại milestone như test level completion, iteration end, release, cancellation hoặc maintenance completion.

### Common Metrics

- Project progress: task completion, effort, resource use.
- Test progress: cases implemented/run/not run/passed/failed, environment readiness, execution time.
- Product quality: availability, response time, mean time to failure.
- Defects: counts theo status/priority, density, defect detection percentage.
- Risk: residual risk level.
- Coverage: requirements, risks, statements, branches hoặc coverage khác.
- Cost: test cost và organizational cost of quality.

Metrics cần context. “95% passed” không đủ nếu bạn không biết unrun tests, risk distribution, environment và severity của failures.

CTFL v4.0.1, sections 5.3 và 5.3.1, PDF pages 53-54.

## 5.9 Test Reports and Communication

### Test Progress Report

Team tạo report định kỳ để hỗ trợ ongoing control. Typical content:

- reporting period;
- progress và deviations khỏi plan;
- impediments và workarounds;
- metrics;
- new hoặc changed risks;
- plan cho period tiếp theo.

### Test Completion Report

Team tạo report khi project, test level, cycle, iteration hoặc type hoàn tất. Typical content:

- summary;
- quality evaluation theo objectives và exit criteria;
- deviations khỏi plan;
- impediments/workarounds;
- final metrics;
- unresolved defects và unmitigated risks;
- lessons learned.

Communication có thể là verbal, dashboard, email/chat, online documentation hoặc formal report. Hãy điều chỉnh frequency, detail, language và formality theo audience.

Executive cần risk, trend và decision information; developer cần actionable technical detail; auditor cần evidence và traceability.

> **Mẹo nhớ:** Progress report giúp điều khiển công việc đang chạy. Completion report tổng kết phần đã xong.

CTFL v4.0.1, sections 5.3.2-5.3.3, PDF pages 54-56.

## 5.10 Configuration Management (CM)

CM identify, control, version và track test plans, strategies, conditions, cases, scripts, data, environments, results, logs, reports và test items. CM ghi relationships và hỗ trợ traceability.

Approved configuration trở thành **baseline** và chỉ thay đổi qua formal change control. CM giúp team:

- xác định chính xác tested build, environment, data và script versions;
- reproduce results;
- rollback về prior baseline;
- tham chiếu rõ ràng trong reports.

CI/CD pipeline thường automate phần lớn công việc này.

**Teaching example:** “Checkout fail ở staging hôm qua” rất khó reproduce nếu không biết build, API mock, database, feature flags, test data và script revision.

CTFL v4.0.1, section 5.4, PDF page 56.

## 5.11 Defect Management

Defect process xử lý defect hoặc anomaly từ discovery đến closure: log, analyze/classify, chọn response, sửa hoặc chủ động giữ nguyên, confirmation và close.

Reported anomaly có thể được classify là defect, duplicate, environment issue, change request hoặc false-positive result.

### Objectives of a Defect Report

- cung cấp đủ information cho người xử lý hiểu và reproduce issue;
- track work-product quality;
- cung cấp data cho process improvement.

### Strong Defect-Report Contents

1. unique ID;
2. title ngắn và specific;
3. observation date, issuing organization, author/role;
4. exact test object/build và environment;
5. context: test case, activity, lifecycle phase, technique, data;
6. reproducible steps và supporting logs/screenshots/dumps/recording;
7. expected result;
8. actual result;
9. severity: stakeholder impact;
10. priority: urgency hoặc fix order;
11. status;
12. references và trace links.

### Example Defect Report

**Title:** Checkout creates two charges when Pay is retried after a timeout  
**Build/environment:** ShopEZ 4.8.2, staging, Chrome 128, payment sandbox v6  
**Precondition:** Registered user; cart contains product P100; valid card token  
**Steps:** (1) Open checkout. (2) Click Pay. (3) Simulate gateway timeout after authorization. (4) Click Retry once.  
**Expected:** One order and at most one captured charge; user receives recoverable status.  
**Actual:** Two captured charges with different transaction IDs; one order.  
**Evidence:** gateway log timestamps, two transaction IDs, screen recording  
**Severity:** Critical/high do financial và trust impact  
**Priority:** Immediate cho release decision  
**References:** payment retry story, state-transition test, risk “duplicate charge”

Title như “Payment broken” không đủ. Severity và priority có liên quan nhưng khác nhau: severe defect trong dormant feature có thể nhận priority thấp; low-severity legal wording issue có thể cần sửa khẩn cấp.

> **Mẹo nhớ:** Severity hỏi “Nặng đến đâu?”. Priority hỏi “Sửa sớm đến đâu?”.

CTFL v4.0.1, section 5.5, PDF pages 56-57.

## Chapter 5 K3 Practice

### Q1 - Ratio Estimate

Historical development:test effort là 5:2. New development effort là 750 person-days. Estimate test effort.

<details><summary>Đáp án</summary>

<code>750 × 2/5 = 300 person-days</code>, với assumption new project tương đồng và ratio gồm cùng loại work.

</details>

### Q2 - Extrapolation

Test effort của ba similar iterations gần nhất là 32, 40 và 36 person-days. Dùng simple average để estimate iteration sau.

<details><summary>Đáp án</summary>

<code>(32+40+36)/3 = 36 person-days</code>. Nêu rõ model và reassess nếu scope, team hoặc context đổi.

</details>

### Q3 - Three-Point Estimate

Cho <code>a=8</code>, <code>m=14</code>, <code>b=26</code> giờ. Tính E và SD.

<details><summary>Đáp án</summary>

<code>E=(8+4×14+26)/6=90/6=15</code>; <code>SD=(26-8)/6=3</code>. Báo cáo **15 ± 3 giờ**, xấp xỉ 12-18.

</details>

### Q4 - Wideband Delphi

Một senior engineer nói “5 ngày” trước khi người khác estimate; group nhanh chóng đồng ý. Process property nào đã mất?

<details><summary>Đáp án</summary>

Initial **independent estimation**, vốn giúp giảm anchoring và dominance. Thu private estimates trước, thảo luận assumptions/outliers rồi re-estimate độc lập.

</details>

### Q5 - Prioritization with Dependency

T1 có low priority nhưng tạo data cần cho high-priority T2. T3 có high priority và independent. Order nào hợp lý?

<details><summary>Đáp án</summary>

Chạy **T3** sớm vì high priority và independent; chạy **T1 trước T2** vì dependency override nominal priority của T2. T3, T1, T2 là order hợp lý tùy resources.

</details>

### Q6 - Additional Coverage

T1 cover A,B,C; T2 cover B,C,D; T3 cover D,E; T4 cover A,E,F. Nếu T1 chạy trước, test nào maximize additional coverage ở bước sau?

<details><summary>Đáp án</summary>

T3 và T4 đều thêm hai items; test nào cũng có thể chạy thứ hai. Nếu chọn T4, T2 và T3 đều chỉ thêm D nên hòa. Dùng risk, cost, priority hoặc dependency để break tie.

</details>

### Q7 - Product or Project Risk

Phân loại: (a) performance tester duy nhất nghỉ việc; (b) checkout làm lộ card data; (c) test environment đến trễ.

<details><summary>Đáp án</summary>

(a) project risk; (b) product risk; (c) project risk. Consequences có thể tương tác, nhưng hãy classify chính risk event.

</details>

### Q8 - Risk-Based Response

Payment-duplication risk có high impact và medium likelihood. Nêu test response.

<details><summary>Đáp án</summary>

Prioritize sớm; giao skilled testers; dùng independent review, state-transition và concurrency/interruption tests, strong coverage, production-like integration và automated regression; monitor residual risk. Acceptance, transfer hoặc contingency là business options cần được chọn có chủ đích.

</details>

### Q9 - Progress or Completion Report?

Weekly document liệt kê execution status, blockers, changed risks và plan tuần sau. Đây là report nào?

<details><summary>Đáp án</summary>

**Test progress report**. Completion report tóm tắt completed scope theo objectives và exit criteria, gồm unresolved risks/defects và lessons learned.

</details>

### Q10 - Evaluate a Defect Report

Report: “App crashed. High priority. Please fix.” Information quan trọng nào còn thiếu?

<details><summary>Đáp án</summary>

Exact build/object và environment, preconditions/data, reproducible steps, expected và actual results, evidence/logs, impact-based severity, rationale cho priority, reporter/date và references. Thiếu các mục này làm resolution và confirmation khó tin cậy.

</details>

### Chapter 5 Quick Check

Bạn đã sẵn sàng khi có thể dùng cả bốn estimation techniques, order tests theo priorities/dependencies, phân biệt risk và reporting concepts, đồng thời viết reproducible defect report từ scenario.

---

# Chapter 6 - Test Tools

## Learning Objectives

- **FL-6.1.1 (K2):** Giải thích các loại test tools hỗ trợ testing như thế nào.
- **FL-6.2.1 (K1):** Nhớ benefits và risks của test automation.

## 6.1 Tool Support across Testing

**Test tool** là bất kỳ tool nào hỗ trợ testing; spreadsheet cũng có thể là test tool tùy context. Categories có thể chồng lấn và một product có thể hỗ trợ nhiều categories.

| Tool category | Typical support |
|---|---|
| Test management | Requirements/tests/defects/configuration links, planning, scheduling, reporting, traceability |
| Static testing | Review workflow, coding-rule checks, control/data-flow issues, complexity, security findings |
| Test design and implementation | Generate hoặc organize cases, data, procedures, models, scripts |
| Test execution and coverage | Chạy tests, compare outcomes, log results, đo code hoặc requirement coverage |
| Non-functional testing | Generate load, đo performance, scan security, test reliability; những việc khó hoặc không thể làm manual |
| DevOps | Versioning, build, CI/CD, orchestration, quality gates, deployment pipeline |
| Collaboration | Communication, shared review, work tracking, knowledge sharing |
| Scalability/deployment standardization | Virtual machines, containers, repeatable environments |

Hãy classify tool theo testing activity mà nó hỗ trợ trong scenario, không theo brand name.

CTFL v4.0.1, section 6.1, PDF page 59.

## 6.2 Benefits of Test Automation

Potential benefits gồm:

- giảm repetitive manual effort cho regression, data entry, comparison và standards checking;
- tăng consistency và repeatability, giảm simple human errors;
- cung cấp objective measurements như coverage và measures quá phức tạp cho con người;
- giúp truy cập statistics, trends, graphs và status information;
- rút ngắn execution time, phát hiện defect sớm, tăng feedback speed và delivery speed;
- cho tester thêm thời gian design tests mới, sâu và sáng tạo hơn.

Automation thay đổi nơi team bỏ effort chứ không xóa effort. Time tiết kiệm từ execution có thể được đầu tư vào analysis và exploration.

## 6.3 Risks of Test Automation

- unrealistic expectations về capability, ease hoặc return;
- estimate thiếu introduction, training, integration và maintenance cost;
- automate work phù hợp hơn với manual testing;
- quá phụ thuộc vào tools, làm giảm human critical thinking;
- vendor dependency hoặc support kém;
- open-source tool bị abandon hoặc dependencies update quá thường xuyên;
- incompatibility với development platform;
- tool không đáp ứng regulatory hoặc safety requirements.

### Practical Mitigation

- gắn automation với objectives và risks cụ thể;
- đánh giá technical/platform/regulatory fit;
- pilot representative slice và đo total cost;
- design maintainable testware, xác định ownership;
- training users và plan ongoing support;
- giữ exploratory cùng judgment-heavy testing cho con người;
- monitor flaky tests, false positives/negatives, execution time và maintenance effort;
- giữ data, code và interfaces portable nếu vendor lock-in là concern.

Tool không thay thế test strategy. Tự động hóa một test kém chỉ khiến test kém đó chạy nhanh hơn.

> **Mẹo nhớ:** Automation tiết kiệm execution effort nhưng tạo development và maintenance effort.

CTFL v4.0.1, section 6.2, PDF pages 59-60.

## Chapter 6 Application Practice

### Q1 - Classify the Support

Tool tạo 5.000 virtual users và ghi latency percentiles. Đây là category nào?

<details><summary>Đáp án</summary>

**Non-functional testing tool**, cụ thể hỗ trợ performance testing. Tool cũng có thể integrate với execution/reporting tools.

</details>

### Q2 - Benefit or Risk?

Suite chạy consistent qua đêm và giải phóng tester cho exploratory work, nhưng UI changes yêu cầu sửa scripts thường xuyên.

<details><summary>Đáp án</summary>

Consistent repeated execution và thêm thời gian cho tester là benefits; underestimated maintenance cost là risk.

</details>

### Q3 - Tool Decision

Team muốn automate evaluation cho visual prototype chỉ dùng một lần và đang thay đổi nhanh. Cần cân nhắc gì?

<details><summary>Đáp án</summary>

Manual exploratory/usability testing có thể phù hợp hơn. So sánh automation build/maintenance cost với số lần lặp và decision value thay vì mặc định automation tốt hơn.

</details>

### Q4 - Overreliance

Coverage report 100%, nhưng users vẫn không hoàn tất checkout. Giải thích.

<details><summary>Đáp án</summary>

Coverage cho biết selected structural hoặc requirement items đã được exercise, không chứng minh behavior đúng hoặc hữu ích. Missing/incorrect requirements, weak assertions, usability issues và test oracle defects vẫn có thể tồn tại. Cần human validation và complementary techniques.

</details>

### Q5 - Safe Adoption

Liệt kê bốn controls trước khi áp dụng test execution tool mới.

<details><summary>Đáp án</summary>

Validate objectives; assess platform/regulatory fit; pilot representative tests; estimate introduction và maintenance effort; training users; define ownership/support; measure outcomes; giữ manual judgment. Bốn controls có giải thích đều được chấp nhận.

</details>

## Chapter 6 Quick Check

Bạn đã sẵn sàng khi có thể ghép đúng từng tool với activity mà tool đó hỗ trợ, đồng thời giải thích vì sao mỗi automation benefit đều đi kèm vấn đề cần cân nhắc khi adoption hoặc maintenance.

---

# Tổng hợp và chuẩn bị thi

## Những cặp khái niệm dễ nhầm

| Cặp khái niệm | Điểm khác nhau cần nhớ |
|---|---|
| Testing / debugging | Testing làm lộ ra failure hoặc cung cấp thông tin về defect; debugging tìm nguyên nhân và loại bỏ nguyên nhân đó |
| Verification / validation | Verification kiểm tra sự phù hợp với specified requirements; validation kiểm tra sản phẩm có đáp ứng stakeholder needs khi sử dụng thực tế hay không |
| Error / defect / failure | Error là hành động sai của con người; defect là sai sót trong work product; failure là hành vi sai quan sát được khi chạy phần mềm |
| QA / testing | QA hướng vào process và phòng ngừa; testing chủ yếu đánh giá product và phát hiện vấn đề |
| Test monitoring / test control | Monitoring thu thập rồi so sánh thông tin với kế hoạch; control thực hiện corrective action |
| Test analysis / test design | Analysis trả lời “test cái gì?”; design trả lời “test như thế nào?” |
| Confirmation testing / regression testing | Confirmation kiểm tra defect cụ thể đã được sửa; regression kiểm tra thay đổi có gây side effect ở nơi khác không |
| Test level / test type | Test level nói về scope hoặc giai đoạn phát triển; test type nói về quality characteristic hoặc mục đích testing |
| Static testing / dynamic testing | Static testing không chạy software; dynamic testing có chạy software |
| Review leader / moderator | Review leader chịu trách nhiệm chung về việc tổ chức review; moderator điều phối meeting để meeting diễn ra hiệu quả |
| Severity / priority | Severity là mức độ ảnh hưởng; priority là mức độ khẩn cấp hoặc thứ tự cần sửa |
| Product risk / project risk | Product risk đe dọa product quality; project risk đe dọa schedule, budget, scope hoặc project objectives |
| Entry criteria / exit criteria | Entry criteria là điều kiện phải có trước khi bắt đầu; exit criteria là điều kiện phải đạt để kết thúc |
| Test progress report / test completion report | Progress report phục vụ monitoring và control khi testing đang diễn ra; completion report tổng kết scope đã hoàn thành và bài học thu được |
| Equivalence Partitioning / Boundary Value Analysis | EP chọn đại diện từ các partition có cách xử lý tương đương; BVA kiểm tra boundary và các giá trị lân cận của ordered partitions |
| Statement coverage / branch coverage | Statement coverage đo executable statements; branch coverage đo control-flow transfers. Branch coverage bao hàm statement coverage |

> **Mẹo nhớ:** Khi hai thuật ngữ trông giống nhau, đừng học riêng từng definition. Hãy nói thành một câu so sánh: “A tập trung vào…, còn B tập trung vào…”.

## Điều rút ra từ bốn official sample exams

Phần được chấm điểm của official sample sets A–D có tổng cộng **160 câu hỏi**. Mỗi set 40 câu đều dùng cùng một phân bố theo chapter và cognitive level như bảng dưới đây, dù Learning Objectives cụ thể được chọn trong một số chapters có thể khác nhau.

| Chapter | Số câu trong mỗi set | Tỷ trọng trong bài 40 câu |
|---|---:|---:|
| 1 — Fundamentals | 8 | 20% |
| 2 — Testing throughout the SDLC | 6 | 15% |
| 3 — Static testing | 4 | 10% |
| 4 — Test analysis and design | 11 | 27,5% |
| 5 — Managing test activities | 9 | 22,5% |
| 6 — Test tools | 2 | 5% |

Mỗi sample exam có **8 câu K1, 24 câu K2 và 8 câu K3**. Chapters 4 và 5 chiếm một nửa bài thi. Mỗi K3 Learning Objective xuất hiện một lần trong từng sample: EP, BVA, decision tables, state transitions, ATDD, estimation, prioritization và defect reporting. Vì vậy, bạn cần thành thạo cách thực hiện từng procedure, không chỉ học thuộc definitions.

Official sample question documents sắp câu hỏi theo Learning Objective để hỗ trợ việc học. Tài liệu cũng nói rõ rằng không nên kỳ vọng live examination sẽ đi theo thứ tự đó. Khi luyện tập, hãy tập chuyển nhanh giữa các topics.

### Các kiểu distractor lặp lại

- **Thay một từ:** verification bị đổi thành validation, defect thành failure, hoặc severity thành priority.
- **Đúng task nhưng sai activity:** một task hợp lý bị gán cho analysis thay vì design, implementation thay vì completion, hoặc test reporting thay vì defect management.
- **Đúng concept nhưng sai scope:** nhầm test type với test level, confirmation với regression, hoặc product risk với project risk.
- **Có coverage nhưng không có denominator:** đáp án đếm số tests thay vì partitions, boundary values, feasible rules, transitions, statements hoặc branches.
- **Bỏ qua feasibility hoặc state:** chọn một input combination không thể xảy ra, hoặc đếm event sequence mà không theo dõi current state.
- **Khẳng định tuyệt đối nhưng không có căn cứ:** cho rằng coverage chứng minh correctness, automation loại bỏ human judgment, hoặc một technique tìm được mọi defect type.

### Quy trình giải câu hỏi đáng tin cậy

1. Khoanh qualifier và số lượng đáp án cần chọn: **BEST**, **MOST likely**, **NOT**, **minimum**, **Select ONE** hoặc **Select TWO**.
2. Gọi tên Learning Objective hoặc cặp khái niệm đang được hỏi trước khi đánh giá các options.
3. Với câu K3, hãy viết coverage items, state path, dependency order hoặc formula trước; sau đó mới so sánh với options.
4. Với mỗi option bị loại, chỉ ra chính xác từ ngữ, scope, calculation hoặc model rule khiến nó sai.
5. Sau một mock exam, review theo Learning Objective và rationale, không review theo chữ cái đáp án. Một câu đoán không có căn cứ vẫn là điểm yếu, ngay cả khi đoán đúng.

*Nguồn phân tích: official ISTQB CTFL v4.0.1 sample sets A v1.7, B v1.7, C v1.6 và D v1.5; sử dụng 40 câu được chấm điểm trong mỗi set cùng learning-objective mappings trong answer key. Phần này không sao chép nội dung official questions.*

## Formula sheet

- <code>Coverage % = số coverage items đã được exercise / tổng số coverage items × 100</code>
- <code>Risk level (ví dụ định lượng) = likelihood × impact</code>
- <code>Ratio estimate = known effort × historical ratio phù hợp</code>
- <code>Simple extrapolation = observed rate hoặc average × lượng comparable work còn lại</code>
- <code>Three-point E = (a + 4m + b) / 6</code>
- <code>Three-point SD = (b − a) / 6</code>

Trước khi tính coverage, luôn nói rõ **coverage item là gì** và **denominator gồm những item nào**. Nếu không xác định hai điều này, con số coverage rất dễ gây hiểu nhầm.

## Integrated scenario practice

### Scenario

ShopEZ bổ sung tính năng **buy now, pay later (BNPL)**. Business rules:

- chỉ customer đã đăng ký và là người trưởng thành mới được dùng BNPL;
- order subtotal hợp lệ từ 50 USD đến 1.000 USD, bao gồm cả hai endpoints;
- risk review đánh giá nguy cơ tạo duplicate agreement có likelihood = 3 và impact = 5 trên thang 1–5;
- feature gọi một external credit service;
- sau ba lần credit-service timeout liên tiếp, request chuyển sang state <code>ManualReview</code>;
- nếu nhận successful response trước timeout thứ ba, timeout count được reset;
- release được thực hiện trong hai iterations.

Đây là **teaching example**, không phải official ISTQB example.

### Q1

Đâu là valid order-value partition và hai invalid partitions?

A. Valid: 50–1.000; invalid: dưới 50 và trên 1.000  
B. Valid: 51–999; invalid: 50 và 1.000  
C. Valid: chỉ trên 50; invalid: dưới 50  
D. Một valid partition chứa mọi numeric value

<details><summary>Đáp án</summary>

**A.** Cụm “từ 50 đến 1.000, bao gồm cả hai endpoints” tạo một valid partition là 50–1.000. Hai invalid partitions là nhỏ hơn 50 và lớn hơn 1.000.

B loại sai hai endpoints hợp lệ. C bỏ mất upper boundary. D không phân biệt cách xử lý valid và invalid values.

CTFL v4.0.1, section 4.2.1, PDF pages 39-40.

</details>

### Q2

Giả sử input là số USD nguyên, đâu là test set đúng theo **2-value BVA**?

A. 50, 1.000  
B. 49, 50, 1.000, 1.001  
C. 49, 50, 51, 999, 1.000, 1.001  
D. 0, 500, 2.000

<details><summary>Đáp án</summary>

**B.** Với mỗi boundary, 2-value BVA dùng boundary value và closest neighbor thuộc adjacent partition. Vì vậy cần 49/50 ở lower boundary và 1.000/1.001 ở upper boundary.

C là test set của 3-value BVA vì có boundary và cả hai neighbors. A không kiểm tra phía invalid sát boundary. D không tập trung vào boundary values.

CTFL v4.0.1, section 4.2.2, PDF pages 40-41.

</details>

### Q3

Ngoài amount, decision table nên có thêm conditions nào?

A. Registered status và adult status  
B. Chỉ code statement count  
C. Chỉ tester seniority  
D. Chỉ browser color theme

<details><summary>Đáp án</summary>

**A.** Registered status và adult status cùng quyết định customer có đủ điều kiện dùng BNPL hay không, nên chúng là conditions của business rule.

Statement count là structural measure; tester seniority và color theme không quyết định eligibility action.

CTFL v4.0.1, section 4.2.3, PDF page 41.

</details>

### Q4

Sequence nào thiết yếu cho state transition testing?

A. timeout, timeout, success, timeout, timeout, timeout  
B. 50 USD, 51 USD, 999 USD  
C. mở requirements document  
D. chạy cùng một successful request một lần

<details><summary>Đáp án</summary>

**A.** Sequence này kiểm tra hai behavior quan trọng: success trước timeout thứ ba phải reset counter; sau đó ba timeouts liên tiếp phải đưa request vào <code>ManualReview</code>.

B là data-oriented test, không phải state sequence. C là static activity. D không đi qua các transitions cần kiểm tra.

CTFL v4.0.1, section 4.2.4, PDF pages 41-42.

</details>

### Q5

Interface với external credit service chủ yếu được test ở test level nào?

A. Component testing  
B. System integration testing  
C. Chỉ user acceptance testing  
D. Chỉ static testing

<details><summary>Đáp án</summary>

**B.** Test objective là interface và interaction giữa system under test với external service, nên test level phù hợp nhất là system integration testing.

Static review và các test levels khác vẫn có thể bổ sung giá trị, nhưng chúng không thay đổi focus chính của câu hỏi.

CTFL v4.0.1, section 2.2.1, PDF pages 28-30.

</details>

### Q6

Quantitative risk score của duplicate agreements là bao nhiêu?

A. 2  
B. 8  
C. 15  
D. 35

<details><summary>Đáp án</summary>

**C.** Theo cách tính định lượng đơn giản: <code>risk level = likelihood × impact = 3 × 5 = 15</code>.

Con số 15 giúp so sánh và ưu tiên risk, nhưng cách xử lý vẫn cần judgment và thresholds đã được các bên thống nhất.

CTFL v4.0.1, section 5.2.1, PDF page 51.

</details>

### Q7

Một defect đã tạo duplicate agreements. Sau khi developer sửa, tester chạy lại đúng timeout sequence từng gây failure. Đây là hoạt động gì?

A. Debugging  
B. Confirmation testing  
C. Chỉ regression testing  
D. Chỉ QA

<details><summary>Đáp án</summary>

**B. Confirmation testing** trực tiếp kiểm tra defect cụ thể đã được sửa thành công hay chưa.

Các tests khác cho payment, order và retry sẽ phục vụ regression testing. Debugging là hoạt động tìm và loại bỏ nguyên nhân defect, thường do developer thực hiện. QA không phải tên của lần chạy lại này.

CTFL v4.0.1, section 2.2.3, PDF page 33.

</details>

### Q8

Đâu là early static activity tốt nhất?

A. Chờ đến khi có thể chạy system  
B. Business, developers và testers cùng review eligibility criteria và timeout-state model  
C. Chạy transactions trên production  
D. Xóa acceptance criteria

<details><summary>Đáp án</summary>

**B.** Review sớm có thể phát hiện ambiguity, omission và business-rule contradiction trước khi code được viết, nhờ đó feedback đến sớm và chi phí sửa thường thấp hơn.

A trì hoãn feedback. C là dynamic production activity với risk không cần thiết. D làm mất test basis.

CTFL v4.0.1, sections 3.1.2 and 3.2.1, PDF pages 35-37.

</details>

### Q9

Defect title nào cung cấp thông tin tốt nhất?

A. BNPL broken  
B. Error happened  
C. Third consecutive credit timeout creates two BNPL agreements in build 5.2.0  
D. Please fix urgently

<details><summary>Đáp án</summary>

**C.** Title này nêu rõ trigger, observed failure và build. Người đọc có thể phân loại và điều tra nhanh hơn.

Phần body vẫn phải có environment, steps, expected result, actual result, evidence, severity và priority. A, B và D quá mơ hồ.

CTFL v4.0.1, section 5.5.1, PDF pages 56-57.

</details>

### Q10

Ba iterations gần nhất lần lượt dùng 20, 24 và 22 test days. Simple extrapolated estimate cho iteration tiếp theo có điều kiện tương đương là bao nhiêu?

A. 20  
B. 22  
C. 24  
D. 66

<details><summary>Đáp án</summary>

**B.** Average là <code>(20 + 24 + 22) / 3 = 22</code> test days.

Estimate này chỉ hợp lý khi work và team conditions của iteration mới thực sự comparable với dữ liệu lịch sử.

CTFL v4.0.1, section 5.1.4, PDF pages 47-48.

</details>

### Q11

Automation claim nào không an toàn?

A. Repeated API regression có thể cho feedback nhanh hơn  
B. Tool maintenance cần effort  
C. 100% automated execution chứng minh feature không có defect  
D. Pipeline có thể chạy tests nhất quán

<details><summary>Đáp án</summary>

**C.** Testing cho thấy sự hiện diện của defects, không chứng minh defects hoàn toàn không tồn tại. Automated execution và coverage cao cũng không bảo đảm requirements đầy đủ, assertions đúng hoặc mọi relevant condition đã được test.

A và D là benefits có thể đạt được; B là một risk/cost thực tế cần tính đến.

CTFL v4.0.1, sections 1.3.1 and 6.2, PDF pages 20 and 59-60.

</details>

### Q12

Report nào nên chứa đánh giá cuối cùng về exit criteria, unresolved risks, defects chưa sửa và lessons learned?

A. Defect report  
B. Test completion report  
C. Review checklist  
D. Test data file

<details><summary>Đáp án</summary>

**B. Test completion report** tóm tắt và đánh giá test scope đã hoàn thành, deviations, unresolved issues, residual risks và bài học.

Test progress report phục vụ control khi testing còn diễn ra; các lựa chọn A, C và D có scope hẹp hơn.

CTFL v4.0.1, section 5.3.2, PDF pages 53-54.

</details>

## Complete Learning Objective checklist

Dùng các ô dưới đây để tự đánh giá lần cuối:

- **Explain** nghĩa là bạn có thể giải thích lý do và tự đưa ra example.
- **Apply** nghĩa là bạn có thể giải một scenario mới mà không sao chép template.
- Chỉ đánh dấu khi bạn làm được **không cần nhìn notes**.

### Chapter 1

- [ ] FL-1.1.1 Xác định các test objectives điển hình.
- [ ] FL-1.1.2 Phân biệt testing với debugging.
- [ ] FL-1.2.1 Đưa ra examples giải thích vì sao testing là cần thiết.
- [ ] FL-1.2.2 Nhớ mối quan hệ giữa testing và QA.
- [ ] FL-1.2.3 Phân biệt root cause, error, defect và failure.
- [ ] FL-1.3.1 Giải thích đủ bảy testing principles.
- [ ] FL-1.4.1 Giải thích test activities và các tasks liên quan.
- [ ] FL-1.4.2 Giải thích context ảnh hưởng test process như thế nào.
- [ ] FL-1.4.3 Ghép đúng testware với activity tạo ra hoặc sử dụng nó.
- [ ] FL-1.4.4 Giải thích giá trị của traceability.
- [ ] FL-1.4.5 So sánh test management role và testing role.
- [ ] FL-1.5.1 Đưa ra examples về generic tester skills.
- [ ] FL-1.5.2 Nhớ các lợi ích của whole-team approach.
- [ ] FL-1.5.3 So sánh benefits và drawbacks của test independence.

### Chapter 2

- [ ] FL-2.1.1 Giải thích SDLC ảnh hưởng testing như thế nào.
- [ ] FL-2.1.2 Nhớ các good practices áp dụng độc lập với lifecycle model.
- [ ] FL-2.1.3 Nhớ TDD, ATDD và BDD.
- [ ] FL-2.1.4 Tóm tắt DevOps ảnh hưởng testing như thế nào.
- [ ] FL-2.1.5 Giải thích shift left.
- [ ] FL-2.1.6 Giải thích retrospectives hỗ trợ process improvement như thế nào.
- [ ] FL-2.2.1 Phân biệt năm test levels.
- [ ] FL-2.2.2 Phân biệt bốn test types.
- [ ] FL-2.2.3 Phân biệt confirmation testing với regression testing.
- [ ] FL-2.3.1 Tóm tắt maintenance testing và các triggers của nó.

### Chapter 3

- [ ] FL-3.1.1 Nhận biết work products phù hợp với static testing.
- [ ] FL-3.1.2 Giải thích giá trị của static testing.
- [ ] FL-3.1.3 So sánh static testing với dynamic testing.
- [ ] FL-3.2.1 Xác định benefits của early và frequent feedback.
- [ ] FL-3.2.2 Tóm tắt các review-process activities theo đúng thứ tự.
- [ ] FL-3.2.3 Nhớ trách nhiệm chính của từng review role.
- [ ] FL-3.2.4 So sánh informal review, walkthrough, technical review và inspection.
- [ ] FL-3.2.5 Nhớ các review success factors.

### Chapter 4

- [ ] FL-4.1.1 Phân biệt black-box, white-box và experience-based techniques.
- [ ] FL-4.2.1 Áp dụng EP và tính coverage.
- [ ] FL-4.2.2 Áp dụng 2-value và 3-value BVA rồi tính coverage.
- [ ] FL-4.2.3 Tạo hoặc sử dụng decision table và tính rule coverage.
- [ ] FL-4.2.4 Suy ra state-transition tests và tính coverage.
- [ ] FL-4.3.1 Giải thích statement testing và statement coverage.
- [ ] FL-4.3.2 Giải thích branch testing và branch coverage.
- [ ] FL-4.3.3 Giải thích giá trị và giới hạn của white-box testing.
- [ ] FL-4.4.1 Giải thích error guessing.
- [ ] FL-4.4.2 Giải thích exploratory testing.
- [ ] FL-4.4.3 Giải thích checklist-based testing.
- [ ] FL-4.5.1 Giải thích collaborative user-story writing, 3 Cs và INVEST.
- [ ] FL-4.5.2 Phân loại các acceptance-criteria formats.
- [ ] FL-4.5.3 Áp dụng ATDD để suy ra tests trước implementation.

### Chapter 5

- [ ] FL-5.1.1 Giải thích mục đích và nội dung của test plan.
- [ ] FL-5.1.2 Nhận biết đóng góp của tester trong release planning và iteration planning.
- [ ] FL-5.1.3 So sánh entry criteria với exit criteria.
- [ ] FL-5.1.4 Tính ratio, extrapolation và three-point estimates; giải thích Wideband Delphi.
- [ ] FL-5.1.5 Áp dụng risk-based, coverage-based, additional-coverage-based và requirements-based prioritization, đồng thời xét dependencies.
- [ ] FL-5.1.6 Nhớ test pyramid.
- [ ] FL-5.1.7 Giải thích đủ bốn testing quadrants.
- [ ] FL-5.2.1 Xác định risk level từ likelihood và impact.
- [ ] FL-5.2.2 Phân biệt product risks với project risks.
- [ ] FL-5.2.3 Giải thích product-risk analysis ảnh hưởng testing như thế nào.
- [ ] FL-5.2.4 Giải thích risk responses và các testing mitigations.
- [ ] FL-5.3.1 Nhớ các metric categories.
- [ ] FL-5.3.2 Phân biệt purpose, content và audience của progress report và completion report.
- [ ] FL-5.3.3 Chọn hình thức status communication phù hợp.
- [ ] FL-5.4.1 Giải thích configuration management hỗ trợ testing như thế nào.
- [ ] FL-5.5.1 Chuẩn bị một defect report đầy đủ.

### Chapter 6

- [ ] FL-6.1.1 Giải thích các tool categories hỗ trợ testing như thế nào.
- [ ] FL-6.2.1 Nhớ benefits và risks của test automation.

## Suggested 14-day study path

| Ngày | Trọng tâm | Kết quả cần tạo ra |
|---:|---|---|
| 1 | Chapter 1 đến hết testing principles | Tự nói lại causal chain và bảy principles |
| 2 | Chapter 1: process, testware, roles | Vẽ sơ đồ activity → work product |
| 3 | Chapter 2: lifecycle, test-first, DevOps | Phân loại 10 examples |
| 4 | Chapter 2: levels, types, maintenance | Tạo một matrix test level × test type |
| 5 | Chapter 3 | Mô phỏng một review và phân công roles |
| 6 | EP và 2/3-value BVA | Suy ra năm data sets mới |
| 7 | Decision tables | Tạo ba full hoặc minimized tables |
| 8 | State transitions | Vẽ hai models và tính ba loại coverage |
| 9 | White-box và experience-based techniques | Tính statement/branch coverage; viết exploratory charters |
| 10 | Stories, criteria, ATDD | Chuyển ba vague stories thành executable examples |
| 11 | Planning và estimation | Giải bài ratio, extrapolation, Delphi và three-point |
| 12 | Prioritization, test pyramid, testing quadrants | Sắp xếp suites có dependencies; phân loại tests |
| 13 | Risk, reporting, CM, defects, tools | Tạo risk table và defect report |
| 14 | Closed-book integration practice | Làm lại toàn bộ practice; ôn mọi objective còn sai |

## Final readiness rule

Đừng đánh giá mức sẵn sàng chỉ bằng việc “nhìn definition thấy quen”. Bạn sẵn sàng khi có thể:

- dạy lại từng concept bằng ngôn ngữ đơn giản;
- phân biệt concept đó với khái niệm gần và dễ nhầm nhất;
- tự tạo một software example;
- thực hiện mọi K3 technique và calculation mà không nhìn notes;
- giải thích vì sao từng wrong alternative trong câu hỏi là sai.

---

## Ghi chú về nguồn và phạm vi

Learning guide độc lập này bám theo examinable material và learning objectives của **ISTQB Certified Tester Foundation Level Syllabus v4.0.1 (15 September 2024)**. Nội dung diễn giải và hướng dẫn học, không sao chép nguyên văn official document. ISTQB và CTFL là các nhãn hiệu gắn với chủ sở hữu tương ứng. Đây không phải official accredited training product và không chứa official exam questions.

# Glossary từ khóa ngắn gọn

Các definitions dưới đây được viết để dễ học. Khi một term xuất hiện ở nhiều chapters, hãy giữ nguyên core meaning rồi hiểu thêm cách term đó được dùng trong từng chapter.

## Chapter 1 keywords

- **Coverage:** mức độ các coverage items đã xác định được exercise, thường biểu diễn bằng percentage.
- **Debugging:** hoạt động thường do developer thực hiện để tái hiện failure, tìm và phân tích defect, rồi loại bỏ nguyên nhân.
- **Defect:** điểm không hoàn hảo trong một work product, có thể gây failure khi gặp relevant conditions.
- **Error:** hành động của con người tạo ra kết quả không đúng.
- **Failure:** sự kiện một component hoặc system không thực hiện required function trong specified limits.
- **Quality:** mức độ một work product đáp ứng stated và implied stakeholder needs.
- **Quality assurance (QA):** các hoạt động hướng vào process và phòng ngừa, nhằm tạo confidence rằng quality requirements sẽ được đáp ứng.
- **Root cause:** nguyên nhân nền tảng làm vấn đề xảy ra; loại bỏ nó có thể ngăn vấn đề tái diễn.
- **Test analysis:** đánh giá test basis để xác định và ưu tiên những gì cần test, gồm test conditions và coverage items.
- **Test basis:** nguồn kiến thức dùng làm căn cứ cho analysis và design, ví dụ requirements, user stories, design, code hoặc risks.
- **Test case:** tập hợp preconditions, inputs, actions, expected results và postconditions được tạo cho một test objective.
- **Test completion:** các closure activities nhằm tổng hợp results, bảo quản testware hữu ích, báo cáo status và ghi lại lessons learned.
- **Test condition:** khía cạnh có thể test của component hoặc system, được xác định làm cơ sở cho testing.
- **Test control:** corrective actions hướng testing về đúng objectives.
- **Test data:** dữ liệu được tạo hoặc lựa chọn để cung cấp inputs và preconditions cho test execution.
- **Test design:** phát triển test conditions thành test cases và testware khác; trả lời “test như thế nào?”.
- **Test execution:** chạy tests rồi so sánh actual results với expected results.
- **Test implementation:** tạo và tổ chức procedures, scripts, suites, data, schedules và environments để tests có thể chạy.
- **Test monitoring:** liên tục thu thập và so sánh test information với plan và criteria.
- **Test object:** work product đang được test.
- **Test objective:** lý do hoặc mục đích của testing.
- **Test planning:** xác định objectives và approach để đạt chúng trong các constraints.
- **Test procedure:** sequence của test cases hoặc test steps theo thứ tự có thể execute.
- **Test process:** tập hợp test activities được điều chỉnh cho phù hợp context.
- **Test result:** actual outcome cùng thông tin liên quan thu được từ execution.
- **Testing:** các static và dynamic activities dùng để phát hiện defects và đánh giá quality của software work products.
- **Testware:** các work products được tạo trong testing, ví dụ plans, conditions, cases, scripts, data, logs và reports.
- **Traceability:** khả năng liên kết test-basis items, risks, testware, results và defects.
- **Validation:** xác nhận product phù hợp intended use và stakeholder needs.
- **Verification:** xác nhận specified requirements đã được đáp ứng.

## Chapter 2 keywords

- **Acceptance testing:** test level hướng vào validation, nhằm chứng minh business, operational hoặc deployment readiness.
- **Black-box testing:** testing dựa trên external specifications mà không tham chiếu internal structure.
- **Component integration testing:** testing interfaces và interactions giữa các components đã được tích hợp.
- **Component testing:** testing từng component riêng lẻ, thường trong isolation.
- **Confirmation testing:** testing để xác nhận một defect cụ thể đã được sửa thành công.
- **Functional testing:** testing các functions mà component hoặc system thực hiện.
- **Integration testing:** testing interfaces và interactions nói chung; CTFL phân biệt component integration và system integration test levels.
- **Maintenance testing:** testing những thay đổi đối với operational system hoặc việc retirement system đó.
- **Non-functional testing:** testing system hoạt động tốt đến mức nào xét theo quality characteristics.
- **Regression testing:** testing để tìm unintended adverse effects do thay đổi gây ra.
- **Shift left:** đưa các testing activities phù hợp về sớm hơn trong lifecycle, nhưng vẫn giữ những later tests cần thiết.
- **System integration testing:** testing interfaces giữa system under test và external systems hoặc services.
- **System testing:** testing behavior và capabilities của complete system.
- **Test level:** nhóm test activities được tổ chức cho software ở một development scope hoặc phase nhất định.
- **Test type:** nhóm test activities hướng vào một quality characteristic hoặc testing purpose.
- **White-box testing:** testing dựa trên implementation hoặc internal structure.

## Chapter 3 keywords

- **Anomaly:** observation khác với expectation và cần được phân tích; chưa thể tự động kết luận đó là confirmed defect.
- **Dynamic testing:** testing có execute software.
- **Formal review:** review theo defined và documented process, với mức độ nghiêm ngặt cao hơn về roles và process.
- **Informal review:** review không có defined process hoặc mandatory formal output.
- **Inspection:** review type formal nhất; hướng tới phát hiện tối đa anomalies và thu thập metrics.
- **Review:** static evaluation một work product bởi con người.
- **Static analysis:** tool-based evaluation một structured work product mà không execute nó.
- **Static testing:** evaluation không execute software, bao gồm reviews và static analysis.
- **Technical review:** review do technically qualified participants thực hiện và có moderator, nhằm đưa ra decisions hoặc consensus và phát hiện anomalies.
- **Walkthrough:** author-led review dùng để giải thích, học hỏi, tạo consensus, đưa ra ideas và phát hiện anomalies.

## Chapter 4 keywords

- **Acceptance criteria:** các conditions mà implementation của user story phải đáp ứng để được chấp nhận.
- **Acceptance test-driven development (ATDD):** collaborative test-first approach, trong đó acceptance tests được suy ra trước implementation.
- **Black-box test technique:** technique suy ra tests có hệ thống từ specified behavior, độc lập với implementation.
- **Boundary Value Analysis (BVA):** black-box technique exercise boundaries của ordered partitions và các neighbors được quy định.
- **Branch coverage:** percentage của các identified control-flow branches đã được exercise.
- **Checklist-based testing:** experience-based design và execution được hướng dẫn bởi danh sách independently checkable conditions.
- **Collaboration-based test approach:** approach kết hợp business, development và testing perspectives để phòng tránh defects và suy ra tests.
- **Coverage item:** entity được chọn làm đơn vị đo của coverage criterion.
- **Decision table testing:** testing các feasible rules được tạo bởi combinations of conditions và resulting actions.
- **Equivalence Partitioning (EP):** chia một domain thành các non-overlapping partitions mà các phần tử trong cùng partition được kỳ vọng sẽ được xử lý tương đương.
- **Error guessing:** dự đoán likely errors, defects và failures dựa trên experience và defect knowledge.
- **Experience-based test technique:** technique có hiệu quả design phụ thuộc chủ yếu vào knowledge và skill của tester.
- **Exploratory testing:** đồng thời learning, design, execution và evaluation; thường được hướng dẫn bởi charter và time box.
- **State transition testing:** testing states, events, valid transitions và invalid transitions trong behavioral model.
- **Statement coverage:** percentage của executable statements đã được exercise.
- **Test technique:** procedure dùng để xác định test conditions, coverage items, data và cases.
- **White-box test technique:** technique dựa trên internal structure hoặc processing.

## Chapter 5 keywords

- **Defect management:** workflow và rules để ghi nhận, phân tích, xử lý, xác nhận và đóng anomalies hoặc defects.
- **Defect report:** record có đủ thông tin để phân tích, tái hiện, xử lý và theo dõi một anomaly.
- **Entry criteria:** preconditions để bắt đầu một activity.
- **Exit criteria:** conditions để tuyên bố một activity đã hoàn thành.
- **Product risk:** khả năng một product-quality problem sẽ gây thiệt hại.
- **Project risk:** khả năng một event sẽ gây hại cho schedule, budget, scope hoặc project objectives.
- **Risk:** potential event, threat hoặc situation mà nếu xảy ra sẽ tạo adverse effect.
- **Risk analysis:** gồm risk identification và risk assessment.
- **Risk assessment:** phân loại và đánh giá likelihood, impact, level, priority và cách xử lý có thể dùng.
- **Risk control:** gồm risk mitigation và risk monitoring.
- **Risk identification:** tạo một danh sách risks đủ rộng theo cách có hệ thống.
- **Risk level:** measure được suy ra từ likelihood và impact.
- **Risk management:** phối hợp risk analysis và risk control.
- **Risk mitigation:** action nhằm giảm likelihood và/hoặc impact của risk.
- **Risk monitoring:** theo dõi risks, hiệu quả mitigation, những thay đổi và emerging risks.
- **Risk-based testing:** lựa chọn, ưu tiên và quản lý tests dựa trên risk analysis và control.
- **Test approach:** cách áp dụng test strategy cho project hoặc scope cụ thể, gồm levels, types, techniques, coverage và resources.
- **Test completion report:** bản tóm tắt và đánh giá một test scope đã hoàn thành, gồm residual issues và learning.
- **Test plan:** mô tả objectives, resources, processes, approach, budget và schedule cho testing.
- **Test progress report:** thông tin định kỳ hỗ trợ monitoring và control khi testing đang diễn ra.
- **Test pyramid:** model ưu tiên nhiều fast, isolated low-level tests và ít slower, broad end-to-end tests hơn.
- **Test strategy:** mô tả high-level về cách testing thường được thực hiện để đạt objectives.
- **Testing quadrants:** model nhóm tests theo hai chiều business-facing/technology-facing và support-the-team/critique-the-product.

## Chapter 6 keyword

- **Test automation:** sử dụng software để thực hiện hoặc hỗ trợ test activities, không chỉ riêng test execution.
