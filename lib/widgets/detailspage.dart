import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class DetailsPage extends StatefulWidget {
  final int id;
  final String title;

  DetailsPage({Key key, this.id, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _DetailsPageState(id: id, title: title);
  }
}

class _DetailsPageState extends State<DetailsPage> {
  final flutterWebViewPlugin = new FlutterWebviewPlugin();
  bool loading = true;

  int id;
  String title;

  _DetailsPageState({this.id, this.title});

  @override
  Widget build(BuildContext context) {
    List<Widget> titleContent = [];
    titleContent.add(new Text(
      widget.title,
      style: new TextStyle(color: Colors.white),
    ));
    if (loading) {
      titleContent.add(new CupertinoActivityIndicator());
    }
    titleContent.add(new Container(width: 50.0));

    return new WebviewScaffold(
      url: "http://daily.zhihu.com/story/$id",
      appBar: new AppBar(
        title: new Text(
          widget.title,
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
      ),
      withZoom: false,
      withLocalStorage: true,
      withJavascript: true,
    );
  }
}
