import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final player = AudioCache();

  // play each sound
  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  // clickable button
  Expanded buttonTile(Color color, int soundNum) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        child: const Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonTile(Colors.red, 1),
              buttonTile(Colors.orange, 2),
              buttonTile(Colors.yellow, 3),
              buttonTile(Colors.green, 4),
              buttonTile(Colors.blueAccent, 5),
              buttonTile(Colors.purple, 6),
              buttonTile(Colors.pinkAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
