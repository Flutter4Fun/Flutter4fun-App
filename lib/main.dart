import 'package:flutter/material.dart';
import 'package:flutter4fun/home_page.dart';
import 'package:ui_challenge_1/ui_challenge_1.dart';
import 'package:ui_challenge_2/ui_challenge_2.dart';
import 'package:ui_challenge_3/ui_challenge_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/ui-challenge-1': (context) => UiChallenge1(),
        '/ui-challenge-2': (context) => UiChallenge2(),
        '/ui-challenge-3': (context) => UiChallenge3(),
        '/ui-challenge-4': (context) => UiChallenge3(),
      },
    );
  }
}
