# Lịch sử phiên bản

Mỗi phiên bản có một tag Git riêng (`v1.0.0` … `v5.0.0`), nên có thể so sánh từng bước ngay trên GitHub.

## v5.0.0 — Một ảnh, một tên

- Tên gốc (ví dụ `CALLIE`) luôn trỏ tới bộ ảnh nhận diện (identity sheet). Bộ ảnh này mặc look dùng nhiều nhất.
- Mỗi ảnh khác của cùng nhân vật có hậu tố gạch nối: `CALLIE-B` (look khác), `CALLIE-CHILD`, `CALLIE-ELDER` (tuổi khác).
- Ảnh bối cảnh dùng tiền tố `LOC-`, đạo cụ dùng `PROP-`, để công cụ không gắn nhầm khi gặp từ thông thường.
- Trong một prompt, mỗi nhân vật chỉ được gọi bằng đúng một tên. Không bao giờ viết lẫn `CALLIE` và `CALLIE-B`.
- Cấm đặt tên ảnh trùng với từ thông thường (GRACE, HOPE, JOY…).
- Thêm bảng đăng ký tên ảnh. Prompt chỉ được dùng những tên có trong bảng.
- Anchor bắt đầu bằng đúng tên ảnh, nên dán anchor là gọi đúng ảnh.
- Thêm ví dụ hoàn chỉnh 34 cảnh: "Through It All", concept "Porch Light".
- Đóng gói thành plugin cho Claude, kèm bản Instructions cho ChatGPT GPT (dưới 8.000 ký tự).

## v4.0.0 — Khán giả Mỹ, nhân vật chính khớp giọng ca, hệ thống dàn nhân vật

- "Thị trường Mỹ" nghĩa là khán giả xem, không phải nơi quay. Bối cảnh có thể là thế giới Kinh Thánh, nước Mỹ hiện đại, thế giới vô thời gian…
- Nhân vật chính khớp với giọng ca: giọng nữ thì nhân vật nữ, giọng nam thì nhân vật nam, song ca có hai nhân vật chính, hợp xướng kể chuyện cộng đồng.
- Thêm danh sách 15 câu chuyện Kinh Thánh có phụ nữ là trung tâm. Cấm đổi giới tính nhân vật và cấm lặp lại ngộ nhận phổ biến.
- Chia dàn nhân vật thành 4 tầng: chính, phụ, xuất hiện lặp lại (dùng câu mô tả cố định), nền.
- Hệ thống look (đổi trang phục) có dấu hiệu nhận diện cố định. Mỗi độ tuổi có một tag riêng. Tối đa 3 ảnh tham chiếu mỗi cảnh.

## v3.0.0 — Thị trường Mỹ và gọi tên nhân vật trong prompt

- Mặc định bối cảnh theo thị trường Mỹ.
- Tên nhân vật (tag) được ghi trong mọi prompt để công cụ gắn đúng ảnh tham chiếu.
- Tách hai loại mô tả: anchor ngắn (dáng và trang phục) khi đã có ảnh tham chiếu, lock đầy đủ khi chỉ dùng chữ.

## v2.0.0 — Viết lại toàn diện

- Bộ khóa đồng nhất (Continuity Bible): style, nhân vật, bối cảnh, motif, kịch bản ánh sáng. Tất cả được dán nguyên văn.
- Mỗi prompt có 9 phần cố định. Âm thanh luôn ghi "no dialogue, no singing, no music". Thêm dòng Avoid chặn chữ trên hình.
- Bộ máy kể chuyện gắn với cấu trúc bài hát: hook trong 2 giây, cao trào, cảnh kết lặp lại cảnh mở.
- Bảng chuyển khái niệm trừu tượng thành hình ảnh quay được.
- Phần trung tín Kinh Thánh: cách thể hiện Chúa Giê-xu, Đức Chúa Cha, Đức Thánh Linh; mặc định trung lập giữa Tin Lành và Công Giáo.
- Bước tự kiểm tra trước khi gửi. Chia lô 12 cảnh cho bài dài.
- Bản Instructions rút gọn cho GPT, dưới 8.000 ký tự.

## v1.0.0 — Bản gốc

- Quy trình 10 bước: phân tích bài hát, 3 concept, chờ người dùng chọn, chia cảnh 8 giây, nhân vật, prompt ảnh nhân vật, prompt Veo 3.
