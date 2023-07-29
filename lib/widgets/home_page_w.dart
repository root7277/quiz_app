import 'package:flutter/material.dart';

class FanNomi extends StatefulWidget {
  final String text;
  const FanNomi({super.key, required this.text});

  @override
  State<FanNomi> createState() => _FanNomiState();
}

class _FanNomiState extends State<FanNomi> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, 'mavzular');
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