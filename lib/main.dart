import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = AudioPlayer();
  void playSound(String soundFile) {
    setState(() {
      player.play(AssetSource(soundFile));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen.shade500,
          title: const Text(
            'Xylophone',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    playSound('note1.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.amber.shade50,
                  )),
              TextButton(
                  onPressed: () {
                    playSound('note2.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.amber[900],
                  )),
              TextButton(
                  onPressed: () {
                    playSound('note3.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.blue,
                  )),
              TextButton(
                  onPressed: () {
                    playSound('note4.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.green,
                  )),
              TextButton(
                  onPressed: () {
                    playSound('note5.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.red,
                  )),
              TextButton(
                  onPressed: () {
                    playSound('note6.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.black,
                  )),
              TextButton(
                  onPressed: () {
                    playSound('note7.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.deepPurple,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
