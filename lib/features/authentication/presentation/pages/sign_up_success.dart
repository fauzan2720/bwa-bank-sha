import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/pages/main_navigation_page.dart';
import 'package:flutter/material.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Akun Berhasil\nTerdaftar",
              style: TextStyle(
                fontSize: 20.0,
                color: darkColor,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26.0,
            ),
            Text(
              "Grow your finance start\ntogether with us",
              style: TextStyle(
                fontSize: 16.0,
                color: secondaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50.0,
            ),
            FozPrimaryButton(
              label: "Get Started",
              onPressed: () => Get.offAll(const MainNavigationPage()),
              width: 183.0,
            ),
          ],
        ),
      ),
    );
  }
}
