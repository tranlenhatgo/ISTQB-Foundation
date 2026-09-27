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
6. Giữ official sample sets A–D chưa xem đáp án để luyện timed practice. Làm cả set trước khi mở answer document; sau đó giải thích vì sao từng distractor sai và ghi Learning Objective đứng sau mỗi lỗi.

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
- Trước khi đọc kỹ options, xác định Learning Objective có khả năng đang được hỏi và task cần làm: identify, distinguish, calculate hay derive.
- Làm đúng response instruction. Câu “Select TWO” chỉ hoàn tất khi bạn đã chọn hai options và có căn cứ độc lập cho cả hai.
- Loại các phát biểu tuyệt đối như “testing chứng minh không còn defect”, trừ khi bối cảnh thật sự cho phép kết luận đó.
- Cẩn thận với distractor gần đúng nhưng đổi một ISTQB term, đặt một task hợp lệ vào sai test activity, hoặc gán một benefit đúng cho sai technique.

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

Pricing policy quy định VIP customer được giảm 15%, nhưng analyst ghi 10% trong requirement. Developer implementation đúng 10%, và VIP customer phải trả quá nhiều. Cách phân loại nào đúng?

A. Hành động của analyst là error; “10%” trong requirement là defect; việc tính giá quá cao là failure.  
B. Hành động của analyst là defect; “10%” trong requirement là failure; việc tính giá quá cao là error.  
C. Implementation của developer là error; customer là defect; policy là failure.  
D. Việc thiếu review là failure; “10%” là root cause; việc tính giá quá cao là defect.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Hành động của con người tạo ra kết quả sai là **error**. Sai sót được tạo ra trong work product là **defect**. Hành vi sai quan sát được khi sử dụng là **failure**. Việc thiếu policy review có thể là một root cause.

B, C và D đổi sai vai trò của error, defect, failure hoặc root cause.

CTFL v4.0.1, section 1.2.3, PDF page 17.

</details>

### Q2 - Choose the Activity

Trong khi testing, 58% high-risk requirements đã được cover so với plan 80%. Manager phân thêm tester và hoãn low-risk tests. Những test activities nào đang diễn ra?

A. Đo coverage là test analysis; thay đổi resources là test design.  
B. Đo coverage là test execution; hoãn tests là test completion.  
C. Đo coverage là test monitoring; thêm resources và reprioritize là test control.  
D. Cả hai đều là test planning vì original plan đang được thay đổi.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Test monitoring thu thập thông tin và so sánh actual progress với plan. Test control thực hiện corrective action để đạt test objectives. Vì vậy, so sánh 58% với 80% là monitoring; thêm tester và đổi priority là control.

CTFL v4.0.1, section 1.4.1, PDF page 19.

</details>

### Q3 - Identify the Principle

Team đã chạy cùng một regression pack trong mười releases. Pack vẫn bắt được defect quay lại nhưng hiếm khi tìm ra defect mới. Team nên kết luận gì?

A. Exhaustive testing đã đạt được vì không tìm thấy defect mới.  
B. Tests wear out, nên cần làm mới tests và data nhưng vẫn giữ các regression checks còn hữu ích.  
C. Defects không còn cluster vì cùng các tests vẫn pass.  
D. Absence-of-defects fallacy có nghĩa là phải xóa regression pack.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Việc lặp lại mãi các tests không đổi thường phát hiện ngày càng ít defect mới. Tuy nhiên, các tests ổn định vẫn hữu ích để phát hiện regression, nên cần bổ sung hoặc làm mới chứ không xóa toàn bộ pack.

CTFL v4.0.1, section 1.3, PDF page 18.

</details>

### Q4 - Select Independence

Một safety-critical calculation cần objective evidence, nhưng developers có kiến thức riêng sâu về algorithm. Cách tổ chức nào hợp lý?

A. Chỉ để developers test vì familiarity luôn quan trọng hơn independence.  
B. Chỉ để external team test vì maximum independence luôn là tối ưu.  
C. Để developers thực hiện component testing chuyên sâu và independent team review assumptions cùng system-level testing.  
D. Không cho developers và independent testers trao đổi để tránh shared bias.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Kết hợp nhiều mức independence tận dụng được hiểu biết sâu của developer và góc nhìn khác của independent tester, đồng thời tránh isolation không cần thiết.

A và B dùng khẳng định tuyệt đối. D làm hỏng collaboration và communication.

CTFL v4.0.1, section 1.5.3, PDF page 22.

</details>

### Q5 - Verification or Validation?

ShopEZ implementation “guest checkout disabled” đúng như specification. Usability research sau đó cho thấy phần lớn target users bỏ cuộc khi phải tạo account. Phát biểu nào đúng nhất?

A. Verification thất bại vì implementation làm đúng specification.  
B. Validation thành công vì không có implementation defect nào được báo cáo.  
C. Verification có thể thành công nhưng validation thất bại; đây là absence-of-defects fallacy.  
D. Cả verification và validation đều thành công vì requirement được implementation chính xác.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Làm đúng specification là verification. Đáp ứng user và stakeholder needs trong thực tế sử dụng là validation. Implementation chính xác của một requirement sai hoặc không hữu ích vẫn có thể khiến product thất bại.

CTFL v4.0.1, sections 1.1 and 1.3, PDF pages 15 and 18.

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

Team đo API response time giữa ShopEZ và payment provider trong production-like environment. Cách phân loại nào đúng nhất?

