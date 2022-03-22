import 'package:flutter/material.dart';
import 'package:music_app/data/lyrics.dart';
import 'package:music_app/data/songs.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({
    Key? key,
    required this.songTitle,
    required this.id,
  }) : super(key: key);

  final int id;
  final String songTitle;

  @override
  Widget build(BuildContext context) {
    final lyrics = idToLyrics[id] ?? '404 Not Found';
    return Scaffold(
      appBar: AppBar(
        title: Text(songTitle),
      ),
      body: Lyrics(lyrics: lyrics),
    );
  }
}

class Lyrics extends StatelessWidget {
  const Lyrics({
    Key? key,
    required this.lyrics,
  }) : super(key: key);

  final String lyrics;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Text(
          lyrics,
          style: GoogleFonts.indieFlower(textStyle: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
