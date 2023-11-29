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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen.shade700,
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
                    setState(() {
                      player.play(AssetSource('note1.wav'));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.amber.shade50,
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      player.play(AssetSource('note2.wav'));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.amber[900],
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      player.play(AssetSource('note3.wav'));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.blue,
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      player.play(AssetSource('note4.wav'));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.green,
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      player.play(AssetSource('note5.wav'));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.red,
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      player.play(AssetSource('note6.wav'));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.black,
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      player.play(AssetSource('note7.wav'));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.deepPurple,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