A. Component testing và functional testing  
B. System integration testing và non-functional performance-efficiency testing  
C. System testing và maintainability testing  
D. Acceptance testing và security testing

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Test level là **system integration testing** vì focus là interface giữa ShopEZ và external service. Test type là **non-functional testing** vì response time là performance-efficiency characteristic.

CTFL v4.0.1, sections 2.2.1 and 2.2.2, PDF pages 29-30.

</details>

### Q2 - Test-First Classification

Trước khi code, developer viết một unit test đang fail cho <code>calculateTax()</code>, thêm code cho đến khi test pass, rồi refactor. Test-first approach nào được minh họa?

A. Acceptance test-driven development (ATDD)  
B. Behavior-driven development (BDD)  
C. Test-driven development (TDD)  
D. Risk-based testing

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** TDD dùng test-first cycle ở component level: viết test, viết lượng code vừa đủ để pass, rồi refactor. ATDD suy ra acceptance tests từ acceptance criteria; BDD thường mô tả desired behavior bằng natural language.

CTFL v4.0.1, section 2.1.3, PDF pages 25-26.

</details>

### Q3 - Confirmation and Regression

Một fix thay đổi voucher calculation. Lựa chọn nào phân biệt đúng confirmation testing với regression testing?

A. Chạy lại đúng voucher test từng fail để confirmation; test các voucher classes, totals, tax, refunds và invoices khác để regression.  
B. Test mọi unaffected feature để confirmation; yêu cầu developer inspect fix để regression.  
C. Chạy lại đúng voucher test chỉ để regression; confirmation bắt buộc phải có test environment mới.  
D. Review voucher requirement để confirmation; chỉ chạy lại failed test để regression.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Confirmation testing kiểm tra original defect đã được sửa hay chưa. Regression testing kiểm tra change có gây adverse consequences ở nơi khác không. Một test đôi khi hỗ trợ cả hai, nhưng hai objectives vẫn khác nhau.

CTFL v4.0.1, section 2.2.3, PDF page 30.

</details>

### Q4 - Shift-Left Decision

Team dự kiến chỉ chạy system-level load test một tuần trước release. Cách xử lý nào áp dụng shift-left testing tốt nhất mà không loại bỏ later testing cần thiết?

A. Thay system load test bằng requirements review vì static testing tìm được mọi performance problem.  
B. Đưa toàn bộ production-scale load test xuống unit testing rồi bỏ mọi later performance testing.  
C. Review performance requirements và architecture sớm; chạy component/API performance checks phù hợp trong CI; vẫn giữ representative system-level load testing.  
D. Giữ toàn bộ performance testing ở tuần cuối vì shift left chỉ áp dụng cho functional tests.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Shift left khuyến khích testing sớm, như early reviews và lower-level performance checks, nhưng không có nghĩa là bỏ later test levels. System-level testing vẫn có thể phát hiện risks liên quan đến integration, infrastructure và production-like load.

CTFL v4.0.1, section 2.1.5, PDF page 27.

</details>

### Q5 - Maintenance Scope

ShopEZ migrate database nhưng application code không đổi. Test scope nào phù hợp nhất?

A. Không cần testing vì maintenance testing chỉ cần khi application code thay đổi.  
B. Chỉ static review migration script vì không cần execute migrated data.  
C. Chỉ retest toàn bộ system, không cần prioritization hoặc migration-specific checks.  
D. Test data-conversion completeness và accuracy, platform compatibility, critical business flows, rollback/restore và risk-based regression.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**D.** Migration là một maintenance trigger. Scope có thể gồm test change, regression testing cho side effects và data migration tests. Application code không đổi không làm các risks này biến mất.

CTFL v4.0.1, section 2.3.1, PDF page 31.

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

Hai loại testing bổ sung cho nhau; không loại nào bao hàm loại còn lại. Một số defect types chỉ có thể được tìm bằng static testing, số khác chỉ lộ ra bằng dynamic testing. Static testing có thể phát hiện requirement bị thiếu hoặc mâu thuẫn và unreachable code. Dynamic testing có thể cho thấy một feature đã specify nhưng chưa được implementation, đồng thời đo response time dưới load; document review không thể tái tạo runtime performance.

CTFL v4.0.1, section 3.1.3, PDF page 34.

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

Lựa chọn nào phân loại đúng các finding sau: (a) tool báo unreachable code; (b) load tool ghi response time 4 giây; (c) reviewer tìm thấy acceptance criteria mâu thuẫn?

A. (a) Static analysis; (b) dynamic non-functional testing; (c) review/static testing  
B. (a) Dynamic functional testing; (b) static analysis; (c) dynamic testing  
C. (a) Review; (b) static non-functional testing; (c) component testing  
D. (a) Confirmation testing; (b) regression testing; (c) system testing

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Static analysis có thể tìm code anomalies mà không execute code. Đo response time cần dynamic execution. Review acceptance criteria là static testing activity.

CTFL v4.0.1, section 3.1.3, PDF page 34.

</details>

### Q2 - Order the Process

Trong review initiation, team đã phân phối đúng document và role instructions. Bước nào thường diễn ra tiếp theo, và reviewers cần tạo ra gì?

A. Fixing and reporting; reviewers sửa work product ngay mà không ghi findings.  
B. Planning; lúc này reviewers mới chọn review type và estimate effort lần đầu.  
C. Individual review; reviewers kiểm tra work product và ghi anomalies, questions cùng recommendations.  
D. Communication and analysis; reviewers đóng mọi findings trước khi đọc work product.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Individual review diễn ra sau review initiation. Reviewers đánh giá work product và ghi potential anomalies, recommendations và questions trước communication and analysis.

