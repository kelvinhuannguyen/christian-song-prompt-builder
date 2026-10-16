# Christian Song Prompt Builder

**Từ lời bài hát Cơ Đốc đến bộ prompt Veo 3 cho một MV hoàn chỉnh**: có câu chuyện, đúng Kinh Thánh và đồng nhất nhân vật xuyên suốt mọi cảnh.

*Turns Christian and worship song lyrics into a director's treatment and continuity-locked, cinematic Veo 3 / Veo 3.1 prompts for YouTube music videos aimed at American viewers.*

Phiên bản hiện tại: **v5.0.0**. Xem [CHANGELOG.md](CHANGELOG.md).

---

## Skill làm được gì

Bạn gửi lời bài hát và thời lượng. Skill làm việc như một đạo diễn phim đức tin, đồng thời là người am hiểu Kinh Thánh và người viết prompt Veo:

1. **Phân tích bài hát.** Rút ra thông điệp cốt lõi, câu Kinh Thánh neo, hành trình cảm xúc, động từ chính, câu "đắt" nhất, bản đồ cấu trúc và số cảnh (thời lượng chia 8 giây).
2. **Đề xuất 3 hướng câu chuyện** khác nhau, chấm điểm sức chạm, khả năng viral với khán giả Mỹ và độ khó giữ đồng nhất. Sau đó **dừng lại chờ bạn chọn**.
3. **Lên kế hoạch đạo diễn.** Viết bộ khóa đồng nhất (style, bối cảnh, motif, kịch bản ánh sáng) và timeline từng cảnh.
4. **Dựng dàn nhân vật.** Có bảng tên ảnh tham chiếu, prompt tạo ảnh nhận diện, ảnh từng look và ảnh từng độ tuổi.
5. **Viết prompt cho từng cảnh 8 giây**, theo cấu trúc 9 phần cố định và gửi theo lô 12 cảnh.
6. **Tự kiểm tra trước khi gửi**, rồi kèm ghi chú dựng phim: cắt nối, chữ chèn trên hình, bản Shorts.

Người dùng trao đổi bằng **tiếng Việt**. Mọi prompt cho Veo đều viết bằng **tiếng Anh**.

## Nguyên tắc cốt lõi

| Nguyên tắc | Ý nghĩa |
|---|---|
| **Trung tín** | Lấy Chúa Giê-xu làm trung tâm và đúng Kinh Thánh. Mặc định thể hiện Chúa Giê-xu gián tiếp. Đức Chúa Cha không bao giờ mang hình người. Không có hình ảnh của tôn giáo khác. |
| **Chân thật** | Cảm xúc có lý do, kiềm chế thay vì bi lụy. Không bịa phép lạ, không có "thần học thịnh vượng". |
| **Cuốn hút** | Hook trong 2 giây, một khung hình đáng chụp màn hình, cảnh kết lặp lại cảnh mở. |
| **Liên tục** | Khóa và anchor được dán nguyên văn, gọi nhân vật đúng tên ảnh, giữ hướng màn hình và mạch ánh sáng. |
| **Khán giả Mỹ** | "Thị trường" là người xem, không phải nơi quay. Bối cảnh có thể là thế giới Kinh Thánh, nước Mỹ hay thế giới vô thời gian. |
| **Nhân vật = giọng ca** | Giọng nữ thì nhân vật chính là nữ (mặc định), giọng nam thì nhân vật nam, song ca có hai nhân vật chính. |

## Quy tắc tên ảnh tham chiếu (Veo / Flow)

Trong công cụ, **mỗi ảnh tham chiếu được lưu dưới một tên riêng**. Ghi đúng tên đó trong prompt thì ảnh đó sẽ được gắn vào.

| Tên ảnh | Là gì |
|---|---|
| `CALLIE` | Tên gốc, trỏ tới bộ ảnh nhận diện, mặc look dùng nhiều nhất |
| `CALLIE-B` | Look khác, dựng từ ảnh gốc (cùng khuôn mặt, khác trang phục) |
| `CALLIE-CHILD`, `CALLIE-ELDER` | Cùng người ở độ tuổi khác |
| `LOC-PORCH` | Ảnh bối cảnh. Tiền tố `LOC-` tránh bị gắn nhầm khi prompt có chữ "porch" |

