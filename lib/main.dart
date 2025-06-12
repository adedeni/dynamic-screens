import 'package:flutter/material.dart';
import 'package:screens/class/bottom_bar.dart';
import 'package:screens/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Different Screens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primaryColor: primaryColor,
      ),
      home: const BottomBar(),
    );
  }
}