CTFL v4.0.1, section 3.2.2, PDF page 35.

</details>

### Q3 - Select the Review Type

Architect cần qualified peers cùng quyết định giữa hai security designs. Một independent moderator sẽ điều phối. Review type nào phù hợp nhất?

A. Informal review  
B. Walkthrough  
C. Technical review  
D. Inspection

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Technical review do technically qualified reviewers thực hiện, được moderator dẫn dắt, và có thể nhằm tạo consensus hoặc đưa ra decision về technical alternatives. Inspection formal hơn và chủ yếu hướng tới phát hiện tối đa anomalies.

CTFL v4.0.1, section 3.2.4, PDF pages 36-37.

</details>

### Q4 - Identify Role Conflict

Trong một planned inspection, author đồng thời được giao làm scribe. Phát biểu nào đúng?

A. Đây là yêu cầu bắt buộc vì chỉ author mới ghi anomaly chính xác.  
B. Điều này được phép khi author đồng thời là manager.  
C. Điều này không được phép; trong inspection, author không thể làm review leader hoặc scribe.  
D. Điều này không được phép vì author không bao giờ được tham gia bất kỳ review activity nào.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Inspection có roles và rules được xác định rõ; author không được làm review leader hoặc scribe. Author vẫn có thể tham gia theo những cách khác mà process cho phép.

CTFL v4.0.1, sections 3.2.3 and 3.2.4, PDF pages 36-37.

</details>

### Q5 - Improve a Failed Review

Reviewers nhận 150 trang tài liệu vào sáng ngày diễn ra meeting hai giờ. Họ tìm được ít issue và tranh luận theo hướng phòng thủ. Gói cải tiến nào có khả năng giúp review hiệu quả nhất?

A. Review các phần nhỏ hơn; dành đủ thời gian individual preparation; đặt objectives và exit criteria rõ ràng; dùng trained moderator để tạo thảo luận an toàn.  
B. Tăng kích thước document; bỏ individual preparation; để author bảo vệ mọi điểm bị tranh luận.  
C. Chỉ đo success bằng số giờ meeting và yêu cầu managers bác bỏ reviewers khi cần.  
D. Bỏ review objectives và checklists để participants thảo luận bất kỳ topic nào.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Review success factors gồm objectives rõ ràng, work-product size vừa phải, đủ preparation time, participant training và facilitation tạo văn hóa học hỏi thay vì đổ lỗi.

CTFL v4.0.1, section 3.2.5, PDF page 37.

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

Partition có thể mô tả inputs, outputs, configurations, internal values, time hoặc interface parameters; chúng có thể continuous/discrete, ordered/unordered, finite/infinite. Một partition không bắt buộc phải là một continuous range. Ví dụ, “mọi value chia hết cho 10 nhưng không chia hết cho 20” có thể là một discrete partition nếu system xử lý các values đó theo cùng behavior.

**Valid partition** chứa values mà system cần xử lý như valid. **Invalid partition** chứa values cần bị reject, ignore hoặc xử lý theo invalid rule. Team phải thống nhất ý nghĩa này.

### Procedure

1. Xác định data element và toàn bộ relevant domain.
2. Đọc mọi rule làm thay đổi processing.
3. Chia domain tại mỗi điểm expected behavior thay đổi.
4. Kiểm tra partitions không rỗng, mutually exclusive và cover intended domain.
5. Chọn ít nhất một representative từ mọi valid và invalid partition.
6. Tính coverage:

<code>EP coverage = exercised partitions / identified partitions × 100%</code>

Khi thực tế cho phép, hãy exercise từng invalid partition bằng test riêng. Nếu một test chứa nhiều invalid values, một input bị reject sớm có thể che mất behavior của input khác, khiến khó xác định input nào gây rejection.

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

Trước hết, loại các infeasible combinations do business rules tạo ra. Sau đó chọn feasible tests cover được nhiều partitions chưa cover nhất. Constraints có thể khiến minimum Each Choice suite lớn hơn số partition lớn nhất của một input set. Không được chọn impossible combination chỉ để giảm số tests.

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

Nếu một known endpoint của input domain cũng là partition boundary, phải đưa endpoint đó vào. Ví dụ, nếu password length domain bắt đầu tại 0 thì <code>0</code> là boundary, dù validity rule chính là “6 đến 12”. Existing tests hoặc starting conditions chỉ được tính khi chúng thực sự exercise coverage item.

CTFL v4.0.1, section 4.2.2, PDF page 40.

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

Khi giải câu hỏi về event sequence, bắt đầu từ initial state được cho và đi từng event một. Chỉ đánh dấu valid transition khi path thực sự đi qua transition đó. Khi đến terminal state, hãy dừng hoặc áp dụng đúng behavior mà model định nghĩa; những event names đứng sau không tự động tạo coverage. Muốn giảm số tests, hãy tìm một executable path nối được nhiều uncovered transitions trước khi bắt đầu test mới.

CTFL v4.0.1, section 4.2.4, PDF pages 41-42.

> **Mẹo nhớ:** State transition testing quan tâm đến sequence. Current state quyết định event sẽ tạo result nào.

CTFL v4.0.1, section 4.2.4, PDF page 42.

## 4.6 White-Box Testing

### Statement Testing and Coverage

Coverage items là executable statements.

<code>statement coverage = executed statements / total executable statements × 100%</code>

Ở 100%, mọi executable statement đã chạy ít nhất một lần. Mức này không chứng minh từng statement đúng và có thể bỏ data-dependent defects hoặc decision outcomes.

