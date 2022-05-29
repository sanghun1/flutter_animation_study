import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    Animation<double> _animation =
        Tween(begin: 1.0, end: 2.0).animate(_animationController);
    return Scaffold(
      body: Center(
        child: ScaleTransition(
            scale: _animation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            )),
      ),
    );
  }
}
