

import 'package:blood_bank/screens/users.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: History(),
    );
  }
}

class History extends StatefulWidget {
  @override
  _History createState() => _History();
}

class _History extends State<History> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 2.0,
          centerTitle: true,
          title: Text(
            "History",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Users()),
              );
            },
          ),
        ),
        body: ListView(
          children: <Widget>[
        new Container (
          padding:EdgeInsets.all(20),
            child: Ink(
                color: Colors.red,

                child: Tile(text: Text("Donated"))),
              //  child:Tile(text: Text("Received")),

        ),
            new Container (
              padding:EdgeInsets.all(20),
              child: Ink(
                  color: Colors.red,
                 // child: Tile(text: Text("Donated"))),
                child:Tile(text: Text("Received"))),

            )],
        ));
  }
}

int count = 0;
List<Historyy> historyList = [];

class Historyy {
  String data;
  DateTime dateTime;

  Historyy({required this.data, required this.dateTime});
}

class Tile extends StatefulWidget {
  final Text text;
  Tile({required this.text});

  @override
  TileState createState() => TileState();
}

class TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: widget.text,
      onTap: () {


        historyList
            .add(Historyy( dateTime: DateTime.now(), data: 'City Hospital'));
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HistoryPage(),
            ));
      },
    );
  }
}

class HistoryPage extends StatefulWidget {
  @override
  HistoryPageState createState() => HistoryPageState();
}

class HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.red),
          backgroundColor: Colors.white,
          leading: IconButton(

              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: ListView.builder(
        itemCount: historyList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
               ' ${historyList[index].data}   ${historyList[index].dateTime.toString()}'),
         );
        },
      ),
    );
  }
}