Không được cộng thẳng coverage percentages của các tests riêng lẻ, vì mỗi percentage mô tả một set coverage items. Nếu một test cover 40% statements và test khác cover 65%, combined coverage nằm trong khoảng 65% đến 100%. Vì <code>40 + 65 &gt; 100</code>, ít nhất 5% statements phải overlap.

CTFL v4.0.1, section 4.3.1, PDF page 42.

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

White-box testing đo implementation coverage bằng objective metric và có thể tìm defect khi specifications chưa đầy đủ. Nó cũng có thể được dùng theo cách static, chẳng hạn dry-run code, pseudocode hoặc control-flow model trước khi có executable software.

White-box coverage cho biết black-box tests đã exercise bao nhiêu code và giúp định hướng additional tests. Tuy nhiên, nó không đáng tin cậy để tìm requirement bị bỏ khỏi cả specification lẫn implementation. Coverage là bằng chứng code đã được execute, không phải bằng chứng correctness.

CTFL v4.0.1, section 4.3.3, PDF page 43.

> **Mẹo nhớ:** Statement hỏi “Dòng lệnh đã chạy chưa?”. Branch hỏi “Mỗi hướng rẽ đã đi chưa?”.

CTFL v4.0.1, section 4.3, PDF page 43.

## 4.7 Experience-Based Techniques

### Error Guessing

Tester dự đoán error, defect và failure có thể xảy ra bằng knowledge về application behavior trước đây, developer tendencies, similar systems và defect data. Targets thường liên quan inputs, outputs, logic, calculation, interfaces và data.

Đừng nhầm các test targets này với **root cause** rộng ở organizational level, chẳng hạn thiếu training. Error guessing nhắm tới hậu quả trong software mà một test có thể làm lộ.

CTFL v4.0.1, section 4.4.1, PDF pages 43-44.

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

Password length phải từ 8 đến 20 characters, bao gồm hai endpoints. Giả sử length là non-negative integer và không xét input type khác. Partitions và test set nào đạt 100% equivalence partition coverage?

A. Invalid <code>0–7</code>, valid <code>8–20</code>, invalid <code>21+</code>; test <code>5, 12, 25</code>  
B. Valid <code>0–7</code>, invalid <code>8–20</code>, valid <code>21+</code>; test <code>7, 8, 20</code>  
C. Invalid <code>0–8</code>, valid <code>9–19</code>, invalid <code>20+</code>; test <code>8, 12, 20</code>  
D. Một valid partition <code>8–20</code>; test <code>8, 12, 20</code>

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Rule tạo một valid partition và hai invalid partitions. Một representative từ mỗi partition, như <code>5, 12, 25</code>, đạt 100% equivalence partition coverage trong scope đã nêu.

CTFL v4.0.1, section 4.2.1, PDF pages 39-40.

</details>

### Q2 - 2-Value and 3-Value BVA

Với cùng rule password length 8–20 inclusive, các unique-value sets nào áp dụng đúng 2-value và 3-value BVA?

A. 2-value: <code>8, 20</code>; 3-value: <code>7, 8, 20, 21</code>  
B. 2-value: <code>7, 8, 20, 21</code>; 3-value: <code>7, 8, 9, 19, 20, 21</code>  
C. 2-value: <code>7, 9, 19, 21</code>; 3-value: <code>6, 8, 10, 18, 20, 22</code>  
D. 2-value: <code>8, 9, 19, 20</code>; 3-value: <code>7, 9, 12, 19, 21</code>

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** 2-value BVA dùng mỗi boundary và closest neighbor thuộc adjacent partition. 3-value BVA còn thêm neighbor của mỗi boundary ở phía trong cùng partition.

CTFL v4.0.1, section 4.2.2, PDF page 40.

</details>

### Q3 - BVA Coverage

Với valid quantity 1–100, một 3-value suite chạy <code>0, 1, 2, 99, 100</code> nhưng không chạy <code>101</code>. Coverage là bao nhiêu?

A. 50,0%  
B. 80,0%  
C. 83,3%  
D. 100,0%

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Sáu 3-value boundary coverage items là <code>0, 1, 2, 99, 100, 101</code>. Năm item được exercise, nên coverage là <code>5/6 = 83,3%</code>.

CTFL v4.0.1, section 4.2.2, PDF page 40.

</details>

### Q4 - Decision Table

Refund được auto-approved nếu purchase trong 30 ngày **và** item chưa mở. Mọi trường hợp khác cần manual review. Phát biểu nào mô tả đúng full limited-entry decision table và số tests cần cho 100% rule coverage?

A. Có hai feasible rules; một auto-approval test và một manual-review test luôn đủ.  
B. Có ba feasible rules; cả hai conditions đều irrelevant bất cứ khi nào manual review xảy ra.  
C. Có bốn feasible rules: <code>TT</code>, <code>TF</code>, <code>FT</code>, <code>FF</code>; chỉ <code>TT</code> auto-approve; cần một test cho mỗi rule, tổng cộng bốn tests.  
D. Có tám feasible rules vì mỗi action phải độc lập nhận cả true và false.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Hai Boolean conditions tạo bốn combinations trong full limited-entry table. Chỉ rule <code>within 30 days = true</code> và <code>unopened = true</code> tạo auto-approval; ba rules còn lại cần manual review. Một test cho mỗi feasible rule đạt 100% rule coverage.

CTFL v4.0.1, section 4.2.3, PDF page 41.

