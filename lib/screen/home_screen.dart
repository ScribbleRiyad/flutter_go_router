import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Text("Go Route"),
             ElevatedButton(onPressed: (){GoRouter.of(context).go("/profile");}, child: const Text("Go to"))
         ],
       ),
     ),
    );
  }
}