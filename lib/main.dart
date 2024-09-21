import 'package:flutter/material.dart';
import 'package:project_interview/algorithm/algorithm.dart';
import 'package:project_interview/mobile/Mobile.dart';

void main() {
  // findMinMax(list); //for run test algorithm.dart
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InterviewPage(),
    );
  }
}


