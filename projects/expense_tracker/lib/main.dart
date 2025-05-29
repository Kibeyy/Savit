import 'package:expense_tracker/features/auth/screens/signup_screen.dart';
import 'package:expense_tracker/features/onboarding/screens/onboarding.dart';
import 'package:expense_tracker/features/onboarding/widgets/automatedfields_onboarding.dart';
import 'package:expense_tracker/features/onboarding/widgets/insights_onboarding.dart';
import 'package:expense_tracker/features/onboarding/widgets/savings_onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5956F2),
        //setting theme to dark mode
          brightness: Brightness.light
        ),
        useMaterial3: true,
      ),

      home: Onboarding(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Onboarding();
  }
}


