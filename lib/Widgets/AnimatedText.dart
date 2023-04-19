import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Text'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('Dhruv Sisodia',
                  // colors: Colors.primaries,
                  textStyle: const TextStyle(
                    fontFamily: 'Canterbury',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    ),
                    // speed: Duration(milliseconds: 1200),
                  )
                  
                ],
                pause: Duration(milliseconds: 200),
                // displayFullTextOnTap: true,
                // stopPauseOnTap: true,
                // totalRepeatCount: 3,
                ),
          ],
        ),
      ),
    );
   
  }
}