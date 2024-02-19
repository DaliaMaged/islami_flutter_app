import 'package:flutter/material.dart';
import 'package:islami/AppConfigProvider.dart';
import 'package:islami/home/quran_tab/sura_details.dart';
import 'package:provider/provider.dart';

class SuraNameItem extends StatefulWidget {
  String suraName;
  int index;

  SuraNameItem(this.suraName,this.index);

  @override
  State<SuraNameItem> createState() => _SuraNameItemState();
}

class _SuraNameItemState extends State<SuraNameItem> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
        onTap: () =>
    {
      Navigator.pushNamed(context, SuraDetails.sura_details,
          arguments: {
        "sura_index": widget.index,
            "sura_name":widget.suraName
          }
      )
    },
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         // Expanded(
         //      flex: 1,
         //      child:
         //       Text(
         //        "125",
         //        style: Theme.of(context).textTheme.titleLarge,
         //        textAlign: TextAlign.center,
         //      )
         //      ),
        // Expanded(
        //   child: Divider(
        //     thickness: 3,
        //     color: provider.isDarkTheme ? Theme.of(context).primaryColorDark :Theme.of(context).primaryColor,
        //   ),
        // ),
        Expanded(
            flex: 1,
            child: Text("${widget.suraName}",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center)),
      ],
    )
    );
  }
}
