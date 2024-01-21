import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  // initial State
  bool switchStatus = true;
  bool bulbStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Example'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.lightbulb,
            size: switchStatus ? 200 : 100,
            color: switchStatus ? Colors.amber : Colors.black,
          ),
          Switch(
              value: switchStatus,
              onChanged: (value) {
                setState(() {
                  switchStatus = value;
                });
              }),
          IconButton(
              onPressed: () {

              setState(() {
                bulbStatus = !bulbStatus;
              });

              },
              icon: Icon(
                Icons.lightbulb,
                size: 200,
                color: bulbStatus ? Colors.amber : Colors.black,
              )),
        ],
      ),
    );
  }
}
