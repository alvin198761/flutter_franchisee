//应用程序数据
import 'dart:convert';
import 'dart:io';

import 'package:flutter_franchisee/models/UserModel.dart';
import 'package:flutter_franchisee/utils/FileUtils.dart';

class AppSystem {
  //登录用户信息
  static UserModel sessionSubjectUser;

  //用户信息存储文件
  static final String userDataPath = "alvin_fran_user.data";

  //初始化默认数据
  static void initSys(Function initUI) {
    //初始化数据
    FileUtils.getLocalFile(userDataPath).then((file) {
      if (file.existsSync()) {
//        String content = file.readAsStringSync();
        sessionSubjectUser = UserModel(1, "", "", "", "");
//        sessionSubjectUser = UserModel.fromJSON(json.decode(content));
//        print(sessionSubjectUser);
        print("读取到了用户信息");
      }
      initUI({});
    }).catchError((err) {
      print(err);
      print("没有读取到用户信息");
      initUI({});
    });
  }

  //保存用户信息
  static void saveSessionSubject(UserModel user) {
    sessionSubjectUser = user;
    FileUtils.getLocalFile(userDataPath).then((file) {
      try {
        file.openWrite().write(json.encode(user.toJSON()));
      } catch (ex) {
        print(ex);
      }
    });
  }
}
