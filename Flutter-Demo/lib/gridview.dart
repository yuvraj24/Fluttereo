import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new GridViewState();
  }
}

class GridViewState extends State<GridViewDemo> {
  Container showContent(String title, String desciption) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
              child: new Stack(
            children: <Widget>[
              new FadeInImage(
                placeholder: new AssetImage("images/ic_placeholder.png"),
                image: new NetworkImage(
                    'https://wallpaperbrowse.com/media/images/3848765-wallpaper-images-download.jpg'),
              )
            ],
          )),
//          new Image.network(
//            'http://www.hcxypz.com/data/out/149/648637.jpeg',
//            fit: BoxFit.scaleDown,
//            width: 100.0,
//            height: 100.0,
//          ),
          new Container(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: new Column(children: <Widget>[
                new Text(
                  "$title",
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'roboto',
                      fontStyle: FontStyle.normal),
                ),
                new Text(
                  "$desciption",
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridView"),
      ),
      body: new GridView.count(
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        children: new List<Widget>.generate(30, (index) {
          return new GridTile(
            child: new Container(
              margin: const EdgeInsets.all(8.0),
              child: new Card(
                  color: Colors.white70,
                  elevation: 5.0,
                  child: new Center(
                    child: showContent("tile", "$index"),
                  )),
            ),
          );
        }),
      ),
    );
  }
}
