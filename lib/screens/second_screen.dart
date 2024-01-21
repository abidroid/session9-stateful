import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  // type inference

  // initial state
  Color bgColor = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Background Change'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(onPressed: (){

              setState(() {
                bgColor = Colors.red;

              });

            }, child: const Text('Red')),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.green;
              });
            }, child: const Text('Green')),
            ElevatedButton(onPressed: (){
              setState(() {
                bgColor = Colors.blue;
              });
            }, child: const Text('Blue')),

          ],
        ),
      ),
    );
  }
}
