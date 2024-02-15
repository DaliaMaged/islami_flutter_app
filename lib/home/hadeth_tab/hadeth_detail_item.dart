import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/hadeth_tab/hadeth_tab.dart';

class HadethDetailItem extends StatefulWidget {
  String hadethLine;
  HadethDetailItem({required this.hadethLine});

  @override
  State<HadethDetailItem> createState() => HadethDetailItemState();
}

class HadethDetailItemState extends State<HadethDetailItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child:
          Text("${widget.hadethLine}",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
          )
    );
  }
}
