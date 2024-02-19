import 'package:flutter/material.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/home/quran_tab/sura_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/islami_theme.dart';
import 'package:provider/provider.dart';


class QuranTab extends StatefulWidget {
  static String quran_tab = "Quran_tab";
  List<String> suras = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  State<QuranTab> createState() => _State();
}

class _State extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
        Center(child: Image.asset("assets/imgs/quran_ic.png")),
        Divider(
          thickness: 3,
          color:provider.isDarkTheme ? IslamiTheme.primaryColorDark : IslamiTheme.primaryColor ,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Column(
              //   children: [
              //     // Text(
              //     //   "${AppLocalizations.of(context)!.no_ayat}",
              //     //   style: Theme.of(context).textTheme.titleLarge,
              //     // ),
              //     Divider(
              //       thickness: 3,
              //       color: Theme.of(context).primaryColor,
              //     ),
              //   ],
              // ),
              Column(
                children: [
                  Text(
                    "${AppLocalizations.of(context)!.sura_name}",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Divider(
                    thickness: 3,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ],
          ),
        ),
        Divider(
          thickness: 3,
          color: provider.isDarkTheme ? IslamiTheme.primaryColorDark : IslamiTheme.primaryColor ,
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => SuraNameItem(widget.suras[index],index)),
        )
      ],
    );
  }
}
