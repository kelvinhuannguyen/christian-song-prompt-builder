# Lịch sử phiên bản

Mỗi phiên bản là một commit riêng, nên có thể xem hoặc so sánh từng bước ngay trên GitHub:
[v1](https://github.com/kelvinhuannguyen/christian-song-prompt-builder/commit/93c8d6ac6ff3a846fd88cc53c5f10cdc0a3cd0d0) ·
[v2](https://github.com/kelvinhuannguyen/christian-song-prompt-builder/commit/0fb57f30e4209898a8223cb5f017fc6a1ca44e93) ·
[v3](https://github.com/kelvinhuannguyen/christian-song-prompt-builder/commit/e27635deeed7b735f0eebb32c30a8ee4cd65cc28) ·
[v4](https://github.com/kelvinhuannguyen/christian-song-prompt-builder/commit/8049ef0c0757b44617dabcdc064943646439306b) ·
[v5](https://github.com/kelvinhuannguyen/christian-song-prompt-builder/commit/3c1cdae1bb917d0e5ec271d5149ac468265b735a) ·
[so sánh v1 → v5](https://github.com/kelvinhuannguyen/christian-song-prompt-builder/compare/93c8d6ac6ff3a846fd88cc53c5f10cdc0a3cd0d0...3c1cdae1bb917d0e5ec271d5149ac468265b735a)

## v5.2.0 — Hướng dẫn hậu kỳ CapCut và hồ sơ sản xuất Markdown

- Bước 8 mới: hướng dẫn hậu kỳ, dựa trên chính kịch bản của phim. Chi tiết nằm trong `references/post-production.md`.
- Nhận xét timeline khi người dùng gửi ảnh chụp CapCut: font chữ kiểu meme, tốc độ dưới 0.6X chưa bật optical flow, hiệu ứng làm nét hay "8K" phủ cả phim, một lớp màu cho mọi cảnh, chuyển cảnh lòe loẹt, frame rate khác 24.
- Chỉnh màu 2 tầng: một lớp FILM BASE cho toàn phim, rồi màu theo nhóm cảnh. Mỗi câu khóa ánh sáng được gán vào một trong 6 họ màu (đêm lạnh, ngày lạnh, ký ức, bi kịch tối, đêm ấm, nắng vàng), kèm số cảnh và thông số CapCut. Giữ màu da và màu trang phục đã khóa HEX.
- Chuyển cảnh: cắt thẳng là chính, chỉ hòa hình ở các điểm khớp hình đã lên kế hoạch, một hiệu ứng ánh sáng duy nhất ở cao trào.
- Chữ: font có chân (Cormorant Garamond; Cinzel cho phim Kinh Thánh) kèm dòng phụ không chân, màu trắng ngà `#F5EFE6`, điểm nhấn vàng đồng `#C9A45C`, không viền. Mẫu tiêu đề mở đầu, kiểu lời bài hát và câu Kinh Thánh.
- Câu Kinh Thánh cho đoạn kết: tối đa 2-3 câu mỗi phim, trích đúng nguyên văn KJV. Kèm ngân hàng hơn 20 câu KJV đã kiểm chứng theo chủ đề, và trình tự màn kết (câu chính, lời đề tặng, câu chúc phước).
- Âm thanh khoảng -14 LUFS, tiếng môi trường khoảng -28 dB, xuất 24 fps, gợi ý thumbnail và tiêu đề YouTube.
- Hồ sơ sản xuất Markdown: sau lô cuối, đề nghị xuất toàn bộ hồ sơ thành một file .md và tự kiểm tra khóa, anchor nguyên văn. Khi đổi nhân vật, cập nhật đồng bộ cả file.
- Ví dụ mới: gói hậu kỳ cho "Jesus, I Need You" ("The Prayer She Still Remembers").

## v5.1.0 — Khóa màu HEX và khóa âm (negative lock) theo cảnh

Áp dụng các kỹ thuật trong bộ slide "Làm chủ Negative Prompt" cho Veo, Pika và Runway.

- COLOR LOCK: 1-2 màu trang phục chủ đạo của mỗi look được ghi kèm mã HEX, ví dụ `mustard-yellow (#D4A017) floral sundress`. Mã giống hệt nhau trong anchor, prompt ảnh tham chiếu và mọi cảnh. Không gắn HEX cho da và tóc.
- Bốn khóa âm viết một lần rồi dán nguyên văn: TEXT (mọi cảnh), GEOMETRY (tay chân, ngón tay, khớp), FACE (mặt, mắt, môi), MATERIAL (đổi màu, chất liệu chảy, phụ kiện tự mọc).
- Không nhồi danh sách dài. Mỗi cảnh chỉ dùng TEXT cộng tối đa 2 khóa, chọn theo loại cảnh: cảnh dựa vào gương mặt, cảnh dựa vào cơ thể, hay cảnh không có người. Mặt được giấu có chủ ý thì không bao giờ dùng FACE.
- Danh sách cấm chỉ ghi danh từ, không viết "no ..." (theo hướng dẫn prompt của Veo). Không cấm "lighting inconsistencies" vì kịch bản ánh sáng đổi sáng có chủ ý.
- Tùy chọn mới: tách negative ra ô Negative prompt riêng cho Veo API, Vertex AI và các công cụ có ô này.
- Mỗi prompt tạo ít nhất 4 bản rồi chọn bản tốt nhất. Kiểm theo thứ tự: tay chân, mặt, màu trang phục, chữ lọt vào hình.
- Mục mới "Sửa clip lỗi": đối chiếu triệu chứng với khóa cần thêm, rồi đơn giản hóa hành động.
- Cập nhật ví dụ "Porch Light": thêm HEX cho anchor, thêm khóa âm cho đủ 34 cảnh và bảng chọn khóa theo cảnh.

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
