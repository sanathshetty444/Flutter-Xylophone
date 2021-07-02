import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioCache audioPlayer = new AudioCache();
  void play(String url) {
    audioPlayer.play(url);
  }

  final children = <Widget>[];
  XylophoneApp() {
    for (int i = 100; i < 800; i += 100) {
      children.add(Expanded(
        flex: 1,
        child: FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            int no = (i / 100).toInt();
            play('note$no.wav');
          },
          child: new Container(
            color: Colors.red[i],
            height: 100,
          ),
        ),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: children,
        )),
      ),
    );
  }
}
