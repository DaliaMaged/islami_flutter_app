import 'package:flutter/material.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/islami_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: IslamiTheme.primaryColor,
          borderRadius: BorderRadius.circular(25)
      ),
      child:Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context) => Expanded(
                child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    provider.appLanguage == "en" ?   selectedLanguage(provider, "English") : selectedLanguage(provider, "العربية"),
                    provider.appLanguage == "en" ? unSelectedLanguage(provider, "العربية", "ar") :unSelectedLanguage(provider, "ُEnglish", "en")
                  ],),
              ) );
            },
            child:  Text(
                "${AppLocalizations.of(context)?.language}",
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
        )
        // Expanded(
        //     flex: 1,
        //     child:
        //     InkWell(
        //       onTap: () {
        //         provider.changeAppLanguage(newLanguage: "en");
        //       },
        //       child: Text(
        //         "English",
        //         style: Theme
        //             .of(context)
        //             .textTheme
        //             .titleLarge,
        //         textAlign: TextAlign.center,
        //       ),
        //     )
        // ),
        // Divider(
        //   thickness: 3,
        //   color: Theme
        //       .of(context)
        //       .primaryColor,
        // ),
        // Expanded(
        //     flex: 1,
        //     child: InkWell(
        //       onTap: () {
        //         provider.changeAppLanguage(newLanguage: "ar");
        //       },
        //       child: Text("العربية",
        //           style: Theme
        //               .of(context)
        //               .textTheme
        //               .titleLarge,
        //           textAlign: TextAlign.center),
        //     )),

    );
  }
  Widget selectedLanguage(AppConfigProvider provider,String language){
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
            onTap: () {
            //  provider.changeAppLanguage(newLanguage: "$languageKey");
            },
            child: Text("$language",
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge?.copyWith(
                  color: IslamiTheme.primaryColor
                ),
                textAlign: TextAlign.center),
          ),
    );
  }
Widget unSelectedLanguage(AppConfigProvider provider,String language,String languageKey){
  return Container(
    padding: EdgeInsets.all(10),
    child: InkWell(
            onTap: () {
              provider.changeAppLanguage(newLanguage: "$languageKey");
            },
            child: Text("$language",
                style: Theme
                    .of(context)
                    .textTheme
                    .titleLarge,
                textAlign: TextAlign.center),
          ),
  );
}
}