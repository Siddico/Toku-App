import 'package:flutter/material.dart';
import 'package:toku/component/components.dart';
import '../models/ItemModel.dart';

// ignore: must_be_immutable
class ColorsScreen extends StatelessWidget {
  ColorsScreen({
    super.key,
  });

  final List<ItemModel> numbers = [
    ItemModel(
        image: "images/colors/color_red.png",
        engText: "red",
        jpnText: "akai",
        sound: "sounds/colors/red.wav"),
    ItemModel(
        image: "images/colors/color_black.png",
        engText: "black",
        jpnText: "kuroi",
        sound: "sounds/colors/black.wav"),
    ItemModel(
        image: "images/colors/color_brown.png",
        engText: "brown",
        jpnText: "kasshoku",
        sound: "sounds/colors/brown.wav"),
    ItemModel(
        image: "images/colors/color_dusty_yellow.png",
        engText: "dusty yellow",
        jpnText: "dusty yellow",
        sound: "sounds/colors/dusty yellow.wav"),
    ItemModel(
        image: "images/colors/color_gray.png",
        engText: "gray",
        jpnText: "haiiro",
        sound: "sounds/colors/gray.wav"),
    ItemModel(
        image: "images/colors/color_green.png",
        engText: "green",
        jpnText: "midori",
        sound: "sounds/colors/green.wav"),
    ItemModel(
        image: "images/colors/color_white.png",
        engText: "white",
        jpnText: "shiroi",
        sound: "sounds/colors/white.wav"),
    ItemModel(
        image: "images/colors/yellow.png",
        engText: "yellow",
        jpnText: "kiiro",
        sound: "sounds/colors/yellow.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff7d40a2),
        appBar: AppBar(
          shadowColor: Color(0xff7d40a2),
          backgroundColor: Color(0xff7d40a2),
          foregroundColor: Color(0xff7d40a2),
          surfaceTintColor: Color(0xff7d40a2),
          title: Text(
            'Colors',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return categoryOfItem(
              itemModel: numbers[index],
              color: Color(0xff7d40a2),
            );
          },
        ));
  }
}
