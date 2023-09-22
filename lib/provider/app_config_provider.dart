import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier{
  SharedPreferences? preference;
  String get appLanguage => preference?.getString('language') ?? 'ar';
  String get appTheme => preference?.getString('theme') ?? 'light';

  AppConfigProvider() {
    loadPrefs();
  }

  void loadPrefs()async{
    preference = await SharedPreferences.getInstance();
    notifyListeners();
  }

  ThemeMode? appMode(){
    if(appTheme == 'light' || appTheme == 'مضئ' ){
      return ThemeMode.light;
    }
    else if(appTheme == 'dark' || appTheme == 'ليلي'){
      return ThemeMode.dark;
    }
    notifyListeners();
  }


  Future<void> ChangeLanguage(String newLanguage)async{
      if(appLanguage == newLanguage){
        return;
      }
      else{
        await preference?.setString('language', newLanguage);
        notifyListeners();
      }
  }
  Future<void> ChangeTheme(String newMode)async{
    if(appTheme == newMode){
      return;
    }
    else{
      await preference?.setString('theme', newMode);
      notifyListeners();
    }
  }
  bool isDarkMode(){
    return appMode() == ThemeMode.dark;
  }


}