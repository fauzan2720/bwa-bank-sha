import 'package:bank_sha/core.dart';
import 'package:bank_sha/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/page_cubit.dart';

class MainNavigationPage extends StatelessWidget {
  const MainNavigationPage({super.key});

  _handleBody(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const Center(
          child: Text("History Page"),
        );
      case 2:
        return const Center(
          child: Text("Statistic Page"),
        );
      case 3:
        return const Center(
          child: Text("Reward Page"),
        );
      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: _handleBody(state),
          bottomNavigationBar: BottomAppBar(
            color: whiteColor,
            shape: const CircularNotchedRectangle(),
            clipBehavior: Clip.antiAlias,
            notchMargin: 6,
            elevation: 0.5,
            child: BottomNavigationBar(
              currentIndex: state,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              backgroundColor: whiteColor,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: lightBlueColor,
              unselectedItemColor: darkColor,
              selectedLabelStyle: TextStyle(
                fontWeight: medium,
                fontSize: 10.0,
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: medium,
                fontSize: 10.0,
              ),
              onTap: (value) {
                context.read<PageCubit>().setPage(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ImageIcon(
                      AssetImage(iconOverview),
                      size: 20.0,
                    ),
                  ),
                  label: "Overview",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ImageIcon(
                      AssetImage(iconHistory),
                      size: 20.0,
                    ),
                  ),
                  label: "History",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ImageIcon(
                      AssetImage(iconStatistic),
                      size: 20.0,
                    ),
                  ),
                  label: "Statistic",
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ImageIcon(
                      AssetImage(iconReward),
                      size: 20.0,
                    ),
                  ),
                  label: "Reward",
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: primaryColor,
              child: Icon(
                Icons.add_circle_outline,
                size: 24.0,
                color: whiteColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