</details>

### Q5 - State Coverage

Turnstile có hai states: <code>Locked</code> và <code>Unlocked</code>. <code>coin</code> chuyển Locked→Unlocked; <code>push</code> chuyển Unlocked→Locked. <code>push</code> khi Locked và <code>coin</code> khi Unlocked là invalid. Từ Locked, sequence <code>coin, push</code> cover gì?

A. 50% state coverage và 50% valid-transition coverage  
B. 100% state coverage, 100% valid-transition coverage và 0% invalid-transition coverage  
C. 100% coverage của cả valid và invalid transitions  
D. 0% state coverage vì sequence quay lại starting state

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Sequence visit cả hai states và exercise cả hai valid transitions. Nó không attempt invalid transition nào, nên không có invalid-transition coverage và chưa đạt 100% all-transitions coverage.

CTFL v4.0.1, section 4.2.4, PDF pages 41-42.

</details>

### Q6 - Statement versus Branch

Với premium-discount code ở phần trên, một test có condition = true đạt coverage nào?

A. 100% statement coverage nhưng chưa đạt 100% branch coverage  
B. 100% branch coverage nhưng chưa đạt 100% statement coverage  
C. 100% statement và branch coverage  
D. Không đạt statement coverage lẫn branch coverage

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** True test execute mọi statement nhưng chỉ exercise true outcome của decision. Cần thêm false test để đạt 100% branch coverage. Branch coverage bao hàm statement coverage, không phải ngược lại.

CTFL v4.0.1, sections 4.3.1-4.3.3, PDF pages 42-43.

</details>

### Q7 - Choose a Technique

Requirements có combinations của membership, order value và voucher validity tạo ra các discounts khác nhau. Technique nào nên dẫn đầu, và technique nào có thể bổ sung?

A. Dẫn đầu bằng statement testing; chỉ dùng branch testing cho visual design.  
B. Dẫn đầu bằng decision table testing; bổ sung EP/BVA cho value ranges và exploratory testing hoặc error guessing cho interactions chưa được model.  
C. Dẫn đầu bằng state transition testing vì mọi business rule đều là state.  
D. Dẫn đầu bằng checklist-based testing và loại bỏ mọi black-box techniques.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Decision tables phù hợp với combinations of conditions tạo ra actions khác nhau. EP và BVA cover order-value ranges; experience-based techniques có thể khám phá interactions không được model rõ.

CTFL v4.0.1, sections 4.2.1-4.2.3 and 4.4.2, PDF pages 39-41 and 44.

</details>

### Q8 - ATDD Derivation

Story: “Là registered customer, tôi có thể retry sign-in, nhưng account bị lock sau ba consecutive failures.” Acceptance-test set nào cover essential behavior tốt nhất?

A. Chỉ test successful sign-in và một failed sign-in vì cả hai input classes đã có representative.  
B. Test ba invalid passwords riêng biệt, mỗi test bắt đầu từ account mới, và chỉ verify error text.  
C. Test success khi có zero failures; một và hai consecutive failures vẫn active; failure thứ ba lock account; success reset partial failure count; request bị reject khi locked; authorized reset unlock account.  
D. Test database performance dưới load mà không kiểm tra account state transitions.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Rule phụ thuộc sequence và state changes, nên acceptance tests phải cover failure count, reset sau success, lock transition, behavior khi locked và authorized recovery.

CTFL v4.0.1, sections 4.2.4 and 4.5.3, PDF pages 41-42 and 46.

</details>

### Q9 - Test-Design Diagnosis

Tester chọn 15, 16 và 17 cho valid range 1–100 rồi tuyên bố coverage mạnh vì đã dùng ba values. Sai ở đâu?

A. Không sai; ba values khác nhau luôn bảo đảm full EP và boundary coverage.  
B. Cả ba values thuộc cùng một valid equivalence partition và không value nào nhắm boundary.  
C. Các values đều invalid vì chỉ 1 và 100 được phép.  
D. Vấn đề duy nhất là values được execute theo thứ tự tăng dần.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Số lượng test values không tự quyết định coverage. Ba values chỉ exercise một valid partition và không nhắm boundary nào. Cần representatives từ mọi relevant partition và boundary values theo criteria đã chọn.

CTFL v4.0.1, sections 4.2.1 and 4.2.2, PDF pages 39-40.

</details>

### Q10 - Exploratory Charter

Đâu là charter tập trung tốt nhất cho exploratory payment session kéo dài 45 phút?

A. “Test payments thật kỹ cho đến khi tìm được mọi defect có thể có.”  
B. “Dành 45 phút xác nhận happy path chạy một lần trên một browser.”  
C. “Khám phá bất kỳ điều gì thú vị trong application và báo xem nó có vẻ tốt không.”  
D. “Trong 45 phút, khám phá khả năng card payment phục hồi sau duplicate submission, network interruption, timeout và browser refresh bằng state modeling và error guessing; kiểm tra rằng nhiều nhất chỉ tạo một charge và một order.”

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**D.** Charter hữu ích xác định focused scope, objective hoặc risk, relevant techniques, time box và observable mission, nhưng vẫn cho tester tự do thích nghi trong execution.

CTFL v4.0.1, section 4.4.2, PDF page 44.

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

Luôn giữ rõ unit và scope. Nếu <code>E</code> estimate cho một test case nhưng có bốn comparable cases phải execute, hãy tính estimate cho mỗi case trước rồi nhân bốn. Đừng nhầm per-case estimate với total estimate.

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

