import 'package:flutter/material.dart';

class ResoultPage extends StatefulWidget {
  const ResoultPage({super.key});

  @override
  State<ResoultPage> createState() => _ResoultPageState();
}

class _ResoultPageState extends State<ResoultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 53, 196, 167),
        toolbarHeight: 60,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back, color: Colors.black)),
        title: const Text('Natijangiz', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black)),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Umumiy savollar soni 10 ta', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 16, 47, 72))),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Column(
                    children: [
                      Text("To'g'ri javoblar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 23, 244, 30))),
                      SizedBox(height: 5),
                      Text('7 ta', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 23, 244, 30))),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("Noto'g'ri javoblar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 240, 23, 8))),
                      SizedBox(height: 5),
                      Text('3 ta', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 240, 23, 8))),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 80),
              const Text('Umumiy ball:  8.5', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 16, 47, 72))),
              const SizedBox(height: 100),
              Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
                 child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 53, 196, 167)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      minimumSize: MaterialStatePropertyAll(Size(320, 60))
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, 'home_page');
                    },
                    child: const Text('Yana test ishlash', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Color.fromARGB(255, 10, 75, 129))),
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}