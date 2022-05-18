import 'package:flutter/material.dart';
import 'ui/home/homeapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'animale',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        fontFamily: 'ubuntu',
        primaryColor: Colors.amberAccent,
        primarySwatch: Colors.deepPurple,
        backgroundColor: Colors.amberAccent,
    ),
      home: const HomeApp(),
    );
  }
}

