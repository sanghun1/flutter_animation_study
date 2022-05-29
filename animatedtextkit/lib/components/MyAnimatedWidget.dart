import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatelessWidget {
  const MyAnimatedWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        FadeAnimatedText(
          'Fade First',
          textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
        FadeAnimatedText(
          'Fade Second',
          textStyle: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.orange),
        ),
      ],
    );
  }
}