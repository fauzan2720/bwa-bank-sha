import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class BuildWalletCard extends StatelessWidget {
  const BuildWalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      width: Get.width,
      margin: primaryHorizontalSize,
      padding: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.0),
        image: DecorationImage(
          image: AssetImage(imagebackgroundCard),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fauzan Abdillah",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: medium,
              color: whiteColor,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "**** **** **** 1280",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: medium,
              color: whiteColor,
              letterSpacing: 6.0,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "Balance",
            style: TextStyle(
              color: whiteColor,
            ),
          ),
          Text(
            CurrencyFormat.convertToIdr(12500, 2),
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: semibold,
              color: whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
