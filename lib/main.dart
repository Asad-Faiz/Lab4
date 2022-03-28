import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dice = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Roller',
      
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                dice = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$dice.png'),
          ),
        ),
      ),
    );
  }
}
