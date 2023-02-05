import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_service_item.dart';
import 'package:flutter/material.dart';

class BuildService extends StatelessWidget {
  const BuildService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: primaryHorizontalSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: semibold,
              color: darkColor,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildServiceItem(
                imagePath: iconTopUp,
                label: "Top Up",
                onPressed: () {},
              ),
              BuildServiceItem(
                imagePath: iconSend,
                label: "Send",
                onPressed: () {},
              ),
              BuildServiceItem(
                imagePath: iconWithdraw,
                label: "Withdraw",
                onPressed: () {},
              ),
              BuildServiceItem(
                imagePath: iconMore,
                label: "More",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
