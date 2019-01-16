import 'package:flutter/material.dart';
import 'package:flutter_franchisee/views/HomePage.dart';
import 'package:flutter_franchisee/views/LoginView.dart';
import 'package:flutter_franchisee/views/RegisterView.dart';
import 'package:flutter_franchisee/views/fran/AddPage.dart';
import 'package:flutter_franchisee/views/fran/SearchPage.dart';

Map<String, WidgetBuilder> getRoutes(context) {
  return {
    "/": (BuildContext context) => HomePage(),
    "/login": (BuildContext context) => LoginView(),
    "/register": (BuildContext context) => RegisterView(),
    "/fran/search" : (BuildContext context) => SearchPage(),
    "/fran/add" : (BuildContext context) => AddPage(),
  };
}
