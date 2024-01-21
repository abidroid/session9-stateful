import 'package:flutter/material.dart';
import 'package:session9/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  // initial state
  String message = 'Hello World';

  @override
  Widget build(BuildContext context) {
    print('Build Executed');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session 9'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message),
            ElevatedButton(onPressed: () {

              setState(() {
                message = 'Decode - App Development';

              });

            }, child: const Text('Change')),

            TextButton(onPressed: (){

              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const SecondScreen();
              }));

            }, child: const Text('Go to 2nd Screen'))
          ],
        ),
      ),
    );
  }
}
