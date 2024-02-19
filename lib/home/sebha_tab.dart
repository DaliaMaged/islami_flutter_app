import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/islami_theme.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  static String sebhaTab ="sebhaTab";
  @override
  State<SebhaTab> createState() => _State();
}

class _State extends State<SebhaTab> {
  var count = 0;
  var angle = 0.0;
  var tasbeehtext = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Center(
      child: Column(
        children: [
          provider.isDarkTheme
              ? Container(margin:EdgeInsets.only(top: 5),child: Image.asset("assets/imgs/head_sebha_dark.png"))
              : Container(margin:EdgeInsets.only(top: 5),child:Image.asset("assets/imgs/head_sebha_logo.png")),
          InkWell(
              onTap: () {
                countTasbeeh();
              },
              child: provider.isDarkTheme
                  ? Transform.rotate(angle:angle,child: Image.asset("assets/imgs/body_sebha_dark.png"))
                  : Transform.rotate(angle:angle,child: Image.asset("assets/imgs/body_sebha_logo.png"))),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "${AppLocalizations.of(context)?.tasbeh_count}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: provider.isDarkTheme ? IslamiTheme.secColorDark : IslamiTheme.primaryColor
            ),
            child: Text(
              "$count",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            padding: EdgeInsets.symmetric(vertical: 16,horizontal: 10),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: provider.isDarkTheme ? IslamiTheme.primaryColorDark : IslamiTheme.primaryColor
    ),
            child: Text(
              "$tasbeehtext",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  String countTasbeeh() {
    angle += (3.1415926535897932 / 4) as double;
    count++;
    if (count == 33) {
      tasbeehtext = "الحمدلله";
    } else if (count == 66) {
      tasbeehtext = "الله اكبر";
    } else if (count == 100) {
      count == 0;
      tasbeehtext = "سبحان الله";
    }
    setState(() {});
    return tasbeehtext;
  }
}
