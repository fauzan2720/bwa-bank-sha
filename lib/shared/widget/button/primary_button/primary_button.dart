import 'package:flutter/material.dart';
import '/shared/util/style/border_radius.dart';
import '/shared/util/style/color.dart';
import '/shared/util/style/font_weight.dart';
import '/shared/util/style/size.dart';
import '../../../../state_util.dart';

class FozPrimaryButton extends StatelessWidget {
  const FozPrimaryButton({
    super.key,
    this.width,
    this.height,
    required this.label,
    this.icon,
    this.backgroundButton,
    required this.onPressed,
  });
  final double? width;
  final double? height;
  final String label;
  final IconData? icon;
  final Color? backgroundButton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      height: height ?? heightButton,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundButton ?? primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: buttonRadius,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: whiteColor,
            fontWeight: semibold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
