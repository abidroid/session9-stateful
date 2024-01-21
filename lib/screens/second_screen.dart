import 'package:flutter/material.dart';
import 'package:session9/screens/third_screen.dart';

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

            TextButton(onPressed: (){

              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                return const ThirdScreen();
              }));

            }, child: const Text('Go to 3rd Screen'))
          ],
        ),
      ),
    );
  }
}
