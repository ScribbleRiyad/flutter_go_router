import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


// ignore: must_be_immutable
class ProfieScreen extends StatelessWidget {
  String data;
   ProfieScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text("Hello $data"),
              ElevatedButton(onPressed: (){
                //Two types of route
                   
                    context.go("/chat");
                // GoRouter.of(context).go("/chat"); 
            
                },
                
                 child: const Text("Go to"))
        ],
      ),
    ),
    );
  }
}