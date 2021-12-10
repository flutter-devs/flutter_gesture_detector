import 'package:flutter/material.dart';
import 'package:gesture_detector_demo/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gesture Detector',
      home: GestureDetectorScreen(),
      // home: MyHomePage(),
    );
  }
}

