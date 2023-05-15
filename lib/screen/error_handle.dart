import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../route/route_name.dart';


// ignore: must_be_immutable
class ErrorScreen extends StatelessWidget {
  String data;
   ErrorScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
      body: Center(
        child: Text("Routing Has Errro"),
      ),
      ),
    );
  }
}