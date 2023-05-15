
import 'package:flutter/material.dart';
import 'package:go_route/route/route_name.dart';
import 'package:go_route/screen/chat_screen.dart';
import 'package:go_route/screen/home_screen.dart';
import 'package:go_route/screen/profile_screen.dart';
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





    final GoRouter routefunction =GoRouter (  initialLocation: "/" ,routes:[
      //normal Routing
//  GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
//   GoRoute(path: "/home", builder: (context, state) => const HomeScreen(),),
//   GoRoute(path: "/profile", builder: (context, state) => const ProfieScreen(),),
//   GoRoute(path: "/chat", builder: (context, state) => const ChatScreen(),),

// child parents Routing
//  GoRoute(path: "/", builder: (context, state) => const SplashScreen(),
//   routes:[
//    GoRoute(path: "home", builder: (context, state) => const HomeScreen(),),
//   GoRoute(path: "profile", builder: (context, state) => const ProfieScreen(),),
//   GoRoute(path: "chat", builder: (context, state) => const ChatScreen(),)


    //pasing Parameter routing
  //  GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
  //  GoRoute(path: "/home", builder: (BuildContext context, GoRouterState state) => const HomeScreen(),),
  //  GoRoute(path: "/chat", builder: (context, state) => const ChatScreen(),),
  //  GoRoute(path: "/profile:data", builder: ( BuildContext context, GoRouterState state) =>  ProfieScreen(
  //   data: state.pathParameters['data']!
  //  ),),

  //Named Route
 GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
   GoRoute(  name :RouteName.homepage   ,path: "/home", builder: (BuildContext context, GoRouterState state) => const HomeScreen(),),
   GoRoute(name : RouteName.chatpage ,path: "/chat", builder: (context, state) => const ChatScreen(),),
   GoRoute(name : RouteName.profilepage,path: "/profile:data", builder: ( BuildContext context, GoRouterState state) =>  ProfieScreen(
    data: state.pathParameters['data']!
   ),),


  ]


);
 
 
   

}
