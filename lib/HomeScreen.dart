import 'package:flutter/material.dart';
import 'package:islami/home/hadeth_tab.dart';
import 'package:islami/home/quran_tab/quran_tab.dart';
import 'package:islami/home/radio_tab.dart';
import 'package:islami/home/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static String homeScreen = "HomeScreen";

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabsList = [
    QuranTab(),HadethTab(),SebhaTab(),RadioTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/imgs/background.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami"),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (navIndex){
                currentIndex = navIndex;
                tabsList[navIndex];
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/imgs/quran.png")),
                    label: "Quran"
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/imgs/hadeth.png")),
                    label: "Hadeth"
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/imgs/sebha.png")),
                    label: "Sebha"
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/imgs/radio.png")),
                    label: "Radio")
              ],
            ),
          ),
          body: tabsList[currentIndex],
        )
      ],
    );
  }
}
