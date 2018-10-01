import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final double iconSize = 40.0;
  final double textScaleFactor = 1.3;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Test Flutter App 1"),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                  title: new Text("I love Flutter", textScaleFactor: textScaleFactor,),
                  icon: new Icon(Icons.favorite, size: iconSize, color: Colors.redAccent,)
              ),
              new MyCard(
                  title: new Text("I like Dart", textScaleFactor: textScaleFactor,),
                  icon: new Icon(Icons.thumb_up, size: iconSize, color: Colors.blueAccent,)
              ),
              new MyCard(
                  title: new Text("Next Video", textScaleFactor: textScaleFactor,),
                  icon: new Icon(Icons.queue_play_next, size: iconSize, color: Colors.,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        ),
      ),
    );
  }
}
