import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  double radian = 0;

  // late AnimationController _animationController;

  // late Animation _animation;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        radian = radian + pi / 300;
      });
    });
    // Future.delayed(Duration(seconds : 3), () =>{
    //
    // });
    // _animationController = AnimationController(
    //     duration: Duration(seconds: 3), vsync: this);
    // _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  radian = radian + pi / 3;
                });
              },
              child: Text("버튼"),
            ),
            Transform.rotate(
              angle: radian, //
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Text("왼"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
