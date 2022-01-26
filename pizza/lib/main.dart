// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> resturants = [
    "Nowhere",
    "Katero",
    "ViewPoint",
    "WhiteHouse",
    "Dovilla",
    "RiskyPlace",
    "Annapurna Lake View",
    "Ambika juice"
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("What do you want to eat?"),
          Center(
              child: Text(
            resturants[currentIndex],
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: TextButton(
              onPressed: () {
                updateIndex();
              },
              child: Text("Pick Restaurant"),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(resturants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
