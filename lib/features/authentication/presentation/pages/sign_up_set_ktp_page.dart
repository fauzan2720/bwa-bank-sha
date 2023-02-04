import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/authentication/presentation/pages/sign_up_success.dart';
import 'package:flutter/material.dart';

class SignUpSetKtpPage extends StatelessWidget {
  const SignUpSetKtpPage({super.key});

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
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(imageUpload),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Passport/ID Card",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: medium,
                        color: darkColor,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    FozPrimaryButton(
                      label: "Continue",
                      onPressed: () => Get.offAll(const SignUpSuccess()),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Center(
                child: InkWell(
                  onTap: () => Get.offAll(const SignUpSuccess()),
                  child: Text(
                    "Skip for Now",
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
