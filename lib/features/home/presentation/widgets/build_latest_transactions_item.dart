import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class BuildLatestTransactionsItem extends StatelessWidget {
  const BuildLatestTransactionsItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.time,
    required this.value,
  });
  final String iconPath;
  final String title;
  final String time;
  final double value;

  @override
  Widget build(BuildContext context) {
    Color? iconColor;
    Color? backgroundColor;

    if (title == "Top Up") {
      iconColor = const Color(0xff3197DD);
      backgroundColor = const Color(0xffE7F5FD);
    } else if (title == "Cashback") {
      iconColor = const Color(0xffA02FBD);
      backgroundColor = const Color(0xffF5E8F9);
    } else if (title == "Withdraw") {
      iconColor = const Color(0xff2EA368);
      backgroundColor = const Color(0xffE5F7EE);
    } else if (title == "Transfer") {
      iconColor = const Color(0xff5142E6);
      backgroundColor = const Color(0xffEDEBFF);
    } else if (title == "Electric") {
      iconColor = const Color(0xffF87000);
      backgroundColor = const Color(0xffFEF0DF);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9.0),
      child: Row(
        children: [
          Container(
            width: 48.0,
            height: 48.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
            ),
            child: Center(
              child: Image.asset(
                iconPath,
                width: 18.0,
                color: iconColor,
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: medium,
                  color: darkColor,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 12.0,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "+ ${CurrencyFormat.convertToIdr(value, 2)}",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: medium,
              color: darkColor,
            ),
          ),
        ],
      ),
    );
  }
}
