import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

// main() {
//   nouns.take(50).forEach(print);
// }
void main() => runApp(XylophoneApp());
void playsound(int number) {
  final play = AudioCache();
  play.play('note$number.wav');
}

Expanded CreateButton(Color color, int number) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(number);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CreateButton(Colors.blue, 1),
                CreateButton(Colors.green, 2),
                CreateButton(Colors.red, 3),
                CreateButton(Colors.yellowAccent, 4),
                CreateButton(Colors.deepOrange, 5),
                CreateButton(Colors.teal, 6),
                CreateButton(Colors.black12, 7),
              ]),
        ),
      ),
    );
  }
}
