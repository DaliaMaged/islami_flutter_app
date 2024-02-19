
import 'package:flutter/material.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/HomeScreen.dart';
import 'package:islami/home/hadeth_tab/hadeth_details.dart';
import 'package:islami/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami/home/quran_tab/sura_details.dart';
import 'package:islami/home/sebha_tab.dart';
import 'package:islami/home/settings_tab/setting_screen.dart';
import 'package:islami/islami_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create:
  (context) => AppConfigProvider()
    ,child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider  = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: IslamiTheme.lightMode,
      darkTheme: IslamiTheme.darkMode,
      routes: {
        HomeScreen.homeScreen : (context) => HomeScreen(),
        SuraDetails.sura_details : (context) => SuraDetails(),
        HadethTab.hadethScreen : (context) => HadethTab(),
        HadethDetails.hadeth_details :(context) => HadethDetails(),
        SettingScreen.setting_screen :(context) => SettingScreen(),
        SebhaTab.sebhaTab :(context) => SebhaTab(),
      },
      initialRoute: HomeScreen.homeScreen,
      locale: Locale("${provider.appLanguage}"),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
