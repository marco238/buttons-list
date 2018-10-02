import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final double iconSize = 40.0;
  int currentTab = 0;

  HomePage home;
  ChatPage chat;
  SettingsPage settings;
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    home = HomePage();
    chat = ChatPage();
    settings = SettingsPage();

    pages = [home, chat, settings];

    currentPage = home;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.redAccent,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
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
        title: new Text("My Useless App"),
        backgroundColor: Colors.redAccent,
      ),
      body: currentPage,
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

class HomePage extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = new TextStyle(
      color: Colors.grey,
      fontSize: 25.0
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
                title: new Text("Facebook", style: textStyle),
                icon: new Icon(FontAwesomeIcons.facebook, size: iconSize, color: Colors.blueAccent,)
            ),
            new MyCard(
                title: new Text("Instagram", style: textStyle),
                icon: new Icon(FontAwesomeIcons.instagram, size: iconSize, color: Colors.deepOrange,)
            ),
            new MyCard(
                title: new Text("Twitter", style: textStyle),
                icon: new Icon(FontAwesomeIcons.twitter, size: iconSize, color: Colors.lightBlueAccent,)
            ),
          ],
        ),
      ),
    );
  }
}


class ChatPage extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = new TextStyle(
      color: Colors.grey,
      fontSize: 25.0
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Chat Not Available", style: textStyle,),
            new Icon(FontAwesomeIcons.sadTear, size: iconSize, color: Colors.redAccent,)
          ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = new TextStyle(
      color: Colors.grey,
      fontSize: 25.0
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
                title: new Text("Edit Profile", style: textStyle),
                icon: new Container()
            ),
            new MyCard(
                title: new Text("Change Theme", style: textStyle),
                icon: new Container()
            ),
            new MyCard(
                title: new Text("Something else", style: textStyle),
                icon: new Container()
            ),
          ],
        ),
      ),
    );
  }
}



