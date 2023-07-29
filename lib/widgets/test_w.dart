import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/radio_list_title_w.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('I', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 64, 17, 184))),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  'fjfdf fjeiofef fkffoefdf iekf fhoihdfrc j ff       hsfhsdufhdiufsb fhdfhfjf fhfjfhjkfsfhujf hfwihj uieh kjhfihfi  huiw  h wifhw iffk hjjiw fhf sjfhw9f ikf?', 
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 10, 75, 129))
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          RadioListTitleWidget(),
        ],
      ),
    );
  }
}