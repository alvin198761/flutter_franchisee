import 'package:flutter/material.dart';
import 'package:flutter_franchisee/sys/AppSystem.dart';
import 'package:flutter_franchisee/views/App.dart';

void main() {
  AppSystem.initSys((data){
    runApp(App());
  });

}
