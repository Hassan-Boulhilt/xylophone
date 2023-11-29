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
          body: ListView.builder(
            itemCount: 8, // Number of items in the list
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: TextButton(
                  onPressed: () {
                    playSound('note$index.wav');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 75,
                    color: Colors.cyan[100 * index],
                  ),
                ),
              );
            },
          )),
    );
  }
}
