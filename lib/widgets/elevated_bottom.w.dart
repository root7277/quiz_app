import 'package:flutter/material.dart';

class ElevatedBottomWidget extends StatefulWidget {
  const ElevatedBottomWidget({super.key});

  @override
  State<ElevatedBottomWidget> createState() => _ElevatedBottomWidgetState();
}

class _ElevatedBottomWidgetState extends State<ElevatedBottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 53, 196, 167)),
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
          minimumSize: MaterialStatePropertyAll(Size(320, 60))
        ),
        onPressed: (){
          Navigator.pushNamed(context, 'resoult');
        },
        child: const Text('Yakunlash', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 10, 75, 129))),
      ),
    );
  }
}