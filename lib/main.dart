import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website/screens/welcom_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'screens/legal_screen.dart';
import 'screens/web_download_screen.dart';

void main() {
  GoRouter.optionURLReflectsImperativeAPIs = true;
  setPathUrlStrategy();
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Apps information',
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: '/',
        onException: (context, state, router) {
          print(state.error);
          router.pushReplacement('/');
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => WelcomeScreen(),
          ),
          GoRoute(
            path: '/download/:id',
            builder: (context, state) => WebDownloadScreen(
              appId: state.pathParameters['id']!,
            ),
          ),
          GoRoute(
            path: '/legal/:id',
            builder: (context, state) => LegalScreen(
              id: state.pathParameters['id']!,
            ),
          ),
        ],
      ),
    );
  }
}
