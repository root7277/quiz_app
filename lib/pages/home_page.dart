import 'package:flutter/material.dart';
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
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              FanNomi(text: 'Matetmatika'),
              FanNomi(text: 'Fizika'),
              FanNomi(text: 'Ingliz-tili'),
              FanNomi(text: 'Dasturlash'),         
            ],
          ),
        ],
      ),
    );
  }
}