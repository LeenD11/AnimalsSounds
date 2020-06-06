import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String soundName) {
    final player = AudioCache();
    player.play('$soundName.wav');
  }

  Expanded buildKey({String image, String soundName}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundName);
        },
        child: Image.asset('images/$image.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animals Sounds'),
          backgroundColor: Colors.green[400],
        ),
        backgroundColor: Colors.green[200],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildKey(image: 'chicken', soundName: 'chicken'),
                  buildKey(image: 'chick', soundName: 'chick'),
                ],
              ),
              Row(
                children: <Widget>[
                  buildKey(image: 'horse', soundName: 'horse'),
                  buildKey(image: 'dog', soundName: 'dog'),
                ],
              ),
              Row(
                children: <Widget>[
                  buildKey(image: 'pig', soundName: 'pig'),
                  buildKey(image: 'sheep', soundName: 'sheep'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
