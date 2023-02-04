import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class FozCard extends StatelessWidget {
  const FozCard({
    super.key,
    required this.child,
    this.paddingHorizontal = 22.0,
    this.paddingVertical = 22.0,
  });
  final Widget child;
  final double paddingHorizontal;
  final double paddingVertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal, vertical: paddingVertical),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: cardRadius,
      ),
      child: child,
    );
  }
}
