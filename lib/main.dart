import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  /* Making the number for each sound dynamic */
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  /* Building the repeatable functionality for each button*/
  Expanded buildKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNum: 1),
            /*Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.red,
                child: null,
              ),
            ),*/
            buildKey(color: Colors.orange, soundNum: 2),
            /*Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(2);
                },
                color: Colors.orange,
                child: null,
              ),
            ),*/
            buildKey(color: Colors.yellow, soundNum: 3),
            /*Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(3);
                },
                color: Colors.yellow,
                child: null,
              ),
            ),*/
            buildKey(color: Colors.green, soundNum: 4),
            /*Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(4);
                },
                color: Colors.green,
                child: null,
              ),
            ),*/
            buildKey(color: Colors.teal, soundNum: 5),
            /*Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(5);
                },
                color: Colors.teal,
                child: null,
              ),
            ),*/
            buildKey(color: Colors.blue, soundNum: 6),
            /*Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(6);
                },
                color: Colors.blue,
                child: null,
              ),
            ),*/
            buildKey(color: Colors.purple, soundNum: 7),
            /*Expanded(
              child: FlatButton(
                onPressed: () {
                  playSound(7);
                },
                color: Colors.purple,
                child: null,
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
