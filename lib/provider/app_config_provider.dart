import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  String appLanguage = 'ar';

  void ChangeLanguage(String newLanguage){
      if(appLanguage == newLanguage){
        return;
      }
      else{
        appLanguage = newLanguage;
        notifyListeners();
      }
  }
}