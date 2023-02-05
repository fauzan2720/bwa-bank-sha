import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_friendly_tips.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_latest_transactions.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_level.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_profile.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_send_again.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_service.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_wallet_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: primaryVerticalSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BuildProfile(),
                SizedBox(
                  height: 32.0,
                ),
                BuildWalletCard(),
                SizedBox(
                  height: 20.0,
                ),
                BuildLevel(),
                SizedBox(
                  height: 30.0,
                ),
                BuildService(),
                SizedBox(
                  height: 30.0,
                ),
                BuildLatestTransactions(),
                SizedBox(
                  height: 30.0,
                ),
                BuildSendAgain(),
                SizedBox(
                  height: 30.0,
                ),
                BuildFriendlyTips(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
