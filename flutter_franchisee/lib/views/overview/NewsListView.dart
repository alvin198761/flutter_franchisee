import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/models/NewsModel.dart';
import 'package:flutter_franchisee/services/NewsService.dart';
import 'package:flutter_franchisee/views/component/WebBrowser.dart';

class NewsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _NewsListViewState();
  }
}

class _NewsListViewState extends State<NewsListView> {
  List<NewsModel> newsList = new List();

  @override
  void initState() {
    super.initState();
    NewsService.queryList(context, (list) {
      setState(() {
        newsList = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Scrollbar(
//        child: RefreshIndicator(
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          itemCount: newsList.length,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemBuilder: _newsBuilder,
        ),
//            onRefresh: _onRefreshNews),
      ),
    );
  }

  Future<Null> _onRefreshNews() async {
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
    });
  }

  Widget _newsBuilder(BuildContext context, int index) {
    NewsModel news = newsList.elementAt(index);
    return new Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (BuildContext context) {
              return new WebBrowser(
                title: news.title,
                url: news.url,
              );
            }));
          },
          child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
            SizedBox(
              width: 100,
              height: 50,
              child: Image.asset(news.icon),
            ),
            Column(
              children: <Widget>[
                Text(news.title),
                Text("测试内容简述"),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[Text("时间"), Text("点击次数")],
                ),
              ],
            )
          ]),
        ));
  }
}