- Trong một prompt, mỗi nhân vật chỉ dùng **một** tên, kể cả dạng sở hữu (`CALLIE-B's hands`).
- Mỗi cảnh dùng tối đa **3 tên ảnh**. Đây là giới hạn của "Ingredients to Video" trong Flow.
- Không đặt tên ảnh trùng với từ thông thường như GRACE, HOPE hay JOY.
- Nên chạy thử một cảnh có `CALLIE-B` trước. Nếu công cụ gắn cả ảnh `CALLIE` gốc, hãy đặt hậu tố cho mọi ảnh (`CALLIE-A`, `CALLIE-B`).

## Cấu trúc repo

```
.
├── .claude-plugin/
│   ├── plugin.json            # Khai báo plugin cho Claude
│   └── marketplace.json       # Để cài qua Claude Code (/plugin marketplace add)
├── skills/
│   └── instructions/
│       ├── SKILL.md           # Skill đầy đủ (bản chính)
│       └── examples/
│           └── through-it-all-porch-light.md   # Ví dụ hoàn chỉnh 34 cảnh
├── gpt/
│   └── instructions.txt       # Bản rút gọn cho ChatGPT GPT (< 8.000 ký tự)
├── CHANGELOG.md
└── README.md
```

## Cài đặt

### 1. Ứng dụng Claude (plugin)

Tải file `christian-song-prompt-builder.plugin` ở mục **Releases** của repo này. Gửi file đó vào một cuộc trò chuyện trong ứng dụng Claude, rồi bấm nút cài đặt trên thẻ xem trước.

### 2. Claude Code

```
/plugin marketplace add kelvinhuannguyen/christian-song-prompt-builder
/plugin install christian-song-prompt-builder@kelvinhuannguyen
```

Nếu repo để chế độ riêng tư, máy cài phải đăng nhập được GitHub, ví dụ bằng `gh auth login`.

### 3. ChatGPT (Custom GPT)

1. Vào **GPT Builder → Configure**.
2. Dán toàn bộ nội dung `gpt/instructions.txt` vào ô **Instructions**.
3. Tải `skills/instructions/SKILL.md` lên mục **Knowledge**. Bản rút gọn trỏ tới file này để lấy chi tiết.

## Cách dùng

1. Gửi **lời bài hát đầy đủ** và **thời lượng** (ví dụ 4:30).
   - Có thể thêm: giọng ca, khung hình (16:9 hoặc 9:16), bối cảnh, truyền thống (Tin Lành, Công Giáo hoặc chung), mốc thời gian lời hát.
   - Nếu không nêu, skill tự dùng mặc định và báo lại trong một dòng.
2. Đọc phân tích và **chọn một trong 3 concept**, hoặc yêu cầu ghép hay chỉnh.
3. Nhận kế hoạch đạo diễn, bảng tên ảnh và prompt tạo ảnh tham chiếu.
4. Tạo ảnh nhận diện trước, rồi dựng ảnh look và ảnh độ tuổi từ chính ảnh đó. Lưu mỗi ảnh **đúng tên** trong bảng.
5. Nhận prompt theo lô 12 cảnh. Gõ **"tiếp"** để nhận lô tiếp theo.
6. Cần sửa một cảnh thì yêu cầu sửa riêng cảnh đó. Nếu đổi khóa hay anchor, skill sẽ liệt kê mọi cảnh bị ảnh hưởng và viết lại các cảnh đó.

## Ví dụ

[`skills/instructions/examples/through-it-all-porch-light.md`](skills/instructions/examples/through-it-all-porch-light.md) là hồ sơ sản xuất hoàn chỉnh cho bài **"Through It All"** (giọng nữ, 4:30, 34 cảnh), theo concept **"Porch Light"**: dụ ngôn người con hoang đàng kể lại ở Tennessee và Nashville.

Hồ sơ gồm bảng tên ảnh, các khóa, timeline, prompt tạo ảnh, đủ 34 prompt, ghi chú dựng phim và chữ chèn trên hình.
