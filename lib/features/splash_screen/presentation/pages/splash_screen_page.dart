import 'dart:async';

import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/splash_screen/presentation/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 2000),
      () => Get.put(const OnboardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDarkColor,
      body: Center(
        child: Image.asset(
          logoLight,
          height: 50.0,
        ),
      ),
    );
  }
}
