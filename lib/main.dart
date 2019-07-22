import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "About us",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget body() {
    return new Column(
      children: <Widget>[
        new Image(
          image: AssetImage("assets/iiit.jpeg"),
        ),
        new Padding(padding: EdgeInsets.only(top: 15.0)),
        new Text(
          "IIIT Bhopal",
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        new Text(
          "NTB, MANIT, Bhopal(Madhya Pradesh)",
          style: new TextStyle(color: Colors.black38),
        ),
        new Padding(padding: EdgeInsets.only(top: 15.0)),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new FlatButton(
              onPressed: null,
              child: new Column(
                children: <Widget>[
                  Icon(Icons.call, color: Colors.blue, size: 25),
                  new Text("Call", style: new TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            new FlatButton(
              onPressed: null,
              child: new Column(
                children: <Widget>[
                  Icon(Icons.directions, color: Colors.blue, size: 25),
                  new Text("Direction",
                      style: new TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            new FlatButton(
              onPressed: null,
              child: new Column(
                children: <Widget>[
                  Icon(Icons.mail_outline, color: Colors.blue, size: 25),
                  new Text("Email", style: new TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ],
        ),
        new Padding(padding: EdgeInsets.only(top: 12.0)),
    new Padding(padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: new Text(
            "INDIAN INSTITUTE OF INFORMATION TECHNOLOGY BHOPAL (IIIT-Bhopal), is one of the Indian Institutes of Information Technology (PPP) in the country, set up with the objective of making available facilities for higher education, research and training in various fields of Information Technology.To address the challenges faced by the Indian IT industry and growth of the domestic IT market, the Ministry of Human Resource Development (MHRD), Government of India intends to establish twenty Indian Institutes of Information Technology (IIIT), on a Not-for-profit Public Private Partnership (N-PPP) basis."
        ,style: TextStyle(fontSize: 13),
          textAlign: TextAlign.justify,
        ),),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("About us"),
      ),
      body: body(),
    );
  }
}
