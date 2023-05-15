# go_route

A new Flutter project.
[Flutter Go Router Test](https://pub.dev/packages/go_router)        :- https://pub.dev/packages/go_router <br><br>

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


🔰go vs push different in flutter route
✅Think of go as a way to jump to a new route. This will modify the underlying navigation stack if the new route is not a sub-route of the old one. On the other hand, push will always push the destination route on top of the existing navigation stack.

🔰🔰🔰🔰 Router Fuction Demo Code 
✅  final GoRouter routefunction =GoRouter (
    
    // redridect function
     redirect: (BuildContext context, GoRouterState state) {
      
      
       if(isboggedIn)
      
      {
    return "/home";
       }
       else{
         return "/chat";
       }
     },
    
     errorBuilder: ( BuildContext context, GoRouterState state) => const ErrorScreen(),
    routes:[
      //normal Routing
     GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
     GoRoute(path: "/home", builder: (context, state) => const HomeScreen(),),
     GoRoute(path: "/profile", builder: (context, state) => const ProfieScreen(),),
     GoRoute(path: "/chat", builder: (context, state) => const ChatScreen(),),

     //Normar Routing
     GoRoute(path: "/", builder: (context, state) => const SplashScreen(),
    routes:[
    GoRoute(path: "home", builder: (context, state) => const HomeScreen(),),
    GoRoute(path: "profile", builder: (context, state) => const ProfieScreen(),),
    GoRoute(path: "chat", builder: (context, state) => const ChatScreen(),)


    //pasing Parameter routing
    GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
    GoRoute(path: "/home", builder: (BuildContext context, GoRouterState state) => const HomeScreen(),),
    GoRoute(path: "/chat", builder: (context, state) => const ChatScreen(),),
    GoRoute(path: "/profile:data", builder: ( BuildContext context, GoRouterState state) =>  ProfieScreen(
     data: state.pathParameters['data']!
    ),),

    //Named Routing
    GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
    GoRoute(  name :RouteName.homepage   ,path: "/home", builder: (BuildContext context, GoRouterState state) => const HomeScreen(),),
    GoRoute(name : RouteName.chatpage ,path: "/chat", builder: (context, state) => const ChatScreen(),)
    GoRoute(name : RouteName.profilepage,path: "/profile:data", builder: ( BuildContext context, GoRouterState state) =>  ProfieScreen(
    data: state.pathParameters['data']! ),),
  

    // quary routing
    GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
    GoRoute(  name :RouteName.homepage   ,path: "/home", builder: (BuildContext context, GoRouterState state) => const HomeScreen(),),
    GoRoute(name : RouteName.chatpage ,path: "/chat", builder: (context, state) => const ChatScreen(),),
     GoRoute(name : RouteName.profilepage,path: "/profile", builder: ( BuildContext context, GoRouterState state) =>  ProfieScreen(
     data: state.queryParameters['data']!
    ),),


    // redirect
    GoRoute(name : RouteName.login ,path: "/login", builder: (context, state) => const LoginScreen(),),
 
    GoRoute(path: "/", builder: (context, state) => const SplashScreen(),),
    GoRoute(  name :RouteName.homepage   ,path: "/home", builder: (BuildContext context, GoRouterState state) => const HomeScreen(),),
    GoRoute(name : RouteName.chatpage ,path: "/chat", builder: (context, state) => const ChatScreen(),),
  
    GoRoute(name : RouteName.profilepage,path: "/profile", builder: ( BuildContext context, GoRouterState state) =>  ProfieScreen(
    data: state.queryParameters['data']!
    ),),

    ]
    );
 
