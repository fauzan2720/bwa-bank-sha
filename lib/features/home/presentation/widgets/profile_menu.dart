import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    required this.iconPath,
    required this.title,
    this.notification = 0,
  });
  final String iconPath;
  final String title;
  final int notification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        children: [
          Image.asset(
            iconPath,
            width: 24.0,
          ),
          const SizedBox(
            width: 18.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: medium,
              color: darkColor,
            ),
          ),
          const Spacer(),
          if (notification > 0)
            Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                color: lightBlueColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  "$notification",
                  style: TextStyle(
                    fontWeight: medium,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
