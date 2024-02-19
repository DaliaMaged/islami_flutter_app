import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/home/quran_tab/sura_detail_item.dart';
import 'package:islami/islami_theme.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static String sura_details = "sura_details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> ayat = [];
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    var index = args['sura_index'];
    var sura_name = args['sura_name'];

    if(ayat.isEmpty) {
      readAyatFromFile(index: index) ;
    };

    return Stack(children: [
      provider.isDarkTheme ? Image.asset(
        "assets/imgs/background_dark.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ) :
      Image.asset(
        "assets/imgs/background.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text("$sura_name"),
        ),
        body: ayat.isEmpty? CircularProgressIndicator(
          color: IslamiTheme.primaryColor,
        )
        : ListView.builder(itemBuilder: (context,int){
              return SuraDetailItem(aya: '${ayat[int]}', index: '${int + 1}',
              );
            },
          itemCount: ayat.length,
            ),
    ),

    ]);
  }

   readAyatFromFile({required int index}) async {
    var aya = await rootBundle.loadString("assets/files/${index+1}.txt");
    ayat = aya.split("\n");
    setState(() {
    });
  }
}
