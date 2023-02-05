import 'package:bank_sha/core.dart';
import 'package:flutter/material.dart';

class BuildFriendlyTipsItem extends StatelessWidget {
  const BuildFriendlyTipsItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onPressed,
  });
  final String imageUrl;
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: (Get.width / 2) - horizontalSize - 9.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cardRadiusSize),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(cardRadiusSize)),
              child: Image.network(
                imageUrl,
                width: Get.width,
                height: 110.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: medium,
                  color: darkColor,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
