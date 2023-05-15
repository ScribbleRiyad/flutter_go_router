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
             ElevatedButton(onPressed: (){
              
               String data = "Riyad";
                    
              context.go("/profile$data");}, child: const Text("Go to"))
         ],
       ),
     ),
    );
  }
}