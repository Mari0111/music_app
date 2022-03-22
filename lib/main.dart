import 'package:flutter/material.dart';
import 'package:music_app/screens/home_screen.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
