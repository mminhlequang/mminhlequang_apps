import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   decoration: const BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [
      //         Color(0xFF000000),
      //         Color(0xFF1A1A1A),
      //       ],
      //     ),
      //   ),
      //   child: Center(
      //     child: Text('Welcome'),
      //   ),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/code GIF.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
