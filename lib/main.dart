import 'package:flutter/material.dart';
import 'package:keras_demo/screens/draw_screen.dart';
import 'package:keras_demo/screens/my_profile.dart';

import 'package:keras_demo/screens/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>Start(),
        '/screen':(context)=>DrawScreen(),
        '/profile':(context)=>MyProfile(),
      },
    );

  }
}