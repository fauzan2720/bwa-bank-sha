import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/authentication/presentation/pages/sign_in_page.dart';
import 'package:bank_sha/features/authentication/presentation/pages/sign_up_set_profile.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                "Join Us to Unlock\nYour Growth",
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
                      hintText: "Full Name",
                      value: "",
                      onChanged: (value) {},
                    ),
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
                      height: 30.0,
                    ),
                    FozPrimaryButton(
                      label: "Continue",
                      onPressed: () => Get.to(const SignUpSetProfilePage()),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Center(
                child: InkWell(
                  onTap: () => Get.put(const SignInPage()),
                  child: Text(
                    "Sign In",
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
