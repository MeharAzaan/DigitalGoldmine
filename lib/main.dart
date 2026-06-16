import 'package:digital_goldmine/View/checkin.dart';
import 'package:digital_goldmine/View/forgetpassword.dart';
import 'package:digital_goldmine/View/login.dart';
import 'package:digital_goldmine/View/signup.dart';
import 'package:digital_goldmine/View/splash.dart';
import 'package:digital_goldmine/View/setupproflie.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
const darkBackgroundColor = Color(0xFF1A1A1A);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Optional: Hides the debug banner
      theme: ThemeData(
        // 1. Sets the background for all Scaffolds globally
        scaffoldBackgroundColor: darkBackgroundColor,
        
        // 2. Keeps your seed color generation for components like buttons, switches, etc.
        colorScheme: ColorScheme.fromSeed(
          seedColor: darkBackgroundColor,
          brightness: Brightness.dark, // Switches default text/icon themes to light so they are visible
        ),
      ),
      home: const ForgetPassword(),
    );
  }
}