import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: XyloPhone(),
        ),
      ),
    );
  }
}

class XyloPhone extends StatefulWidget {
  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  Expanded buildKey({Color color, int sound}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  void playSound(int sound) {
    final player = new AudioCache();
    player.play('note$sound.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: Colors.blue, sound: 1),
          buildKey(color: Colors.red, sound: 7),
          buildKey(color: Colors.teal, sound: 6),
          buildKey(color: Colors.orange, sound: 5),
          buildKey(color: Colors.indigo, sound: 4),
          buildKey(color: Colors.yellow, sound: 3),
          buildKey(color: Colors.green, sound: 2),
        ],
      ),
    );
  }
}
