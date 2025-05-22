# mminhlequang Apps

Website chính thức: https://mminhlequang-apps.web.app/

## Thêm Legal Page Mới

### 1. Thêm ID Mới
Trong file `lib/screens/legal_screen.dart`, thêm ID mới vào các hàm:

```dart
class LegalScreen extends StatelessWidget {
  final String id;
  const LegalScreen({super.key, required this.id});

  bool isNotFound() {
    switch (id) {
      // Thêm ID mới vào đây
      case 'privacy-policy-your-app':
      case 'terms-of-use-your-app':
        return false;
      default:
        return true;
    }
  }

  String getTitle() {
    switch (id) {
      // Thêm ID mới vào đây
      case 'privacy-policy-your-app':
        return 'Privacy Policy';
      case 'terms-of-use-your-app':
        return 'Terms of Use (EULA)';
      default:
        return '';
    }
  }

  String getContent() {
    switch (id) {
      // Thêm content cho ID mới vào đây
      case 'privacy-policy-your-app':
        return '''
Your App Name - Privacy Policy

Last updated: [Date]

1. Introduction
[Your app name] ("we", "our" or "app") is committed to protecting users' privacy...

[Rest of your privacy policy content]
''';
      case 'terms-of-use-your-app':
        return '''
Your App Name - Terms of Use (EULA)

Last updated: [Date]

1. Acceptance of Terms
By downloading, installing, or using [Your app name]...

[Rest of your terms of use content]
''';
      default:
        return '';
    }
  }
}
```

### 2. Cập nhật Route (nếu cần)
Trong file `lib/main.dart`, route `/legal/:id` đã được cấu hình sẵn:

```dart
GoRoute(
  path: '/legal/:id',
  builder: (context, state) => LegalScreen(
    id: state.pathParameters['id']!,
  ),
)
```

### 3. Truy cập Page Mới
Sau khi thêm ID và content, bạn có thể truy cập page mới qua URL:
- Privacy Policy: `https://mminhlequang-apps.web.app/legal/privacy-policy-your-app`
- Terms of Use: `https://mminhlequang-apps.web.app/legal/terms-of-use-your-app`

### 4. Deploy Lên Firebase
```bash
flutter build web
firebase deploy
```

## Quy trình Deploy lên Firebase Hosting

### Cài đặt Firebase CLI (nếu chưa có)
```bash
npm install -g firebase-tools
```

### Đăng nhập vào Firebase
```bash
firebase login
```

### Khởi tạo Firebase trong dự án (chỉ cần làm 1 lần)
```bash
firebase init
```
Chọn các options:
- Hosting
- Chọn project Firebase của bạn
- Public directory: `build/web`
- Configure as single-page app: Yes
- Set up automatic builds and deploys: No

### Build và Deploy
1. Build dự án Flutter web:
```bash
flutter build web
```

2. Deploy lên Firebase:
```bash
firebase deploy
```

### Kiểm tra sau khi deploy
- Truy cập https://mminhlequang-apps.web.app/ để kiểm tra website
- Kiểm tra các tính năng và links đã thêm
- Xác nhận các legal page mới hoạt động đúng

### Lưu ý
- Luôn test kỹ trên môi trường local trước khi deploy
- Đảm bảo tuân thủ các quy định về privacy policy
- Cập nhật version number trong `pubspec.yaml` khi có thay đổi lớn
- Backup dữ liệu trước khi deploy các thay đổi quan trọng
- Khi thêm legal page mới, cần đảm bảo:
  - ID phải theo format: `privacy-policy-[app-name]` hoặc `terms-of-use-[app-name]`
  - Content phải đầy đủ và tuân thủ các quy định pháp lý
  - Cập nhật ngày "Last updated" trong content
  - Test trên các thiết bị và trình duyệt khác nhau

