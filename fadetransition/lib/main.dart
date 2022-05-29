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
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;


    Animation<RelativeRect> _animation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, height, 0, 0),
      end: RelativeRect.fromLTRB(0, 0, 0, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
    ));
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            PositionedTransition(
              rect: _animation,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
