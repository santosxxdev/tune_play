import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/item_model.dart';

class Itemcolors extends StatelessWidget {
  final ColorModel colorModel;

  const Itemcolors({super.key, required this.colorModel});


  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: GestureDetector(
        onTap: () async {
          final player = AudioPlayer();
          await player.play(AssetSource(colorModel.assSoud));
        },
        child: Container(
          height: 100,
          color: colorModel.colorItem,
        ),
      ),
    );
  }
}
