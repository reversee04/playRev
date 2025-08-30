import 'package:flutter/material.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({super.key, required this.title});

  final String title;

  @override
  State<NowPlaying> createState() => _NowPlaying();
}

class _NowPlaying extends State<NowPlaying>{
  @override
  Widget build(BuildContext context){
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(top: BorderSide(color: colorScheme.outline.withOpacity(0.2))),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://picsum.photos/id/1035/200/200",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("This Girl", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                )
                ),
                Text("Kungs",
                    style: TextStyle(
                      color: colorScheme.onSurface.withOpacity(0.7),
                    )
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon:  Icon(Icons.skip_previous, color: colorScheme.onSurface,),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.play_circle_fill, size: 36, color: Colors.pink),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.skip_next, color: colorScheme.onSurface),
          ),
        ],
      ),
    );
  }
}