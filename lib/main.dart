import 'package:flutter/material.dart';
import 'package:kaburajadulu/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "PlusJakartaSans",
        scaffoldBackgroundColor: Color(0xffF8F8F8),
      ),
      home: SplashScreen()
    );
  }
}
