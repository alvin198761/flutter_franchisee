//加盟商业务处理
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/apis/FranApi.dart';
import 'package:flutter_franchisee/apis/NewsApi.dart';
import 'package:flutter_franchisee/models/FranModel.dart';
import 'package:flutter_franchisee/models/NewsModel.dart';
import 'package:flutter_franchisee/models/PageModel.dart';
import 'package:flutter_franchisee/apis/ApiConf.dart';

//做页面和请求逻辑分离，
class NewsService {
  //分页查询
  static void queryList(BuildContext context, Function uiCallBack) {
    ApiConf.proxyHttpResponse(NewsApi.queryList(), context, (data) {
      print(data);
      List<NewsModel> list = new List();
      for (var item in data) {
        list.add(NewsModel.fromJson(item));
      }

      uiCallBack(list);
    });
  }
}
