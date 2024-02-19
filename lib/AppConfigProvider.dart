import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = "en";
  bool isDarkTheme = true;
  changeAppLanguage({required String newLanguage}){
    appLanguage = newLanguage;
    notifyListeners();
  }
  changeAppTheme({required bool newTheme}){
    isDarkTheme = newTheme;
    notifyListeners();
  }
  bool isDark(){
    return isDarkTheme;
  }
}