import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:myapp8/models/number.dart';

class Itemnumber extends StatelessWidget {
  const Itemnumber({super.key, required this.number, required this.color});
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100.0,
      child: Row(
        children: [
          Container(
            color: Colors.grey[300],
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 24.0),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 24.0),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            icon: const Icon(
              Icons.play_arrow,
              size: 30.0,
            ),
            onPressed: () {
              try {
                AudioPlayer player = AudioPlayer();
                player.play(AssetSource(number.sound));
              } catch (ex) {
                print(ex);
              }
            },
          ),
        ],
      ),
    );
  }
}
