import 'package:flutter/material.dart';
import 'package:flutter_store_animation/button_animated.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedButton(
                  scaleAnimation: true,
                  translateAnimation: true,
                  margin: const EdgeInsets.only(bottom: 12.0),
                  child: const Center(
                    child: Text("Play Now",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            )));
  }
}
