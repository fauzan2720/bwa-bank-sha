import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/authentication/presentation/pages/sign_up_page.dart';
import 'package:bank_sha/features/home/presentation/pages/main_navigation_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: primaryHorizontalSize,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Center(
                child: Image.asset(
                  logoDark,
                  height: 50.0,
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              Text(
                "Sign In &\nGrow Your Finance",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: semibold,
                  color: darkColor,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              FozCard(
                child: Column(
                  children: [
                    FozInputText(
                      hintText: "Email Address",
                      value: "",
                      onChanged: (value) {},
                      keyboardType: TextInputType.emailAddress,
                    ),
                    FozInputPassword(
                      hintText: "Password",
                      value: "",
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: lightBlueColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    FozPrimaryButton(
                      label: "Sign In",
                      onPressed: () => Get.offAll(const MainNavigationPage()),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Center(
                child: InkWell(
                  onTap: () => Get.put(const SignUpPage()),
                  child: Text(
                    "Create New Account",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
