import 'package:first_app/gradient_container.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _Dice();
  }
}

class _Dice extends State<Dice> {
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'dies-Screen';
    });
  }

  void endScreen() {
    setState(() {
      activeScreen = 'start-Screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'dies-Screen') {
      screenWidget = GradientCotainer(
          endScreen,
          const Color.fromARGB(255, 163, 21, 188),
          const Color.fromARGB(255, 48, 2, 57));
    }

    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 28, 5, 156),
              Color.fromARGB(255, 6, 1, 34),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: screenWidget,
      ),
    ));
  }
}
