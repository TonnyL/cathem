// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zhihudaily.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

ZhihuDailyNewsList _$ZhihuDailyNewsListFromJson(Map<String, dynamic> json) =>
    new ZhihuDailyNewsList(
        date: json['date'] as String,
        stories: (json['stories'] as List)
            ?.map((e) => e == null
                ? null
                : new ZhihuDailyNews.fromJson(e as Map<String, dynamic>))
            ?.toList());

abstract class _$ZhihuDailyNewsListSerializerMixin {
  String get date;
  List<ZhihuDailyNews> get stories;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'date': date, 'stories': stories};
}

ZhihuDailyNews _$ZhihuDailyNewsFromJson(Map<String, dynamic> json) =>
    new ZhihuDailyNews(
        title: json['title'] as String,
        images: (json['images'] as List)?.map((e) => e as String)?.toList(),
        type: json['type'] as int,
        id: json['id'] as int);

abstract class _$ZhihuDailyNewsSerializerMixin {
  String get title;
  List<String> get images;
  int get type;
  int get id;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'images': images,
        'type': type,
        'id': id
      };
}
