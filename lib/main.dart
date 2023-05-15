
import 'package:flutter/material.dart';

import 'screen/splash_screen.dart';


void main() async {





  runApp(const GoRouterTest());
}

class GoRouterTest extends StatelessWidget {
  const GoRouterTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Go Router Test',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: const SplashScreen());
  }
}
