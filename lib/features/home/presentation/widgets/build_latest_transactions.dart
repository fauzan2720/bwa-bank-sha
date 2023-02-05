import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/widgets/build_latest_transactions_item.dart';
import 'package:flutter/material.dart';

class BuildLatestTransactions extends StatelessWidget {
  const BuildLatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: primaryHorizontalSize,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transactions",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: semibold,
              color: darkColor,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          FozCard(
            paddingVertical: 22.0 - 9.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildLatestTransactionsItem(
                  iconPath: iconTopUp,
                  title: "Top Up",
                  time: "Yesterday",
                  value: 450000,
                ),
                BuildLatestTransactionsItem(
                  iconPath: iconReward,
                  title: "Cashback",
                  time: "Sep 11",
                  value: 22000,
                ),
                BuildLatestTransactionsItem(
                  iconPath: iconWithdraw,
                  title: "Withdraw",
                  time: "Sep 2",
                  value: 5000,
                ),
                BuildLatestTransactionsItem(
                  iconPath: iconSend,
                  title: "Transfer",
                  time: "Aug 27",
                  value: 123500,
                ),
                BuildLatestTransactionsItem(
                  iconPath: iconShoppingCart,
                  title: "Electric",
                  time: "Feb 18",
                  value: 12300000,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
