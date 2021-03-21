// Author: Beka Darjania

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Hello World",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _current = 0;
  List<String> _texts = [
    "Earth: you are somewhere here!",
    "Mars: Elon is going to mars!",
    "Pluto: Yes Pluto is a planet!"
  ];
  List<String> _urls = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/1200px-The_Earth_seen_from_Apollo_17.jpg",
    "https://static.scientificamerican.com/sciam/cache/file/55E33AA4-906B-4473-BEB0A2F0CAB1F062_source.jpg?w=590&h=800&BA5665D0-AA86-401B-B85C43D7C2390329",
    "https://earthsky.org/upl/2019/11/Pluto-false-color-New-Horizons-2015-800x813.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("btu HW-1"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              child: Text("3 Planets",
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              padding: EdgeInsets.all(10)
            ),
            Image.network(_urls[_current]),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(_texts[_current],
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text("Earth"),
                  onPressed: () {
                    setState(() {
                      _current = 0;
                    });
                  },
                ),
                FlatButton(
                  child: Text("Mars"),
                  onPressed: () {
                    setState(() {
                      _current = 1;
                    });
                  },
                ),
                FlatButton(
                  child: Text("Pluto"),
                  onPressed: () {
                    setState(() {
                      _current = 2;
                    });
                  },
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
