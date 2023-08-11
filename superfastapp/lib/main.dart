import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
  
class MyApp extends StatefulWidget {  
  @override  
  _MyAppState createState() => _MyAppState();  
}  
  
class _MyAppState extends State<MyApp> {  
  AudioPlayer advancedPlayer = AudioPlayer(); 
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home:  Scaffold(
      body: Center(
          child: IconButton(
			      icon: Image.asset('button.png'),
            iconSize: 150,
            color: Colors.white,
            onPressed: () async => play(),
          ),
    )));
  }

  Future<void> play() async {
    await advancedPlayer.play(AssetSource('test.mp3'));
  }
}