import 'package:cathem/model/zhihudaily.dart';
import 'package:cathem/util/apiclient.dart';
import 'package:cathem/widgets/zhihudailynewsitem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ZhihuDailyNews> _stories = List();

  @override
  void initState() {
    super.initState();
    _loadData(null);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView.builder(
          itemCount: _stories.length,
          itemBuilder: (context, i) {
            return ZhihuDailyNewsItem(_stories[i]);
          }),
    );
  }

  _loadData(String date) async {
    if (date == null) {
      var now = DateTime.now();
      var month = now.month < 10 ? "0${now.month}" : "${now.month}";
      var day = now.day < 10 ? "0${now.day}" : "${now.day}";
      date = "${now.year}$month$day";
    }
    try {
      var data = await new ApiClient().fetchBefore(date);
      setState(() {
        _stories.addAll(ZhihuDailyNewsList.fromJson(data).stories);
      });
    } catch (e) {
      print("error $e");
    }
  }
}