Trong câu hỏi định lượng, có thể biến đổi cùng một quan hệ: <code>impact = risk level / likelihood</code> và <code>likelihood = risk level / impact</code>. Khi tính toán với percentage, giữ ở dạng decimal; ví dụ 50% là <code>0,5</code>.

CTFL v4.0.1, section 5.2.1, PDF page 52.

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

Test report tóm tắt testing; nó không thay thế individual defect reports. Detailed reproduction steps, data, logs và defect-specific evidence phải nằm trong defect record, và report có thể reference record đó.

Chọn communication channel dựa trên urgency, audience, formality, geographical distance và time-zone constraints. Face-to-face communication không tự động là lựa chọn tốt nhất cho distributed audience.

CTFL v4.0.1, sections 5.3.2-5.3.3, PDF page 55.

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

Historical development:test effort là 5:2. Development effort mới là 750 person-days. Estimate test effort.

A. 150 person-days  
B. 300 person-days  
C. 750 person-days  
D. 1.875 person-days

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Dùng historical ratio: <code>750 × 2/5 = 300 person-days</code>, với assumption rằng project mới comparable và ratio cover cùng loại work.

CTFL v4.0.1, section 5.1.4, PDF pages 49-50.

</details>

### Q2 - Extrapolation

Test effort trong ba similar iterations gần nhất là 32, 40 và 36 person-days. Dùng simple average, estimate iteration tiếp theo.

A. 32 person-days  
B. 36 person-days  
C. 40 person-days  
D. 108 person-days

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Simple average là <code>(32 + 40 + 36) / 3 = 36 person-days</code>. Cần xem lại estimate nếu scope, team hoặc context không comparable.

CTFL v4.0.1, section 5.1.4, PDF pages 49-50.

</details>

### Q3 - Three-Point Estimate

Với <code>a=8</code>, <code>m=14</code>, <code>b=26</code> hours, hãy tính E và SD.

A. <code>E = 14</code>, <code>SD = 6</code> hours  
B. <code>E = 15</code>, <code>SD = 3</code> hours  
C. <code>E = 16</code>, <code>SD = 9</code> hours  
D. <code>E = 48</code>, <code>SD = 18</code> hours

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** <code>E = (a + 4m + b) / 6 = (8 + 4×14 + 26) / 6 = 15</code> hours; <code>SD = (b − a) / 6 = (26 − 8) / 6 = 3</code> hours.

CTFL v4.0.1, section 5.1.4, PDF pages 49-50.

</details>

### Q4 - Wideband Delphi

Một senior engineer nói “5 days” trước khi bất kỳ ai khác lên tiếng; group nhanh chóng đồng ý. Process property nào đã mất?

A. Initial independent estimation, giúp giảm anchoring và dominance  
B. Yêu cầu chỉ được dùng historical ratio-based estimation  
C. Rule bắt buộc test manager estimate một mình  
D. Yêu cầu phải execute tests trước khi estimating

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Wideband Delphi bắt đầu bằng independent estimates trước discussion. Điều này giảm anchoring bởi người có ảnh hưởng; sau đó group thảo luận assumptions và re-estimate độc lập.

CTFL v4.0.1, section 5.1.4, PDF pages 49-50.

</details>

### Q5 - Prioritization with Dependency

T1 có low priority nhưng tạo data mà high-priority T2 cần. T3 có high priority và independent. Thứ tự nào vừa chạy independent high-priority test trước, vừa thỏa dependency?

A. T2, T3, T1  
B. T1, T2, T3  
C. T3, T1, T2  
D. T3, T2, T1

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** T3 có thể chạy sớm vì high priority và independent. T1 phải đứng trước T2 vì dependency quan trọng hơn nominal priority của T2. Thứ tự hợp lý là <code>T3, T1, T2</code>.

CTFL v4.0.1, section 5.1.5, PDF page 50.

</details>

### Q6 - Additional Coverage

T1 covers A,B,C; T2 covers B,C,D; T3 covers D,E; T4 covers A,E,F. Nếu T1 chạy trước, test nào maximize additional coverage tiếp theo?

A. Chỉ T2 vì nó share nhiều items nhất với T1  
B. T3 hoặc T4 vì mỗi test thêm hai previously uncovered items  
C. Chỉ T4 vì alphabetical order luôn phá mọi prioritization tie  
D. Không test nào vì T1 đã đạt 100% coverage

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Sau T1, A, B và C đã cover. T3 thêm D và E; T4 thêm E và F. Mỗi test thêm hai coverage items mới, nên test nào cũng có thể được chọn. Risk, cost, priority hoặc dependencies có thể phá tie.

CTFL v4.0.1, section 5.1.5, PDF page 50.

</details>

### Q7 - Product or Project Risk

Lựa chọn nào phân loại đúng: (a) performance tester duy nhất nghỉ việc; (b) checkout làm lộ card data; (c) test environment đến trễ?

A. (a) Product; (b) project; (c) product  
B. (a) Project; (b) product; (c) project  
C. (a) Product; (b) product; (c) project  
D. (a) Project; (b) project; (c) product

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Mất staff và environment đến trễ đe dọa project execution, nên là project risks. Card data bị lộ là quality problem trong product, nên là product risk.

CTFL v4.0.1, sections 5.2.1 and 5.2.2, PDF page 52.

</details>

### Q8 - Risk-Based Response

Risk tạo duplicate payment có high impact và medium likelihood. Testing response nào phù hợp nhất?

