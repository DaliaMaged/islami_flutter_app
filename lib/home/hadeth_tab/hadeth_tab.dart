import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth_tab/hadeth_details.dart';

class HadethTab extends StatefulWidget {
  static String hadethScreen = 'hadeth-screen';

  @override
  State<HadethTab> createState() => _State();
}

class _State extends State<HadethTab> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Center(child: Image.asset("assets/imgs/hadeth_ic.png")),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          "الاحاديث",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap:(){
                Navigator.pushNamed(context, HadethDetails.hadeth_details,
                arguments: Hadeth(title: ahadethList[index].title, content: ahadethList[index].content));
              } ,
              child: Text("${ahadethList[index].title}",
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center),
            ),
            itemCount: ahadethList.length,
          ),
        ),
      ],
    );
  }

  void loadHadeth() async {
    String hadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");
    var hadeth = hadethFile.split('#\r\n');
    for (int i = 0; i < hadeth.length; i++) {
      // hadeth wahed
      List<String> hadethLines = hadeth[i].split("\n");
      var title = hadethLines[0];
      hadethLines.removeAt(0);
      ahadethList.add(Hadeth(title: title, content: hadethLines));
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
