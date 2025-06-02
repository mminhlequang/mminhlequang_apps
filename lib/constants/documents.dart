Map<String, Map<String, String>> documents = {
  "genqr-website": {
    "id": "genqr-website",
    "title": "GenQR Website SRS Document",
    "content": """

## 1. Giới thiệu

### 1.1 Mục tiêu

Phát triển một nền tảng web cho phép người dùng tạo, quản lý và phân tích mã QR, phục vụ các nhu cầu đa dạng như thanh toán, chia sẻ thông tin, và quảng bá sản phẩm/dịch vụ.

### 1.2 Phạm vi

Hệ thống bao gồm:

* Trang marketing và giới thiệu dịch vụ.
* Bảng điều khiển (dashboard) cho người dùng đã đăng nhập.
* Chức năng tạo và quản lý mã QR.
* Phân tích lưu lượng truy cập qua mã QR.
* Quản lý gói dịch vụ và thanh toán.
* Hệ thống hỗ trợ khách hàng.

## 2. Yêu cầu chức năng

### 2.1 Trang marketing và giới thiệu

* Hiển thị thông tin về dịch vụ, lợi ích, và hướng dẫn sử dụng.
* Cung cấp các liên kết đến trang đăng ký và đăng nhập.

### 2.2 Đăng ký và đăng nhập

* Người dùng có thể đăng ký tài khoản mới hoặc đăng nhập vào tài khoản hiện có.
* Hỗ trợ xác thực hai yếu tố (2FA) để tăng cường bảo mật.

### 2.3 Bảng điều khiển người dùng

* Hiển thị danh sách mã QR đã tạo.
* Cung cấp chức năng tạo mã QR mới.
* Cho phép chỉnh sửa hoặc xóa mã QR.
* Hiển thị thống kê lưu lượng truy cập cho từng mã QR.([GeeksforGeeks][1], [NestJS Documentation][2])

### 2.4 Tạo mã QR

* Hỗ trợ tạo mã QR cho các loại nội dung:

  * Liên kết URL.
  * Thông tin liên hệ (vCard).
  * Địa điểm trên bản đồ.
  * Thông tin thanh toán (VietQR).
  * Menu trực tuyến.
  * Liên kết đến ứng dụng di động.
  * Thông tin hóa đơn.
* Cho phép tùy chỉnh giao diện mã QR (màu sắc, logo, khung viền).
* Hỗ trợ bảo vệ mã QR bằng mật khẩu.([React][3])

### 2.5 Phân tích lưu lượng truy cập

* Hiển thị số lượt quét mã QR theo thời gian.
* Phân tích địa điểm và thiết bị của người quét mã.
* Cung cấp biểu đồ và báo cáo chi tiết.

### 2.6 Quản lý gói dịch vụ và thanh toán

* Cung cấp các gói dịch vụ miễn phí và trả phí.
* Hỗ trợ thanh toán qua các cổng thanh toán phổ biến.
* Quản lý thời gian dùng thử và gia hạn dịch vụ.

### 2.7 Hệ thống hỗ trợ khách hàng

* Cung cấp trang FAQ với các câu hỏi thường gặp.
* Cho phép người dùng gửi yêu cầu hỗ trợ.
* Hệ thống quản lý và phản hồi yêu cầu hỗ trợ.

## 3. Yêu cầu phi chức năng

### 3.1 Hiệu suất

* Hệ thống phải có khả năng xử lý đồng thời nhiều yêu cầu từ người dùng.
* Thời gian phản hồi cho mỗi yêu cầu không vượt quá 2 giây.

### 3.2 Bảo mật

* Dữ liệu người dùng phải được mã hóa và lưu trữ an toàn.
* Hệ thống phải tuân thủ các tiêu chuẩn bảo mật hiện hành.

### 3.3 Khả năng mở rộng

* Hệ thống phải được thiết kế để dễ dàng mở rộng khi số lượng người dùng tăng lên.

### 3.4 Khả năng bảo trì

* Mã nguồn phải được viết rõ ràng, dễ hiểu và có tài liệu hướng dẫn.
* Hệ thống phải hỗ trợ việc cập nhật và nâng cấp dễ dàng.

## 4. Kiến trúc hệ thống

### 4.1 Giao diện người dùng (Frontend)

* Sử dụng **React.js** để xây dựng giao diện người dùng tương tác và linh hoạt.
* Sử dụng **Redux** để quản lý trạng thái ứng dụng.
* Sử dụng **React Router** để quản lý điều hướng giữa các trang.

### 4.2 Máy chủ (Backend)

* Sử dụng **NestJS**, một framework Node.js mạnh mẽ và có cấu trúc rõ ràng, để xây dựng API và xử lý logic phía máy chủ.&#x20;
* Sử dụng **TypeScript** để tăng cường tính an toàn và dễ bảo trì của mã nguồn.([NestJS - A progressive Node.js framework][4])

### 4.3 Cơ sở dữ liệu

* Sử dụng **MySQL**, một hệ quản trị cơ sở dữ liệu quan hệ phổ biến, để lưu trữ thông tin người dùng, mã QR, thống kê và các dữ liệu liên quan.&#x20;

### 4.4 Hạ tầng triển khai

* Sử dụng **DigitalOcean Droplet**, một dịch vụ máy chủ ảo (VPS), để triển khai và vận hành hệ thống.
* Cấu hình máy chủ bao gồm:

  * Hệ điều hành: Ubuntu 20.04 LTS.
  * CPU: 2 vCPU.
  * RAM: 4GB.
  * Dung lượng lưu trữ: 80GB SSD.
  * Băng thông: 4TB.

## 5. API Endpoints

* **Authentication**

  * `POST /api/auth/register`: Đăng ký tài khoản mới.
  * `POST /api/auth/login`: Đăng nhập vào hệ thống.
  * `POST /api/auth/logout`: Đăng xuất khỏi hệ thống.

* **QR Codes**

  * `GET /api/qrcodes`: Lấy danh sách mã QR của người dùng.
  * `POST /api/qrcodes`: Tạo mã QR mới.
  * `PUT /api/qrcodes/:id`: Cập nhật thông tin mã QR.
  * `DELETE /api/qrcodes/:id`: Xóa mã QR.

* **Analytics**

  * `GET /api/analytics/:id`: Lấy thống kê cho mã QR cụ thể.

* **Subscriptions**

  * `GET /api/subscriptions`: Lấy thông tin gói dịch vụ hiện tại.
  * `POST /api/subscriptions`: Đăng ký hoặc gia hạn gói dịch vụ.

* **Support**

  * `POST /api/support`: Gửi yêu cầu hỗ trợ.
  * `GET /api/support`: Lấy danh sách yêu cầu hỗ trợ của người dùng.

## 6. Tổ chức dự án

* **Frontend**

  * `/src/components`: Các thành phần giao diện người dùng.
  * `/src/pages`: Các trang chính của ứng dụng.
  * `/src/store`: Quản lý trạng thái ứng dụng.
  * `/src/utils`: Các hàm tiện ích.

* **Backend**

  * `/src/modules`: Các mô-đun chức năng (auth, qrcodes, analytics, subscriptions, support).
  * `/src/controllers`: Xử lý các yêu cầu từ client.
  * `/src/services`: Xử lý logic nghiệp vụ.
  * `/src/entities`: Định nghĩa các thực thể dữ liệu.
  * `/src/repositories`: Tương tác với cơ sở dữ liệu.

## 7. Triển khai và CI/CD

* Sử dụng **Git** để quản lý mã nguồn.
* Sử dụng **GitHub Actions** để tự động hóa quy trình kiểm tra và triển khai.

[1]: https://www.geeksforgeeks.org/what-is-mysql/?utm_source=chatgpt.com "What is MySQL? - GeeksforGeeks"
[2]: https://docs.nestjs.com/first-steps?utm_source=chatgpt.com "First steps | NestJS - A progressive Node.js framework"
[3]: https://react.dev/?utm_source=chatgpt.com "React"
[4]: https://nestjs.com/?utm_source=chatgpt.com "NestJS - A progressive Node.js framework"

    """,
  },
  "fastship-order-price": {
    "id": "fastship-order-price",
    "title": "FastShip Order Price",
    "content": """
## ✅ **CASE STRIPE** (Tiền đã vào ví System)

### 🔹 **deliveryType = ship**

* Tiền đã vào ví System → bắt đầu chia:

#### 💰 Phân chia:

* `storeEarning = 90% * subtotal`
* `driverEarning = 70% * ship`
* `tip` → chuyển hết cho driver nếu có

#### 🧾 Transaction:

* **Ví system:**

  * `TRỪ driverEarning` chuyển cho tài xế đơn #ABC
  * `TRỪ tip` (nếu có) chuyển cho tài xế đơn #ABC
  * `TRỪ storeEarning` chuyển cho cửa hàng đơn #ABC
* **Ví driver:**

  * `CỘNG driverEarning` thu nhập đơn #ABC
  * `CỘNG tip` (nếu có)
* **Ví store:**

  * `CỘNG storeEarning` thu nhập đơn #ABC

---

### 🔹 **deliveryType = pickup**

* Không có ship, không có tài xế → chỉ chia cho store

#### 💰 Phân chia:

* `storeEarning = 90% * subtotal`
* `systemEarning = 10% * subtotal`

#### 🧾 Transaction:

* **Ví system:**

  * `TRỪ storeEarning` chuyển cho cửa hàng đơn #ABC
* **Ví store:**

  * `CỘNG storeEarning` thu nhập đơn #ABC

---

## ✅ **CASE CASH** (Tiền mặt, chưa vào ví System)

---

### 🔹 **deliveryType = ship**

* Driver đã cầm toàn bộ tiền mặt (subtotal + ship + tip)
* Cần **trừ từ ví driver** để phân chia lại cho store và system

#### 💰 Phân chia:

* `storeEarning = 90% * subtotal`
* `systemEarning = 10% * subtotal + 30% * ship`
* `driver giữ: 100% tiền mặt` → KHÔNG cộng vào ví driver
* `tip` → driver đã giữ → KHÔNG xử lý

#### 🧾 Transaction:

* **Ví driver:**

  * `TRỪ storeEarning` chuyển cho cửa hàng đơn #ABC
  * `TRỪ systemEarning` chuyển cho hệ thống đơn #ABC
* **Ví store:**

  * `CỘNG storeEarning` thu nhập đơn #ABC
* **Ví system:**

  * `CỘNG systemEarning` hoa hồng hệ thống từ đơn #ABC

---

### 🔹 **deliveryType = pickup**

* Store nhận tiền mặt từ khách
* Cần **trừ từ ví store** để chia lại phần của hệ thống

#### 💰 Phân chia:

* `storeEarning = 90% * subtotal` → store đã giữ
* `systemEarning = 10% * subtotal`
* `driverEarning = 0`
* `tip` → store giữ luôn nếu có → KHÔNG xử lý

#### 🧾 Transaction:

* **Ví store:**

  * `TRỪ systemEarning` chia lại cho hệ thống đơn #ABC
* **Ví system:**

  * `CỘNG systemEarning` hoa hồng hệ thống từ đơn #ABC

---

## ✅ TỔNG KẾT BẢNG LOGIC

| CASE   | deliveryType | Ai giữ tiền mặt? | Trừ từ ví ai? | Cộng ví driver        | Cộng ví store  | Cộng ví system                            |
| ------ | ------------ | ---------------- | ------------- | --------------------- | -------------- | ----------------------------------------- |
| STRIPE | ship         | System           | System        | + driverEarning + tip | + storeEarning | - driverEarning - tip - storeEarning      |
| STRIPE | pickup       | System           | System        | (không có)            | + storeEarning | - storeEarning                            |
| CASH   | ship         | Driver           | Driver        | (không cộng)          | + storeEarning | + 10% subtotal + 30% ship (trừ từ driver) |
| CASH   | pickup       | Store            | Store         | (không có)            | (giữ lại 90%)  | + 10% subtotal (trừ từ store)             |
 
    """,
  },
};
