import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/pages/mavzular.dart';
import 'package:quiz_app/pages/resoult_page.dart';
import 'package:quiz_app/pages/test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_page',
      routes: {
        'home_page':(context) => const HomePage(),
        'mavzular':(context) => const FanMavzusi(),
        'test':(context) => const TestPage(),
        'resoult':(context) => const ResoultPage(),
      },
    );
  }
}

