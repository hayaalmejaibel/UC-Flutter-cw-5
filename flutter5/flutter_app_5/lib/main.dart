import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;

  var num2 = 1;

  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;

    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 193, 212),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 252, 168, 196),
          title: Text('ROCK-PAPER-SCISSORS'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  play();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/i_$num1.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/i_$num2.png',
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
              ),
              Container(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 232, 74, 127),
                  ),
                  onPressed: () {
                    play();
                  },
                  child: Text('play'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