A. Hoãn cho đến khi mọi low-risk cosmetic tests pass vì likelihood không high.  
B. Chạy một happy-path test rồi đóng risk nếu test pass.  
C. Prioritize sớm; giao skilled testers; dùng strong review cùng state/concurrency/interruption coverage trong realistic integration environment; automate regression khi hữu ích; monitor residual risk.  
D. Transfer risk cho users và bỏ testing vì risk acceptance là business decision.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Product risk analysis ảnh hưởng test scope, levels, techniques, coverage, effort, priority và expertise. Payment risk có high impact cần early, thorough testing và monitoring residual risk.

CTFL v4.0.1, section 5.2.4, PDF page 53.

</details>

### Q9 - Progress or Completion Report?

Weekly document liệt kê execution status, blockers, changed risks và plan cho tuần sau. Đây là report nào?

A. Test progress report  
B. Test completion report  
C. Defect report  
D. Test charter

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Test progress report hỗ trợ ongoing control bằng cách mô tả current status, impediments, risks và planned work. Completion report tóm tắt testing đã hoàn thành so với objectives và exit criteria.

CTFL v4.0.1, section 5.3.2, PDF pages 54-55.

</details>

### Q10 - Evaluate a Defect Report

Report viết: “App crashed. High priority. Please fix.” Lựa chọn nào xác định đúng nhất thông tin cần thêm để report hữu ích?

A. Chỉ preferred solution của tester và tên developer  
B. Exact build và environment; preconditions và data; reproducible steps; expected và actual results; evidence; rationale cho severity và priority; reporter/date; references  
C. Chỉ priority cao hơn và title ngắn hơn  
D. Toàn bộ application source code nhưng không có reproduction steps

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Defect report hữu ích cung cấp đủ context và evidence để reproduce, analyze, resolve và confirm defect, đồng thời phân biệt impact-based severity với business-oriented priority.

CTFL v4.0.1, section 5.5, PDF pages 56-57.

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

A. Non-functional testing tool hỗ trợ performance testing  
B. Static analysis tool chỉ hỗ trợ code review  
C. Test management tool chỉ hỗ trợ estimation  
D. Collaboration tool chỉ hỗ trợ viết acceptance criteria

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**A.** Simulate nhiều users và đo latency hỗ trợ dynamic, non-functional performance testing, dù tool cũng có thể integrate với execution hoặc reporting systems.

CTFL v4.0.1, section 6.1, PDF page 59.

</details>

### Q2 - Benefit or Risk?

Suite chạy nhất quán qua đêm và giải phóng tester cho exploratory work, nhưng UI changes buộc team sửa scripts thường xuyên. Đánh giá nào đúng?

A. Consistency và freed tester time là risks; script repair là benefit.  
B. Cả ba outcomes đều là guaranteed benefits của automation.  
C. Consistent repeated execution và freed tester time là benefits; recurring script maintenance là risk hoặc cost.  
D. Không outcome nào liên quan test automation.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Automation có thể tạo repeatability và tiết kiệm manual effort. Maintenance effort, nhất là với unstable interfaces, là risk đã biết và phải được tính trong adoption decision.

CTFL v4.0.1, section 6.2, PDF pages 59-60.

</details>

### Q3 - Tool Decision

Team muốn automate việc đánh giá visual prototype chỉ dùng một lần và đang thay đổi nhanh. Team nên cân nhắc gì?

A. Automate toàn bộ vì mọi test activity đều hưởng lợi như nhau từ automation.  
B. Ưu tiên manual exploratory/usability testing nếu nó có value tốt hơn sau khi so automation build và maintenance cost với expected repetition và decision value.  
C. Hủy mọi testing vì product thay đổi nhanh không thể được đánh giá.  
D. Chọn tool chỉ vì có nhiều features nhất, không xét objectives hoặc compatibility.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Tool support phải được chọn theo activity và context. Với one-time, rapidly changing visual prototype, automation cost có thể lớn hơn benefit; human exploratory và usability assessment có thể tạo value cao hơn.

CTFL v4.0.1, sections 6.1 and 6.2, PDF pages 59-60.

</details>

### Q4 - Overreliance

Coverage report là 100%, nhưng users vẫn không hoàn tất checkout. Giải thích nào đúng?

A. 100% coverage bảo đảm defect-free software, nên users chắc chắn nhầm.  
B. Coverage chứng minh selected items đã được exercise, không chứng minh behavior đúng hoặc hữu ích; missing requirements, weak oracles và usability problems vẫn có thể còn.  
C. Bất kỳ coverage metric nào trên 80% đều loại bỏ nhu cầu validation.  
D. Khả năng duy nhất là coverage tool tính sai percentage.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Coverage result mô tả coverage items và criterion đã được exercise. Nó không chứng minh correctness, suitability hoặc absence of defects. Vẫn cần complementary techniques và human validation.

CTFL v4.0.1, sections 1.3 and 6.2, PDF pages 18 and 59-60.

</details>

### Q5 - Safe Adoption

Gói controls nào mạnh nhất trước khi áp dụng test-execution tool mới?

A. Mua tool có feature list dài nhất, automate mọi thứ ngay và chỉ đo số scripts.  
B. Để một tester nhiệt tình deploy mà không có pilot, training, maintenance owner hoặc success criteria.  
C. Thay toàn bộ manual testing ngay khi automated test đầu tiên pass.  
D. Xác định objectives; đánh giá technical và regulatory fit; pilot representative tests; estimate introduction và maintenance effort; train users; gán ownership; monitor outcomes.

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**D.** Successful tool introduction phụ thuộc realistic objectives và expectations, suitable pilot, organizational và technical fit, training, ownership, maintenance planning và việc đo benefits lẫn risks.

