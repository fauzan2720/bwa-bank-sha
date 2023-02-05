import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class BuildServiceItem extends StatelessWidget {
  const BuildServiceItem({
    super.key,
    required this.imagePath,
    required this.label,
    required this.onPressed,
  });
  final String imagePath;
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 70.0,
        child: Column(
          children: [
            FozCard(
              child: Image.asset(
                imagePath,
                width: 26.0,
                height: 26.0,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              label,
              style: TextStyle(
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
