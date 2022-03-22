import 'package:flutter/material.dart';
import 'package:music_app/data/songs.dart';
import 'package:music_app/screens/lyrics_screen.dart';
import '../data/songs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Music'),
      ),
      body: SongList(),
    );
  }
}

class SongList extends StatelessWidget {
  const SongList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songTitles.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(songTitles[index]),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              print(songTitles[index]);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LyricsScreen(
                    id: index,
                    songTitle: songTitles[index],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
