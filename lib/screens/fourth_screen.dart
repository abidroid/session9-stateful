import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {

  bool _obscureText = false;
  
  // not good
  TextEditingController nameController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameController.text),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Your Name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (text){
                setState(() {
                  nameController.text = text;

                });
              },
            ),

            const SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],

              maxLength: 11,
              decoration: InputDecoration(
                hintText: 'Mobile',
                labelText: 'Your Mobile',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            TextField(
              obscureText: _obscureText,
              obscuringCharacter: '#',
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Your Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {

                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            
            ElevatedButton(onPressed: (){

              String name  = nameController.text.trim();
              if( name.isEmpty){
                print('provide name');
              }else{
                print('Name:$name');

              }
            }, child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
