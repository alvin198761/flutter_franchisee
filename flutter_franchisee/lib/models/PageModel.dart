import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//分页模型
class PageModel {
  final List<dynamic> content;
  final bool last;
  final int totalPages;
  final int totalElements;
  final int size;
  final int number;
  final int numberOfElements;
  final bool first;

  PageModel(this.content, this.last, this.totalPages, this.totalElements,
      this.size, this.number, this.numberOfElements, this.first);

  static PageModel fromJSON(data) {
    return PageModel(
        data['content'],
        data['last'],
        data['totalPages'],
        data["totalElements"],
        data["size"],
        data['number'],
        data['numberOfElements'],
        data['first']);
  }

}
