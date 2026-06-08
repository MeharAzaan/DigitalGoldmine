import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Added a dark background so your white text and indicator are visible
      // backgroundColor: const Color(0xFF0F172A), // Premium Dark Slate Blue
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox.shrink(),
                  Center(
                    child: Image.asset(
                      'Assets/images/splashlogo.png',
                      height: 159,
                      width: 159,
                      fit: BoxFit.contain,
                    ),
                  ),

              // 4. Loading indicator at the bottom
              const CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}