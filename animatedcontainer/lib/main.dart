import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  late Size size;
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    print("size ${size}");
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            child: Icon(Icons.menu),
            onTap: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Text("animation Screen"),
          ),
          AnimatedContainer(
            curve: Curves.easeInOut,
            // easeInOutBack
            duration: Duration(seconds: 1),
            height: double.infinity,
            width: size.width * (2 / 3),
            color: Colors.blue,
            transform: Matrix4.translationValues(
                isOpen ? size.width * (1 / 3) : size.width, 0, 0),
          )
        ],
      ),
    );
  }
}
