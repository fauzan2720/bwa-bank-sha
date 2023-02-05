import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: semibold,
            color: darkColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: primarySize,
          child: Column(
            children: [
              FozCard(
                paddingHorizontal: 30.0,
                child: Column(
                  children: [
                    Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image:
                              NetworkImage("https://i.ibb.co/PGv8ZzG/me.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 11.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 28.0,
                            height: 28.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: whiteColor,
                            ),
                            child: Icon(
                              Icons.check_circle,
                              color: greenColor,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      "Fauzan Abdillah",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: medium,
                        color: darkColor,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ProfileMenu(
                      iconPath: iconUser,
                      title: "Edit Profile",
                    ),
                    ProfileMenu(
                      iconPath: iconShield,
                      title: "My PIN",
                    ),
                    ProfileMenu(
                      iconPath: iconCreditCard,
                      title: "Wallet Settings",
                    ),
                    ProfileMenu(
                      iconPath: iconAward,
                      title: "My Rewards",
                      notification: 2,
                    ),
                    ProfileMenu(
                      iconPath: iconSidebar,
                      title: "Help Center",
                    ),
                    ProfileMenu(
                      iconPath: iconLogOut,
                      title: "Log Out",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 87.0,
              ),
              Text(
                "Report a Problem",
                style: TextStyle(
                  fontSize: 16.0,
                  color: greyColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
