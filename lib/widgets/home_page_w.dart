import 'package:flutter/material.dart';
import 'package:quiz_app/map/quiz_api.dart';

class FanNomi extends StatefulWidget {
  final String text;
  const FanNomi({super.key, required this.text});

  @override
  State<FanNomi> createState() => _FanNomiState();
}

class _FanNomiState extends State<FanNomi> {
  @override
  Widget build(BuildContext context) {
    List<Map> sentMavzu = quizs;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: InkWell(
        onTap: () {
          setState(() {
            
          });
          Navigator.pushNamed(context, 'mavzular', arguments: sentMavzu[0]);
        },
        child: Container(
          width: 300,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: const Color.fromARGB(255, 203, 236, 16)),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: const Color.fromARGB(255, 38, 199, 178),
          ),
          child: Center(child: Text(widget.text, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black))),
        ),
      ),
    );
  }
}