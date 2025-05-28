import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WebDownloadScreen extends StatelessWidget {
  final String appId;
  const WebDownloadScreen({super.key, required this.appId});

  bool isNotFound() {
    switch (appId) {
      case 'dreamart':
      case 'genqr':
        return false;
      default:
        return true;
    }
  }

  String getLogo() {
    switch (appId) {
      case 'dreamart':
        return 'assets/images/logo_dreamart.png';
      case 'genqr':
        return 'assets/images/logo_genqr.png';
      default:
        return '';
    }
  }

  String getAndroidId() {
    switch (appId) {
      case 'dreamart':
        return 'com.mminhlequang.dreamart';
      case 'genqr':
        return 'com.mminhlequang.qrcoba';
      default:
        return '';
    }
  }

  String getIosId() {
    switch (appId) {
      case 'dreamart':
        return '6480363700';
      case 'genqr':
        return '6746096507';
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
            ? Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/code GIF.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    getLogo(),
                    width: 200,
                  ),
                  const SizedBox(height: 48),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          launchUrlString(
                            "https://play.google.com/store/apps/details?id=${getAndroidId()}",
                            webOnlyWindowName: '_self',
                          );
                        },
                        child: Image.asset(
                          'assets/images/googleplay.png',
                          width: 140,
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          launchUrlString(
                            "https://apps.apple.com/us/app/dreamart-ai/id${getIosId()}?platform=iphone",
                            webOnlyWindowName: '_self',
                          );
                        },
                        child: Image.asset(
                          'assets/images/appstore.png',
                          width: 140,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                ],
              ),
      ),
    );
  }
}
