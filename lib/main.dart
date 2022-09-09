

// ignore_for_file: prefer_const_constructors

import 'package:astana_city/Theme/app_colors.dart';
import 'package:astana_city/widgets/auth/auth_widget.dart';
import 'package:astana_city/widgets/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.mainYellowRed),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainYellowRed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
        ),
      ),
      routes: {
    '/auth': (context) => const AuthWidget(),

    '/main_screen': (context) => const MainScreenWidget(),
  },
     initialRoute: '/auth',
    );
  }
}
