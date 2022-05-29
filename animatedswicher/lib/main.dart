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
  dynamic mWidget = FirstWidget(); // 값이 한번 정해지면 var => FirstWidget 타입으로 변경

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 3),
              child: mWidget,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  mWidget = SecondWidget();
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

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 100,
      height: 100,
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      width: 300,
      height: 300,
    );
  }
}
