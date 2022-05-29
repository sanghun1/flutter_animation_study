import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: MyHome(),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Color mColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 3),
              style: TextStyle(
                color: mColor,
                fontSize: 50,
              ),
              child: Text("hi"),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  mColor = Colors.black;
                });
              },
              child: Text("버튼"),
            )
          ],
        ),
      ),
    );
  }
}
