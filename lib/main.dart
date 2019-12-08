import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({Color color, int buttonNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(buttonNumber);
        },
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
            children: <Widget>[
              buildKey(color: Colors.red, buttonNumber: 1),
              buildKey(color: Colors.orange, buttonNumber: 2),
              buildKey(color: Colors.yellow, buttonNumber: 3),
              buildKey(color: Colors.green, buttonNumber: 4),
              buildKey(color: Colors.blue, buttonNumber: 5),
              buildKey(color: Colors.indigo, buttonNumber: 6),
              buildKey(color: Colors.purple, buttonNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
