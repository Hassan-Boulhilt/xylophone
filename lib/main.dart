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

  Widget returnWidget({required color, required soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
        onPressed: () {
          playSound('note$soundNumber.wav');
        },
        child: const Text(''),
      ),
    );
  }

  ListView returnListViewBuilder() {
    return ListView.builder(
      itemExtent: 95,
      itemCount: 7, // Number of items in the list
      itemBuilder: (BuildContext context, int index) {
        index = index + 1;
        return ListTile(
          tileColor: Colors.cyan[100 * index],
          title: TextButton(
            onPressed: () {
              playSound('note$index.wav');
            },
            child: const Text(''),
          ),
        );
      },
    );
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          returnWidget(color: Colors.black, soundNumber: 1),
          returnWidget(color: Colors.white, soundNumber: 2),
          returnWidget(color: Colors.black, soundNumber: 3),
          returnWidget(color: Colors.white, soundNumber: 4),
          returnWidget(color: Colors.black, soundNumber: 5),
          returnWidget(color: Colors.white, soundNumber: 6),
          returnWidget(color: Colors.black, soundNumber: 7),
        ]),
      ),
    );
  }
}
