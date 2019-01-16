import 'package:dio/dio.dart';
import 'package:flutter_franchisee/apis/ApiConf.dart';
import 'package:flutter_franchisee/models/UserModel.dart';

//用户相关请求api
class UserApi {
  //登录接口调用
  static Future<Response> login(String name, String password) async {
    return await ApiConf.dio
        .post("/api/user/login", data: {name: name, password: password});
  }

  //用户注册
  static Future<Response> register(UserModel model) async {
    return await ApiConf.dio.post("/api/user/register", data: model.toJSON());
  }

  //修改用户信息
  static Future<Response> update(UserModel model) async {
    return await ApiConf.dio.post("/api/user/update", data: model.toJSON());
  }
}
