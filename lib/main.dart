import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/home/quran_tab/sura_details.dart';
import 'package:islami/islami_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: IslamiTheme.lightMode,
      routes: {
        HomeScreen.homeScreen : (context) => HomeScreen(),
        SuraDetails.sura_details : (context) => SuraDetails(),
      },
      initialRoute: HomeScreen.homeScreen,
    );
  }
}
