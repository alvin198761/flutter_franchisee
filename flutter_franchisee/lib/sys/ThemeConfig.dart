import 'package:flutter/material.dart';

//统一主题配置
ThemeData getTheme(context) {
  return ThemeData(
    primaryColor: Colors.deepOrangeAccent,
    buttonColor: Colors.deepOrangeAccent,
//    tabBarTheme: TabBarTheme(unselectedLabelColor: Colors.deepOrangeAccent),
    iconTheme: IconThemeData(color: Colors.deepOrangeAccent),
  );
}
