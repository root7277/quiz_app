import 'package:flutter/material.dart';

class MavzularWidget extends StatefulWidget {
  const MavzularWidget({super.key});

  @override
  State<MavzularWidget> createState() => _MavzularWidgetState();
}

class _MavzularWidgetState extends State<MavzularWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('I', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 64, 17, 184))),
          const SizedBox(width: 5),
          Expanded(
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, 'test');
              },
              child: const Text(
                'fjfdf fjeiofef fkffoefdf iekf fhoihdfrc j f', 
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 10, 75, 129))
              ),
            ),
          ),
        ],
      ),
    );
  }
}