import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppThemeMode extends _$AppThemeMode{
  @override
  ThemeMode build(){
    return ThemeMode.system;
  }
  void setLightTheme() => state = ThemeMode.light;
  void setDarkTheme() => state = ThemeMode.dark;
  void toggleTheme(){
    if(state == ThemeMode.light){
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }
  void setSystemTheme() => state = ThemeMode.system;
}