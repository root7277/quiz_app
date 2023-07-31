import 'package:flutter/material.dart';

class MavzularWidget extends StatefulWidget {
  const MavzularWidget({super.key});

  @override
  State<MavzularWidget> createState() => _MavzularWidgetState();
}

class _MavzularWidgetState extends State<MavzularWidget> {
  @override
  Widget build(BuildContext context) {
    final getMavzu = ModalRoute.of(context)!.settings.arguments as List<Map>;
    List<Map> getTest = getMavzu;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(getMavzu[0]['mavzular'][index]['id'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 64, 17, 184))),
              const SizedBox(width: 5),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      
                    });
                    Navigator.pushNamed(context, 'test', arguments: getTest);
                  },
                  child: Text(
                    getMavzu[0]['mavzular'][index]['mavzu nomi'], 
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 10, 75, 129))
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}