//加盟商业务处理
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/apis/FranApi.dart';
import 'package:flutter_franchisee/models/FranModel.dart';
import 'package:flutter_franchisee/models/PageModel.dart';
import 'package:flutter_franchisee/apis/ApiConf.dart';

//做页面和请求逻辑分离，
class FranService {
  //分页查询
  static void queryPage(
      int page, FranModel model, BuildContext context, Function uiCallBack) {
    ApiConf.proxyHttpResponse(FranApi.queryPage(page, model), context, (data) {
      uiCallBack(PageModel.fromJSON(data));
    });
  }

//修改加盟商信息
  static void update(
      FranModel model, BuildContext context, Function uiCallBack) {
    ApiConf.proxyHttpResponse(FranApi.update(model), context, uiCallBack);
  }

//删除一个加盟商
  static void delete(int id, BuildContext context, Function uiCallBack) {
    ApiConf.proxyHttpResponse(FranApi.delete(id), context, uiCallBack);
  }

//新增一个加盟商
  static void save(FranModel model, BuildContext context, Function uiCallBack) {
    ApiConf.proxyHttpResponse(FranApi.save(model), context, uiCallBack);
  }

//根据ID查询
  static void findById(int id, BuildContext context, Function uiCallBack) {
    ApiConf.proxyHttpResponse(FranApi.findById(id), context, (data) {
      uiCallBack(FranModel.fromJSON(data));
    });
  }
}
