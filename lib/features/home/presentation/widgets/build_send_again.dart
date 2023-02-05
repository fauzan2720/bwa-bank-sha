import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_send_again_item.dart';
import 'package:flutter/material.dart';

class BuildSendAgain extends StatelessWidget {
  const BuildSendAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: primaryHorizontalSize,
          child: Text(
            "Send Again",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: semibold,
              color: darkColor,
            ),
          ),
        ),
        const SizedBox(
          height: 14.0,
        ),
        SingleChildScrollView(
          controller: ScrollController(),
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalSize - 9.0),
            child: Row(
              children: const [
                BuildSendAgainItem(
                  imageUrl: "https://i.ibb.co/PGv8ZzG/me.jpg",
                  username: "@fauzan",
                ),
                BuildSendAgainItem(
                  imageUrl: "https://i.ibb.co/PGv8ZzG/me.jpg",
                  username: "@ggfauzanabdillah",
                ),
                BuildSendAgainItem(
                  imageUrl: "https://i.ibb.co/PGv8ZzG/me.jpg",
                  username: "@fauzan",
                ),
                BuildSendAgainItem(
                  imageUrl: "https://i.ibb.co/PGv8ZzG/me.jpg",
                  username: "@ggfauzanabdillah",
                ),
                BuildSendAgainItem(
                  imageUrl: "https://i.ibb.co/PGv8ZzG/me.jpg",
                  username: "@fauzan",
                ),
                BuildSendAgainItem(
                  imageUrl: "https://i.ibb.co/PGv8ZzG/me.jpg",
                  username: "@ggfauzanabdillah",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
