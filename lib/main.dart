import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: View(),
      ),
    );
  }
}

class View extends StatefulWidget {
  View({Key key}) : super(key: key);

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  Color colorcode = Colors.blueAccent;
  final Random random = Random();

  generateRandomcolor() {
    Color tempcolor = Color.fromARGB(random.nextInt(256), random.nextInt(256),
        random.nextInt(256), random.nextInt(256));

    setState(() {
      colorcode = tempcolor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorcode,
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 50),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
              onPressed: () {
                generateRandomcolor();
              },
              child: Text('Click Here To Generate Random Background Color'),
              textColor: Colors.white,
              color: Colors.redAccent,
              padding: EdgeInsets.all(10),
            ),
          ),
        ),
      ),
    );
  }
}
