import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/islami_theme.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatefulWidget {
  static String setting_screen = "setting_screen";

  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: IslamiTheme.primaryColor,
              borderRadius: BorderRadius.circular(25)),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => Container(
                    color: provider.isDarkTheme ? IslamiTheme.secColorDark : IslamiTheme.primaryColor,
                    child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              provider.appLanguage == "en"
                                  ? selectedLanguage(provider, "English")
                                  : selectedLanguage(provider, "العربية"),
                              provider.appLanguage == "en"
                                  ? unSelectedLanguage(provider, "العربية", "ar")
                                  : unSelectedLanguage(provider, "ُEnglish", "en")
                            ],
                          ),
                  ),
                      );
            },
            child: Text(
              "${AppLocalizations.of(context)?.language}",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: IslamiTheme.primaryColor,
              borderRadius: BorderRadius.circular(25)),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) =>  Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            provider.isDarkTheme
                                ? selectedTheme(provider,
                                    AppLocalizations.of(context)!.dark)
                                : selectedTheme(provider,
                                    AppLocalizations.of(context)!.light),
                            provider.isDarkTheme
                                ? unSelectedTheme(provider,
                                    AppLocalizations.of(context)!.light, false)
                                : unSelectedTheme(provider,
                                    AppLocalizations.of(context)!.dark, true)
                          ],
                        ),
                      );
            },
            child: Text(
              "theme",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget selectedLanguage(AppConfigProvider provider, String language) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          //  provider.changeAppLanguage(newLanguage: "$languageKey");
        },
        child: Text("$language",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: IslamiTheme.primaryColor),
            textAlign: TextAlign.center),
      ),
    );
  }

  Widget unSelectedLanguage(
      AppConfigProvider provider, String language, String languageKey) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          provider.changeAppLanguage(newLanguage: "$languageKey");
        },
        child: Text("$language",
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center),
      ),
    );
  }

  Widget selectedTheme(AppConfigProvider provider, String themeName) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          //  provider.changeAppLanguage(newLanguage: "$languageKey");
        },
        child: Text("$themeName",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: IslamiTheme.primaryColor),
            textAlign: TextAlign.center),
      ),
    );
  }

  Widget unSelectedTheme(
      AppConfigProvider provider, String themeName, bool newTheme) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          provider.changeAppTheme(newTheme: newTheme);
        },
        child: Text("$themeName",
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center),
      ),
    );
  }
}
