import 'package:animal_biography/screens/homepage.dart';
import 'package:animal_biography/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home_page': (context) => const HomePage(),
      },
    ),
  );
}
