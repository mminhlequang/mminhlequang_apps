import 'package:flutter/material.dart';

class LegalScreen extends StatelessWidget {
  final String id;
  const LegalScreen({super.key, required this.id});

  bool isNotFound() {
    switch (id) {
      case 'privacy-policy-dreamart':
        return false;
      default:
        return true;
    }
  }

  String getTitle() {
    switch (id) {
      case 'privacy-policy-dreamart':
        return 'Privacy Policy';
      default:
        return '';
    }
  }

  String getContent() {
    switch (id) {
      case 'privacy-policy-dreamart':
        return '''
DreamArt Collection - Privacy Policy

Last updated: March 15, 2024

1. Introduction
DreamArt Collection ("we", "our" or "app") is committed to protecting users' privacy. This policy describes how we handle information related to your use of the application.

2. Information Collection and Use
- We DO NOT collect any personal information from users
- No account registration or login required
- No user activity tracking
- No user data stored on servers
- No information sharing with third parties

3. User Rights
You have the right to:
- Use the app without providing personal information
- Request confirmation about non-collection of data
- Contact us about any privacy-related concerns

4. Security
Although we don't collect data, we still implement reasonable security measures to protect the app from unauthorized access or modification.

5. Policy Changes
We may update this Privacy Policy from time to time. Any changes will be notified through our app or website.

6. Contact
If you have any questions about this Privacy Policy, please contact:
Email: mminh.lequang.dev@gmail.com

7. Legal Compliance
This policy complies with applicable data protection and privacy regulations, including GDPR and CCPA where applicable.

By using DreamArt Collection, you agree to this Privacy Policy.
''';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: isNotFound()
            ? Text("Hello world")
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(getTitle(),
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 16),
                      Text(
                        getContent(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
