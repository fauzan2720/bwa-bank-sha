import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';

class BuildProfile extends StatelessWidget {
  const BuildProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: primaryHorizontalSize,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Howdy,",
                style: TextStyle(
                  fontSize: 16.0,
                  color: greyColor,
                ),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                "fauzan",
                style: TextStyle(
                  fontSize: 20.0,
                  color: greyColor,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => Get.to(const ProfilePage()),
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://i.ibb.co/PGv8ZzG/me.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16.0,
                  height: 16.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
