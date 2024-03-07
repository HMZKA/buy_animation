import 'package:flutter/material.dart';
import 'package:flutter_store_animation/button_animated.dart';
import 'package:flutter_store_animation/buy_animation.dart';
import 'package:flutter_store_animation/constants.dart';
import 'package:flutter_store_animation/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        // primarySwatch: getMaterialColor(const Color(0xffffbd00))
      ),
      home: const TestScreen(),
    );
  }
}
