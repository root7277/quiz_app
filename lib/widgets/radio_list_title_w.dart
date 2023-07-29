import 'package:flutter/material.dart';

class RadioListTitleWidget extends StatefulWidget {
  const RadioListTitleWidget({super.key});

  @override
  State<RadioListTitleWidget> createState() => _RadioListTitleWidgetState();
}


class _RadioListTitleWidgetState extends State<RadioListTitleWidget> {
  String currentOption = 'ghfnbh';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          activeColor: const Color.fromARGB(255, 84, 10, 123),
          title: const Text('hvjdhklj vof', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
          value: 'my', 
          groupValue: currentOption, 
          onChanged: (value){
            setState(() {
              currentOption = value.toString();
            });
          }
        ),
        RadioListTile(
          activeColor: const Color.fromARGB(255, 84, 10, 123),
          title: const Text('sen', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
          value: 'sen', 
          groupValue: currentOption, 
          onChanged: (value){
            setState(() {
              currentOption = value.toString();
            });
          }
        ),
        RadioListTile(
          activeColor: const Color.fromARGB(255, 84, 10, 123),
          title: const Text('smy', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
          value: 'smy', 
          groupValue: currentOption, 
          onChanged: (value){
            setState(() {
              currentOption = value.toString();
            });
          }
        ),
        RadioListTile(
          activeColor: const Color.fromARGB(255, 84, 10, 123),
          title: const Text('mfdy', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
          value: 'mfdy', 
          groupValue: currentOption, 
          onChanged: (value){
            setState(() {
              currentOption = value.toString();
            });
          }
        )
      ],
    );
  }
}