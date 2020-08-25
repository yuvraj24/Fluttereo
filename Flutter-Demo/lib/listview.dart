import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListViewState();
  }
}

class ListViewState extends State<ListViewDemo> {
  Container showContent(int title, int desciption) {
    return new Container(
      margin: const EdgeInsets.all(5.0),
      child: new Card(
        color: Colors.white70,
        elevation: 5.0,
        child: new Center(
          child: new Container(
            color: Colors.white70,
            child: new Column(
              children: <Widget>[
                new FadeInImage(
                  placeholder: new AssetImage("images/ic_placeholder.png"),
                  image: new NetworkImage(
                      'https://wallpaperbrowse.com/media/images/3848765-wallpaper-images-download.jpg'),
                ),
                new Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                    child: new Column(children: <Widget>[
                      new Text(
                        "Title $title",
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'roboto',
                            fontStyle: FontStyle.normal),
                      ),
                      new Text(
                        "Description $desciption",
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'roboto',
                            fontStyle: FontStyle.normal),
                      )
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
          title: new Text("ListView"),
        ),
        body: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            showContent(1, 1),
            showContent(2, 2),
            showContent(3, 3),
            showContent(4, 4),
            showContent(5, 5),
            showContent(6, 6),
            showContent(7, 7),
            showContent(8, 8),
            showContent(9, 9),
            showContent(10, 10),
            showContent(12, 12),
            showContent(13, 13),
            showContent(14, 14),
            showContent(15, 15),
            showContent(16, 16),
            showContent(17, 17),
            showContent(18, 18),
            showContent(19, 19),
            showContent(20, 20),
          ],
        ));
  }
}
