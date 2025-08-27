import 'package:flutter/material.dart';
import 'package:playrev/components/nowPlaying.dart';

class IndexLayout extends StatefulWidget {
  const IndexLayout({super.key, required this.title});

  final String title;

  @override
  State<IndexLayout> createState() => _IndexLayout();
}

class _IndexLayout extends State<IndexLayout> {
  final List<Map<String, String>> songs = [
    {"title": "Starboy", "artist": "The Weeknd, Daft Punk", "image": "https://picsum.photos/id/1035/200/200"},
    {"title": "In the Name of Love", "artist": "Martin Garrix, Bebe Rexha", "image": "https://picsum.photos/id/1012/200/200"},
    {"title": "Let Me Love You", "artist": "DJ Snake, Justin Bieber", "image": "https://picsum.photos/id/1015/200/200"},
    {"title": "Closer", "artist": "The Chainsmokers, Halsey", "image": "https://picsum.photos/id/1016/200/200"},
    {"title": "My Way", "artist": "Calvin Harris", "image": "https://picsum.photos/id/1020/200/200"},
    {"title": "Hurts So Good", "artist": "Astrid S", "image": "https://picsum.photos/id/1024/200/200"},
    {"title": "Cold Water", "artist": "Major Lazer, Justin Bieber, MO", "image": "https://picsum.photos/id/1025/200/200"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        centerTitle: true,
        leading: Icon(Icons.list, size: 40, color: Theme.of(context).colorScheme.onPrimary,),
        title:  Text(
          "PlayRev",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontWeight: FontWeight.bold),
        ),
        actions:  [
          Icon(Icons.person, color: Theme.of(context).colorScheme.onPrimary, size: 40,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "My List",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                final song = songs[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  elevation: 4,
                  color: Theme.of(context).colorScheme.secondary,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(6),

                      child: Image.network("https://picsum.photos/id/1035/200/200", width: 50, height: 50, fit: BoxFit.cover),
                    ),
                    title: Text(song["title"]!, style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onPrimary)),
                    subtitle: Text(song["artist"]!, style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
                    trailing: Icon(Icons.more_vert, color: Theme.of(context).colorScheme.onPrimary),
                  ),
                );
              },
            ),
          ),
          // Bottom Now Playing
          NowPlaying(title: widget.title),
        ],
      ),
    );
  }
}