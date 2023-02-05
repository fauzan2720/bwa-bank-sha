import 'package:bank_sha/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:bank_sha/features/home/presentation/cubit/home_cubit.dart';
import 'package:bank_sha/features/home/presentation/cubit/page_cubit.dart';
import 'package:bank_sha/features/splash_screen/presentation/pages/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.navigatorKey,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: backgroundColor,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: backgroundColor,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: darkColor,
            ),
          ),
        ),
        home: const SplashScreenPage(),
      ),
    );
  }

  static final List<BlocProvider> _providers = [
    BlocProvider<AuthenticationCubit>(
      create: (context) => AuthenticationCubit(),
    ),
    BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
    ),
    BlocProvider<PageCubit>(
      create: (context) => PageCubit(),
    ),
  ];
}
