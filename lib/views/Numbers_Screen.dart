import 'package:flutter/material.dart';
import 'package:toku/component/components.dart';
import '../models/ItemModel.dart';

// ignore: must_be_immutable
class NumbersScreen extends StatelessWidget {
  NumbersScreen({
    super.key,
  });

  final List<ItemModel> numbers = [
    ItemModel(
        image: "images/numbers/number_one.png",
        engText: "one",
        jpnText: "ichi",
        sound: "sounds/numbers/number_one_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_two.png",
        engText: "two",
        jpnText: "ni",
        sound: "sounds/numbers/number_two_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_three.png",
        engText: "three",
        jpnText: "san",
        sound: "sounds/numbers/number_three_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_four.png",
        engText: "four",
        jpnText: "yon",
        sound: "sounds/numbers/number_four_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_five.png",
        engText: "five",
        jpnText: "go",
        sound: "sounds/numbers/number_five_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_six.png",
        engText: "six",
        jpnText: "roku",
        sound: "sounds/numbers/number_six_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_seven.png",
        engText: "seven",
        jpnText: "nana ",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_eight.png",
        engText: "eight",
        jpnText: "hachi ",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_nine.png",
        engText: "nine",
        jpnText: "kyuu",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    ItemModel(
        image: "images/numbers/number_ten.png",
        engText: "ten",
        jpnText: "juu",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff99531),
        appBar: AppBar(
          shadowColor: Color(0xfff99531),
          backgroundColor: Color(0xfff99531),
          foregroundColor: Color(0xfff99531),
          surfaceTintColor: Color(0xfff99531),
          title: Text(
            'Numbers',
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
              color: Color(0xfff99531),
            );
          },
        ));
  }
}
