import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class BuildSendAgainItem extends StatelessWidget {
  const BuildSendAgainItem({
    super.key,
    required this.imageUrl,
    required this.username,
  });
  final String imageUrl;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 9.0),
      width: 100.0,
      child: FozCard(
        child: Column(
          children: [
            Container(
              width: 45.0,
              height: 45.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              username,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: medium,
                color: darkColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
