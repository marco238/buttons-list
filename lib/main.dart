import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = new TextStyle(
    color: Colors.grey,
    fontSize: 25.0
  );
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (int index) {
          setState((){
            currentTab = index;
          });
          debugPrint("Curren Tab = $currentTab, index = $index");
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, size: iconSize,),
            title: new Text("Home"),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.chat_bubble_outline, size: iconSize,),
            title: new Text("Chat")
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings, size: iconSize,),
            title: new Text("Settings")
          )
      ],
      ),
      appBar: new AppBar(
        title: new Text("Test Flutter App 3"),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                  title: new Text("I love Flutter", style: textStyle),
                  icon: new Icon(Icons.favorite, size: iconSize, color: Colors.redAccent,)
              ),
              new MyCard(
                  title: new Text("I like Dart", style: textStyle),
                  icon: new Icon(Icons.thumb_up, size: iconSize, color: Colors.blueAccent,)
              ),
              new MyCard(
                  title: new Text("Next Video", style: textStyle),
                  icon: new Icon(Icons.queue_play_next, size: iconSize, color: Colors.green,)
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


