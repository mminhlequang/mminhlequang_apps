import 'package:flutter/material.dart';

class LegalScreen extends StatelessWidget {
  final String id;
  const LegalScreen({super.key, required this.id});

  bool isNotFound() {
    print("LegalScreen: $id");
    switch (id) {
      case 'privacy-policy-acs':
      case 'privacy-policy-dreamart':
      case 'terms-of-use-acs':
      case 'terms-of-use-dreamart':
        return false;
      default:
        return true;
    }
  }

  String getTitle() {
    switch (id) {
      case 'privacy-policy-acs':
      case 'privacy-policy-dreamart':
        return 'Privacy Policy';
      case 'terms-of-use-acs':
      case 'terms-of-use-dreamart':
        return 'Terms of Use (EULA)';
      default:
        return '';
    }
  }

  String getContent() {
    switch (id) {
      case 'privacy-policy-acs':
        return '''
AdsCheckSpeed - Privacy Policy

Last updated: March 15, 2024

1. Introduction
AdsCheckSpeed ("we", "our" or "app") is committed to protecting users' privacy. This policy describes how we handle information related to your use of the application.

2. Information Collection and Use
- We only collect email and password for account authentication purposes
- Login information is encrypted and secured
- No user activity tracking
- No other personal data storage
- No information sharing or selling to third parties

3. User Rights
You have the right to:
- Request deletion of your account and login information
- Request confirmation about non-collection of other data
- Change your login information at any time
- Contact us about any privacy-related concerns

4. Security
We implement strong security measures to protect:
- User login information
- System from unauthorized access
- Authentication data integrity

5. Policy Changes
We may update this Privacy Policy from time to time. Any changes will be notified through our app or website.

6. Contact
If you have any questions about this Privacy Policy, please contact:
Email: mminh.lequang.dev@gmail.com

7. Legal Compliance
This policy complies with applicable data protection and privacy regulations, including GDPR and CCPA where applicable.

By using AdsCheckSpeed, you agree to this Privacy Policy.
''';
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
      case 'terms-of-use-acs':
        return '''
AdsCheckSpeed - Terms of Use (EULA)

Last updated: March 15, 2024

1. Acceptance of Terms
By downloading, installing, or using AdsCheckSpeed ("the App"), you agree to be bound by these Terms of Use. If you do not agree to these terms, do not use the App.

2. Description of Service
AdsCheckSpeed provides tools for analyzing and monitoring ad performance. The App offers both free features and premium features available through subscription.

3. Subscription Details
3.1. Premium Features Subscription
   - Title: AdsCheckSpeed Premium
   - Length: Monthly and annual subscription options available
   - Price: \$4.99 USD per month (prices may vary by region)
   - Subscription automatically renews unless auto-renew is turned off at least 24 hours before the end of the current period
   - Payment will be charged to your Apple ID account at confirmation of purchase
   - Your account will be charged for renewal within 24 hours prior to the end of the current period
   - Subscriptions may be managed by the user and auto-renewal may be turned off by going to the user's Account Settings after purchase
   - Any unused portion of a free trial period, if offered, will be forfeited when you purchase a subscription

4. User Account
You may need to create an account to use certain features of the App. You are responsible for maintaining the confidentiality of your account information.

5. Restrictions on Use
You agree not to:
   - Modify, adapt, or hack the App
   - Use the App for any illegal purpose
   - Transmit any viruses or harmful code
   - Attempt to gain unauthorized access to the App's systems

6. Intellectual Property
All intellectual property rights in the App and its content belong to us or our licensors.

7. Disclaimer of Warranties
The App is provided "as is" without warranties of any kind.

8. Limitation of Liability
We shall not be liable for any indirect, incidental, special, consequential, or punitive damages.

9. Changes to Terms
We may modify these terms at any time by posting the revised terms on our website or within the App.

10. Termination
We may terminate or suspend your access to the App at any time without notice for conduct that we believe violates these Terms.

11. Governing Law
These terms shall be governed by and construed in accordance with the laws of Vietnam.

12. Contact
If you have any questions about these Terms, please contact:
Email: mminh.lequang.dev@gmail.com
''';
      case 'terms-of-use-dreamart':
        return '''
DreamArt Collection - Terms of Use (EULA)

Last updated: March 15, 2024

1. Acceptance of Terms
By downloading, installing, or using DreamArt Collection ("the App"), you agree to be bound by these Terms of Use. If you do not agree to these terms, do not use the App.

2. Description of Service
DreamArt Collection provides AI-powered image generation and editing tools. The App offers both free features and premium features available through subscription.

3. Subscription Details
3.1. Premium Features Subscription
   - Title: DreamArt Pro
   - Length: Weekly, monthly, and annual subscription options available
   - Price: \$4.99 USD per month (prices may vary by region)
   - Subscription automatically renews unless auto-renew is turned off at least 24 hours before the end of the current period
   - Payment will be charged to your Apple ID account at confirmation of purchase
   - Your account will be charged for renewal within 24 hours prior to the end of the current period
   - Subscriptions may be managed by the user and auto-renewal may be turned off by going to the user's Account Settings after purchase
   - Any unused portion of a free trial period, if offered, will be forfeited when you purchase a subscription

4. User-Generated Content
You retain ownership of any content you create using the App. However, you grant us a license to use, reproduce, modify, and display such content for the purpose of providing and improving the App.

5. Restrictions on Use
You agree not to:
   - Use the App to create content that is illegal, offensive, or violates third-party rights
   - Distribute or publicly display images generated by the App in a way that violates applicable laws
   - Reverse engineer or attempt to extract the source code of the App
   - Use the App for any illegal purpose

6. Intellectual Property
All intellectual property rights in the App and its underlying technology belong to us or our licensors.

7. Disclaimer of Warranties
The App is provided "as is" without warranties of any kind.

8. Limitation of Liability
We shall not be liable for any indirect, incidental, special, consequential, or punitive damages.

9. Changes to Terms
We may modify these terms at any time by posting the revised terms on our website or within the App.

10. Termination
We may terminate or suspend your access to the App at any time without notice for conduct that we believe violates these Terms.

11. Governing Law
These terms shall be governed by and construed in accordance with the laws of Vietnam.

12. Contact
If you have any questions about these Terms, please contact:
Email: mminh.lequang.dev@gmail.com
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
