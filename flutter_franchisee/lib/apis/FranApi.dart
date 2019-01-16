import 'package:dio/dio.dart';
import 'package:flutter_franchisee/apis/ApiConf.dart';
import 'package:flutter_franchisee/models/FranModel.dart';
import 'package:flutter_franchisee/models/UserModel.dart';

//加盟商相关请求api
class FranApi {
  //分页获取
  static Future<Response> queryPage(int page, FranModel model) async {
    Map<String, dynamic> params = model.toJSON();
    params["page"] = page;
    params["size"] = 10;
    return await ApiConf.dio.post("/api/fran/queryPage", data: params);
  }

  //修改加盟商信息
  static Future<Response> update(FranModel model) async {
    return await ApiConf.dio.post("/api/fran/update", data: model.toJSON());
  }

  //根据id 删除
  static Future<Response> delete(int id) async {
    return await ApiConf.dio.delete("/api/fran/delete", data: {id: id});
  }

//新建一个加盟商
  static Future<Response> save(FranModel model) async {
    return await ApiConf.dio.post("/api/fran/save", data: model.toJSON());
  }

  //根据id 查询
  static Future<Response> findById(int id) async {
    return await ApiConf.dio.get("/api/fran/findById/$id");
  }
}
