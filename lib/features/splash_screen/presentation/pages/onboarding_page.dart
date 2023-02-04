import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/authentication/presentation/pages/sign_in_page.dart';
import 'package:bank_sha/features/authentication/presentation/pages/sign_up_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselController _carouselController = CarouselController();

  int currentIndex = 0;

  List title = [
    "Grow Your\nFinancial Today",
    "Build From\nZero to Freedom",
    "Start Together",
  ];

  List subTitle = [
    "Our system is helping you to\nachieve a better goal",
    "We provide tips for you so that\nyou can adapt easier",
    "We will guide you to where\nyou wanted it too",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CarouselSlider(
            items: [
              Image.asset(
                firstOnboarding,
                height: 331.0,
              ),
              Image.asset(
                secondOnboarding,
                height: 331.0,
              ),
              Image.asset(
                thirdOnboarding,
                height: 331.0,
              ),
            ],
            options: CarouselOptions(
              height: 331.0,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                currentIndex = index;
                setState(() {});
              },
            ),
            carouselController: _carouselController,
          ),
          const SizedBox(
            height: 80.0,
          ),
          Padding(
            padding: primaryHorizontalSize,
            child: SizedBox(
              height: 300.0,
              child: FozCard(
                paddingVertical: 24.0,
                child: Column(
                  children: [
                    Text(
                      title[currentIndex],
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: semibold,
                        color: darkColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 26.0,
                    ),
                    Text(
                      subTitle[currentIndex],
                      style: TextStyle(
                        fontSize: 16.0,
                        color: secondaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    currentIndex == 2
                        ? Column(
                            children: [
                              FozPrimaryButton(
                                label: "Get Started",
                                onPressed: () => Get.to(const SignUpPage()),
                              ),
                              FozTransparentButton(
                                label: "Sign In",
                                onPressed: () => Get.to(const SignInPage()),
                                color: greyColor,
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                height: 12.0,
                                width: 12.0,
                                decoration: BoxDecoration(
                                  color: currentIndex == 0
                                      ? indicatorActiveColor
                                      : indicatorColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                height: 12.0,
                                width: 12.0,
                                decoration: BoxDecoration(
                                  color: currentIndex == 1
                                      ? indicatorActiveColor
                                      : indicatorColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                height: 12.0,
                                width: 12.0,
                                decoration: BoxDecoration(
                                  color: currentIndex == 2
                                      ? indicatorActiveColor
                                      : indicatorColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const Spacer(),
                              FozPrimaryButton(
                                label: "Continue",
                                onPressed: () {
                                  _carouselController.nextPage();
                                },
                                width: 150.0,
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
        ],
      ),
    );
  }
}
