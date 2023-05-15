import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ProfieScreen extends StatelessWidget {
  const ProfieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Go Profile page"),
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