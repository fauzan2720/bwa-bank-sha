import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_friendly_tips_item.dart';
import 'package:flutter/material.dart';

class BuildFriendlyTips extends StatelessWidget {
  const BuildFriendlyTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: primaryHorizontalSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Tips",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: semibold,
              color: darkColor,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Wrap(
            spacing: 18.0,
            runSpacing: 18.0,
            children: [
              BuildFriendlyTipsItem(
                imageUrl: "https://picsum.photos/1000",
                title: "Best tips for using a credit card",
                onPressed: () async => await Foz.launcUrl("https://pub.dev/"),
              ),
              BuildFriendlyTipsItem(
                imageUrl: "https://picsum.photos/1000",
                title:
                    "Spot the good pie of finance model Spot the good pie of finance model",
                onPressed: () async => await Foz.launcUrl("https://pub.dev/"),
              ),
              BuildFriendlyTipsItem(
                imageUrl: "https://picsum.photos/1000",
                title: "Great hack to get better advices",
                onPressed: () async => await Foz.launcUrl("https://pub.dev/"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
