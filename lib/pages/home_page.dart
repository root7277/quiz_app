import 'package:flutter/material.dart';
import 'package:quiz_app/map/quiz_api.dart';
import 'package:quiz_app/widgets/home_page_w.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 196, 167),
        toolbarHeight: 60,
        elevation: 0,
        title: const Text(
          'Fanlar',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: quizs.length,
        itemBuilder: ((context, index) {
          return FanNomi(text: quizs[index]['fan nomi']);
        })
      ),
    );
  }
}