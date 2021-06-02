import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

final player = AudioCache();

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Widget createTile(Color bgColor, int noteNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber);
        },
        style: TextButton.styleFrom(backgroundColor: bgColor),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createTile(Colors.red, 1),
              createTile(Colors.orange, 2),
              createTile(Colors.yellow, 3),
              createTile(Colors.green, 4),
              createTile(Colors.blue, 5),
              createTile(Colors.indigo, 6),
              createTile(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
