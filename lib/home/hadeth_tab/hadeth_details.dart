import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/home/hadeth_tab/hadeth_detail_item.dart';
import 'package:islami/home/hadeth_tab/hadeth_tab.dart';
import 'package:islami/home/quran_tab/sura_detail_item.dart';
import 'package:islami/islami_theme.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatefulWidget {
  static String hadeth_details = "hadeth_details";

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

  var args = ModalRoute.of(context)!.settings.arguments as Hadeth;

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
          title: Text("${args.title}"),
        ),
        body: ListView.builder(itemBuilder: (context,int){
              return HadethDetailItem(hadethLine:" ${args.content[int]}");
            },
          itemCount: args.content.length,
            ),
    ),

    ]);
  }
}
