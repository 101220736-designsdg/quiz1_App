import 'dart:collection';
import 'dart:nativewrappers/_internal/vm/lib/math_patch.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Randomequote());
  }
}

class Randomequote extends StatefulWidget {
  State<Randomequote> createState() => _RandomequoteState;
}

class _RandomequoteState extends State<Randomequote> {
  String message = " ";
  final Random random = Random();
  final List<String> emojis = [" 💪", " 🚀", "⭐", " ❓"];
  void rest() {
    setState(() {
      message = " Tap new quote to get motivated ";
      var x = emojis[3];
    });
  }
  void newquote(){
    String y=emojis[random()];
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tap new quote to get motivate '),
        backgroundColor: const Color.fromARGB(255, 195, 195, 201),
        centerTitle:,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              'you can do it ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 30),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
              ],
            ),

            SizedBox(height: 40),

            
            Text(
              '',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30),

            
            ElevatedButton.icon(
              onPressed: rest(),
              icon: Icon(Icons.refresh),
              label: Text('Restart'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 207, 22, 22),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            ElevatedButton.icon(onPressed: newquote, label: label)
          ],
        ),
      ),
    );
  }

  

}
