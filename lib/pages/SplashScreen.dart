import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_demo_book/pages/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      disableNavigation: false,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      duration: 2000,
      nextScreen: const HomeScreen(),
      splash: Image.asset('images/book_logo.png'),
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 200,
      centered: true,
    );
  }
}
