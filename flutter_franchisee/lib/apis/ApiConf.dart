import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/models/RespModel.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ApiConf {
  static final String BASE_URL = "http://192.168.1.78:8000";

  // 或者通过传递一个 `options`来创建dio实例
  static Dio dio = new Dio(new Options(
      connectTimeout: 5000, receiveTimeout: 3000, baseUrl: BASE_URL));

  //常规http请求统一处理 ,不能解决交互的问题
  static void proxyHttpResponse(
      Future<Response> resp, BuildContext context, Function callBack) {
    resp.then((res) {
      RespModel respModel = RespModel.fromJSON(res.data);
      //统一错误提示
      if (respModel.code != 0) {
        Fluttertoast.showToast(msg: respModel.errorMsg);
        return;
      }
      callBack(respModel.data);
    }).catchError((err) {
      //错误
      print(err);
      Fluttertoast.showToast(msg: "网络错误");
    });
  }
}
