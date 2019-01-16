//用户业务处理
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/apis/ApiConf.dart';
import 'package:flutter_franchisee/apis/UserApi.dart';
import 'package:flutter_franchisee/models/RespModel.dart';
import 'package:flutter_franchisee/models/UserModel.dart';
import 'package:flutter_franchisee/sys/AppSystem.dart';
import 'package:fluttertoast/fluttertoast.dart';

//用户相关业务处理
class UserService {
  //登录业务处理
  static void login(String name, String password, BuildContext context) {
    ApiConf.proxyHttpResponse(UserApi.login(name, password), context, (data) {
      AppSystem.saveSessionSubject(UserModel.fromJSON(data));
      Fluttertoast.showToast(msg: "登录成功！");
      Navigator.pushNamed(context, "/");
    });
  }

  //用户注册
  static void register(UserModel model, BuildContext context) {
    UserApi.register(model).then((res) {
      RespModel respModel = RespModel.fromJSON(res.data);
      if (respModel.code != 0) {
        Fluttertoast.showToast(msg: respModel.errorMsg);
        return;
      }
      AppSystem.sessionSubjectUser = UserModel.fromJSON(respModel.data);
      Fluttertoast.showToast(msg: "注册成功，请登录！");
      Navigator.pushNamed(context, "/login");
    }).catchError((err) {});
  }


}
