import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/mavzular_w.dart';

class FanMavzusi extends StatefulWidget {
  const FanMavzusi({super.key});

  @override
  State<FanMavzusi> createState() => _FanMavzusiState();
}

class _FanMavzusiState extends State<FanMavzusi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 53, 196, 167),
        toolbarHeight: 60,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back, color: Colors.black)),
        title: const Text('Mavzuni tanlang', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return const MavzularWidget();
        }
      )
    );
  }
}