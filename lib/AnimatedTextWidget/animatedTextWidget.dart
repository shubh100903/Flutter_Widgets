import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class Animatedtextwidget extends StatefulWidget {
  const Animatedtextwidget({super.key});

  @override
  State<Animatedtextwidget> createState() => _AnimatedtextwidgetState();
}

class _AnimatedtextwidgetState extends State<Animatedtextwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Widget'),
        backgroundColor: const Color.fromARGB(255, 94, 205, 86),
        elevation: 8.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Discipline is the key to success',
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: Duration(milliseconds: 200),
                )
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Hello', textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                RotateAnimatedText('World', textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Flutter is awesome', textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}