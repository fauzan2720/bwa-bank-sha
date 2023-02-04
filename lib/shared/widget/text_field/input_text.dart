import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class FozInputText extends StatelessWidget {
  const FozInputText({
    super.key,
    this.height,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.maxLines,
    this.width,
    required this.value,
    required this.onChanged,
  });

  final double? height;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final int? maxLines;
  final double? width;
  final String value;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: SizedBox(
        width: width ?? Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hintText!,
              style: TextStyle(
                fontWeight: medium,
                color: darkColor,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextFormField(
              style: TextStyle(color: darkColor),
              initialValue: value,
              keyboardType: keyboardType,
              maxLines: maxLines,
              decoration: InputDecoration(
                fillColor: whiteColor,
                contentPadding: prefixIcon != null
                    ? const EdgeInsets.only(top: 14.0)
                    : const EdgeInsets.all(18.0),
                filled: true,
                hintText: hintText,
                prefixIcon: prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: prefixIcon,
                      )
                    : null,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: suffixIcon,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(inputRadiusSize),
                  borderSide: BorderSide(color: primaryColor, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(inputRadiusSize),
                  borderSide: BorderSide(color: strokeColor, width: 1.0),
                ),
                hoverColor: secondaryColor,
                hintStyle: TextStyle(color: strokeColor),
              ),
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
