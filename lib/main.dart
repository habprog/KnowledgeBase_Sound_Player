import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(soundPlayer());

class soundPlayer extends StatelessWidget {
  void sound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  static soundTemplate(Color _color, int soundNumber){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        color: _color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
              'Play with sound',
            style: TextStyle(
              color:Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              soundTemplate(Colors.red, 1),
              soundTemplate(Colors.orange, 2),
              soundTemplate(Colors.teal, 3),
              soundTemplate(Colors.green, 4),
              soundTemplate(Colors.purple, 5),
              soundTemplate(Colors.indigo, 6),
              soundTemplate(Colors.blue, 7),
            ],
          ),
        ),
      ),
    );
  }
}