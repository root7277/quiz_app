import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  String currentOption = 'fd';

  @override
  Widget build(BuildContext context) {
    final tests = ModalRoute.of(context)!.settings.arguments as List<Map>;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tests[0]['mavzular'][index]['test'][index]['id'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 64, 17, 184))),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      tests[0]['mavzular'][index]['test'][index]['savol'], 
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 10, 75, 129))
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  RadioListTile(
                    activeColor: const Color.fromARGB(255, 84, 10, 123),
                    title: Text(tests[0]['mavzular'][index]['test'][index]['kalit'][0]['text'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
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
                    title: Text(tests[0]['mavzular'][index]['test'][index]['kalit'][1]['text'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
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
                    title: Text(tests[0]['mavzular'][index]['test'][index]['kalit'][2]['text'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
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
                    title: Text(tests[0]['mavzular'][index]['test'][index]['kalit'][3]['text'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 94, 30, 191))),
                    value: 'mfdy', 
                    groupValue: currentOption, 
                    onChanged: (value){
                      setState(() {
                        currentOption = value.toString();
                      });
                    }
                  )
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}