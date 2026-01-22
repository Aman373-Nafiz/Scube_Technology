import 'package:flutter/material.dart';
import 'package:scube_technologies/screens/screen_2.dart';
import 'package:scube_technologies/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen2(),
      title: 'SCUBE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    
      debugShowCheckedModeBanner: false,
    );
  }
}

