import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Added a dark background so your white text and indicator are visible
      backgroundColor: const Color(0xFF0F172A), // Premium Dark Slate Blue
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox.shrink(),
              Row(
                spacing:5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'Assets/images/logo.png',
                    height: 70,
                    width: 70,
                    fit: BoxFit.contain,
                  ),
                  // 3. Aligned the text column to the left (start)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Digital',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                        Text(
                        'Goldmine',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                
                      Text(
                        'Academy',
                        style: TextStyle(
                          color: Colors.white70, // Slightly faded for clean visual hierarchy
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
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