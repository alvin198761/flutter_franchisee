class NewsModel {
  final int id;
  final String title;
  final String icon;
  final int clickCount;
//  final DateTime time;
  final int mark;
  final String url;

  NewsModel(
      {this.id,
      this.title,
      this.icon,
      this.clickCount,
//      this.time,
      this.mark,
      this.url});

  NewsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        icon = json['icon'],
        clickCount = json['clickCount'],
//        time = DateTime.fromMicrosecondsSinceEpoch(json['time']),
        mark = json['mark'],
        url = json['url'];

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "icon": icon,
        "clickCount": clickCount,
//        "time": time.millisecondsSinceEpoch,
        "mark": mark,
        "url": url
      };
}
