import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'components/MyAnimatedWidget.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyAnimatedWidget(),
      ),
    );
  }
}

//   AnimatedTextKit buildAnimatedTextKit(Color mColor) {
//     return MyAnimatedWidget();
//   }
// }