CTFL v4.0.1, section 6.2, PDF pages 59-60.

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

Chọn **MỘT** đáp án.

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

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Với mỗi boundary, 2-value BVA dùng boundary value và closest neighbor thuộc adjacent partition. Vì vậy cần 49/50 ở lower boundary và 1.000/1.001 ở upper boundary.

C là test set của 3-value BVA vì có boundary và cả hai neighbors. A không kiểm tra phía invalid sát boundary. D không tập trung vào boundary values.

CTFL v4.0.1, section 4.2.2, PDF page 40.

</details>

### Q3

Ngoài amount, decision table nên có thêm conditions nào?

A. Registered status và adult status  
B. Chỉ code statement count  
C. Chỉ tester seniority  
D. Chỉ browser color theme

Chọn **MỘT** đáp án.

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

Chọn **MỘT** đáp án.

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

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Test objective là interface và interaction giữa system under test với external service, nên test level phù hợp nhất là system integration testing.

Static review và các test levels khác vẫn có thể bổ sung giá trị, nhưng chúng không thay đổi focus chính của câu hỏi.

CTFL v4.0.1, section 2.2.1, PDF page 29.

</details>

### Q6

Quantitative risk score của duplicate agreements là bao nhiêu?

A. 2  
B. 8  
C. 15  
D. 35

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Theo cách tính định lượng đơn giản: <code>risk level = likelihood × impact = 3 × 5 = 15</code>.

Con số 15 giúp so sánh và ưu tiên risk, nhưng cách xử lý vẫn cần judgment và thresholds đã được các bên thống nhất.

CTFL v4.0.1, section 5.2.1, PDF page 52.

</details>

### Q7

Một defect đã tạo duplicate agreements. Sau khi developer sửa, tester chạy lại đúng timeout sequence từng gây failure. Đây là hoạt động gì?

A. Debugging  
B. Confirmation testing  
C. Chỉ regression testing  
D. Chỉ QA

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B. Confirmation testing** trực tiếp kiểm tra defect cụ thể đã được sửa thành công hay chưa.

Các tests khác cho payment, order và retry sẽ phục vụ regression testing. Debugging là hoạt động tìm và loại bỏ nguyên nhân defect, thường do developer thực hiện. QA không phải tên của lần chạy lại này.

CTFL v4.0.1, section 2.2.3, PDF page 30.

</details>

### Q8

Đâu là early static activity tốt nhất?

A. Chờ đến khi có thể chạy system  
B. Business, developers và testers cùng review eligibility criteria và timeout-state model  
C. Chạy transactions trên production  
D. Xóa acceptance criteria

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Review sớm có thể phát hiện ambiguity, omission và business-rule contradiction trước khi code được viết, nhờ đó feedback đến sớm và chi phí sửa thường thấp hơn.

A trì hoãn feedback. C là dynamic production activity với risk không cần thiết. D làm mất test basis.

CTFL v4.0.1, section 3.1.2, PDF page 33.

</details>

### Q9

Defect title nào cung cấp thông tin tốt nhất?

A. BNPL broken  
B. Error happened  
C. Third consecutive credit timeout creates two BNPL agreements in build 5.2.0  
D. Please fix urgently

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Title này nêu rõ trigger, observed failure và build. Người đọc có thể phân loại và điều tra nhanh hơn.

Phần body vẫn phải có environment, steps, expected result, actual result, evidence, severity và priority. A, B và D quá mơ hồ.

CTFL v4.0.1, section 5.5, PDF pages 56-57.

</details>

### Q10

Ba iterations gần nhất lần lượt dùng 20, 24 và 22 test days. Simple extrapolated estimate cho iteration tiếp theo có điều kiện tương đương là bao nhiêu?

A. 20  
B. 22  
C. 24  
D. 66

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B.** Average là <code>(20 + 24 + 22) / 3 = 22</code> test days.

Estimate này chỉ hợp lý khi work và team conditions của iteration mới thực sự comparable với dữ liệu lịch sử.

CTFL v4.0.1, section 5.1.4, PDF pages 49-50.

</details>

### Q11

Automation claim nào không an toàn?

A. Repeated API regression có thể cho feedback nhanh hơn  
B. Tool maintenance cần effort  
C. 100% automated execution chứng minh feature không có defect  
D. Pipeline có thể chạy tests nhất quán

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**C.** Testing cho thấy sự hiện diện của defects, không chứng minh defects hoàn toàn không tồn tại. Automated execution và coverage cao cũng không bảo đảm requirements đầy đủ, assertions đúng hoặc mọi relevant condition đã được test.

A và D là benefits có thể đạt được; B là một risk/cost thực tế cần tính đến.

CTFL v4.0.1, sections 1.3 and 6.2, PDF pages 18 and 59-60.

</details>

### Q12

Report nào nên chứa đánh giá cuối cùng về exit criteria, unresolved risks, defects chưa sửa và lessons learned?

A. Defect report  
B. Test completion report  
C. Review checklist  
D. Test data file

Chọn **MỘT** đáp án.

<details><summary>Đáp án</summary>

**B. Test completion report** tóm tắt và đánh giá test scope đã hoàn thành, deviations, unresolved issues, residual risks và bài học.

Test progress report phục vụ control khi testing còn diễn ra; các lựa chọn A, C và D có scope hẹp hơn.

CTFL v4.0.1, section 5.3.2, PDF page 55.

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
