import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
  
class MyApp extends StatefulWidget {  
  @override  
  _MyAppState createState() => _MyAppState();  
}  
  
class _MyAppState extends State<MyApp> {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home:  Scaffold(
      body: Center(
          child: ElevatedButton.icon(
            icon: Icon(
              Icons.home,
              color: Colors.green,
              size: 30.0,
            ),
            label: Text('Elevated Button'),
            onPressed: () async => play(),
    ))));
  }

  Future<void> play() async {
    AudioPlayer advancedPlayer = new AudioPlayer();
    await advancedPlayer.play(AssetSource('test.mp3'));
  }
}