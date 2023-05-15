
import 'package:flutter/material.dart';
import 'package:go_route/screen/home_screen.dart';
import 'package:go_router/go_router.dart';

import 'screen/splash_screen.dart';


void main() async {





  runApp( GoRouterTest());
}

class GoRouterTest extends StatelessWidget {
   GoRouterTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       routerConfig:routefunction ,
        debugShowCheckedModeBanner: false,
        title: 'Go Router Test',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        );
  }





    final GoRouter routefunction =GoRouter (routes:[
 GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
  GoRoute(path: "/home", builder: (context, state) => const HomeScreen(),),
    ] );

}
