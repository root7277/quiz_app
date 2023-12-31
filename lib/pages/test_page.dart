import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/elevated_bottom.w.dart';
import 'package:quiz_app/widgets/test_w.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    final mavzu = ModalRoute.of(context)!.settings.arguments as List<Map>;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 53, 196, 167),
        toolbarHeight: 60,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back, color: Colors.black)),
        title: Text(
          mavzu[0]['mavzular'][6]['mavzu nomi'], 
          style: const TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w700, color: Colors.black)),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('ESLATMA:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.redAccent)),
                SizedBox(width: 10),
                Expanded(child: Text("Har bir to'g'ri javob uchun 1 ball, noto'g'ri javob uchun esa 0.5 balldan berib boriladi!", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Colors.redAccent))),
              ],
            ),
          ),
          Expanded(
            child: TestWidget(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: ElevatedBottomWidget(),
          )
        ],
      ),
    );
  }
}