import 'package:flutter/material.dart';
import 'core/constants/app_routes.dart';
import 'screens/splash_screen.dart';
import 'screens/screen_1.dart';
import 'screens/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SCUBE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.screen1: (context) => const Screen1(),
        AppRoutes.screen2: (context) => const Screen2(),
      },
    );
  }
}