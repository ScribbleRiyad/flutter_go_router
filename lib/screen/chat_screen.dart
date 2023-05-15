import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Go chat screen page"),
      
      
             ElevatedButton(onPressed: (){
              
                //Two types of route
                    context.go("/");
              // GoRouter.of(context).go("/");
              }, child: const Text("Go to"))
          ],
        ),
      ),
    );
  }
}