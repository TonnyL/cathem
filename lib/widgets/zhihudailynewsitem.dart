import 'package:cathem/model/zhihudaily.dart';
import 'package:cathem/widgets/detailspage.dart';
import 'package:flutter/material.dart';

class ZhihuDailyNewsItem extends StatelessWidget {
  ZhihuDailyNewsItem(this.story);

  final ZhihuDailyNews story;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            new Image.network(
              story.images.first,
              alignment: Alignment.centerLeft,
              height: 64.0,
              width: 64.0,
            ),
            new Container(
              width: 8.0,
            ),
            new Expanded(
              child: new Text(
                story.title,
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.body1,
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) =>
                new DetailsPage(id: story.id, title: story.title),
          ),
        );
      },
    );
  }
}
