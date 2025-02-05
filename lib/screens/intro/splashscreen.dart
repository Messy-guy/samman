import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:myproffesional/screens/intro/introPage.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.png",
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.elderly_woman_rounded, size: 30),
                const SizedBox(width: 10),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Samman",
                      speed: const Duration(milliseconds: 300),
                      textStyle: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                          fontFamily: 'Oswald',
                          color: Colors.black),
                    )
                  ],
                  onFinished: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => introPage()));
                  },
                  totalRepeatCount: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
