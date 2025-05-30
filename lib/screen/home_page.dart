import 'package:flutter/material.dart';
import 'package:tune_play/models/item_model.dart';

import '../widgets/itemColors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<ColorModel> colors = const [
    ColorModel(colorItem: Colors.red, assSoud: 'sounds/note1.wav'),
    ColorModel(colorItem: Colors.orange, assSoud: 'sounds/note2.wav'),
    ColorModel(colorItem: Colors.yellow, assSoud: 'sounds/note3.wav'),
    ColorModel(colorItem: Colors.green, assSoud: 'sounds/note4.wav'),
    ColorModel(colorItem: Colors.teal, assSoud: 'sounds/note5.wav'),
    ColorModel(colorItem: Colors.blue, assSoud: 'sounds/note6.wav'),
    ColorModel(colorItem: Colors.purple, assSoud: 'sounds/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF253238),
        title: Text('Flutter Tune Player',style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.grey,
      ),

      // Used Map to add all colors in the list of colors variable
      body: Column(
        children: colors.map((e) => Itemcolors(colorModel: e),).toList(),
      )
      
      // body: Column(
      //   // build method for loop to add all colors in the list of colors variable
      //   children: buildItemColors(),
      // ),

      // Or Used List Builder
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return Itemcolors(colorModel: colors[index]);
      // }),
    );
  }

  List<Itemcolors> buildItemColors(){
    List<Itemcolors> colorsloop = [];

    for(int i = 0; i < colors.length; i++){
      colorsloop.add(Itemcolors(colorModel: colors[i]));
    }
    return colorsloop;
  }

}
