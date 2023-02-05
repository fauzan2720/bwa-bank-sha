import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class BuildLevel extends StatelessWidget {
  const BuildLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: primaryHorizontalSize,
      child: FozCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Level 1",
                  style: TextStyle(
                    color: darkColor,
                    fontWeight: medium,
                  ),
                ),
                const Spacer(),
                Text(
                  "55%",
                  style: TextStyle(
                    color: greenColor,
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  " of ${CurrencyFormat.convertToIdr(20000, 2)}",
                  style: TextStyle(
                    color: darkColor,
                    fontWeight: semibold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(55.0),
              child: LinearProgressIndicator(
                minHeight: 5.0,
                value: 0.55,
                valueColor: AlwaysStoppedAnimation(greenColor),
                backgroundColor: backgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
