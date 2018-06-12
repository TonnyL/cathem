import 'package:json_annotation/json_annotation.dart';

part 'zhihudaily.g.dart';

@JsonSerializable()
class ZhihuDailyNewsList extends Object
    with _$ZhihuDailyNewsListSerializerMixin {
  String date;
  List<ZhihuDailyNews> stories;

  ZhihuDailyNewsList({this.date, this.stories});

  factory ZhihuDailyNewsList.fromJson(Map<String, dynamic> json) =>
      _$ZhihuDailyNewsListFromJson(json);
}

@JsonSerializable()
class ZhihuDailyNews extends Object with _$ZhihuDailyNewsSerializerMixin {
  String title;
  List<String> images;
  int type;
  int id;

  ZhihuDailyNews({this.title, this.images, this.type, this.id});

  factory ZhihuDailyNews.fromJson(Map<String, dynamic> json) =>
      _$ZhihuDailyNewsFromJson(json);
}
