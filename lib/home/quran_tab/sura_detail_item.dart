import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraDetailItem extends StatefulWidget {
  String aya;
  String index;
  SuraDetailItem({required this.aya,required this.index});

  @override
  State<SuraDetailItem> createState() => SuraDetailItemState();
}

class SuraDetailItemState extends State<SuraDetailItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child:
          Text("${widget.aya}(${widget.index})",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
          )
    );
  }
}
