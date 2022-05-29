import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  double boxOpacity = 1.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () => {change()});
  }

  void change() {
    setState(() {
      boxOpacity = 0.2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  boxOpacity = 0.2;
                });
              },
              child: Text("버튼"),
            ),
            AnimatedOpacity(
              opacity: boxOpacity,
              duration: Duration(seconds: 1),
              child: Center(
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
