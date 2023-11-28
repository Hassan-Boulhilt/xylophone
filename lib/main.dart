// ignore: unused_import
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

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
        body: const Center(),
      ),
    );
  }
}
