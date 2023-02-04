import 'package:flutter/material.dart';
import '/shared/util/style/color.dart';
import '/shared/util/style/font_weight.dart';
import '/shared/util/style/size.dart';

class FozTransparentButton extends StatelessWidget {
  const FozTransparentButton({
    super.key,
    this.height,
    required this.label,
    this.color,
    this.icon,
    required this.onPressed,
  });
  final double? height;
  final String label;
  final Color? color;
  final IconData? icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? heightButton,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: color ?? primaryColor,
            fontWeight: semibold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
