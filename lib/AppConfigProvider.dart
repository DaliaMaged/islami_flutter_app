import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = "en";
  changeAppLanguage({required String newLanguage}){
    appLanguage = newLanguage;
    notifyListeners();
  }
}