import 'package:dio/dio.dart';
import 'package:flutter_franchisee/apis/ApiConf.dart';
import 'package:flutter_franchisee/models/NewsModel.dart';

class NewsApi {
/*
  获取新闻列表
 */
  static Future<Response> queryList() async {
    return await ApiConf.dio.get("/api/news/queryList");
  }

  /*
   保存新闻
   */
  static Future<Response> save(NewsModel news) async {
    return await ApiConf.dio.post("/api/news/save", data: news.toJson());
  }
}
