import 'package:flutter/material.dart';
import 'package:toku/component/components.dart';
import 'package:toku/models/DiffItemModel.dart';

// ignore: must_be_immutable
class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({
    super.key,
  });

  final List<DiffItemModel> numberss = [
    DiffItemModel(
        engText: "are you coming ",
        jpnText: "rai masu ka",
        sound: "sounds/phrases/are_you_coming.wav"),
    DiffItemModel(
        engText: "donnot forget to subscribe ",
        jpnText: "koudoku suru koto wa wasure nai de kudasai",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    DiffItemModel(
        engText: "how are you feeling ",
        jpnText: "choushi wa dou desu ka",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    DiffItemModel(
        engText: "i love anime ",
        jpnText: "anime ga daisuk",
        sound: "sounds/phrases/i_love_anime.wav"),
    DiffItemModel(
        engText: "i love programming ",
        jpnText: "watashi wa programming ga daisuk desu",
        sound: "sounds/phrases/i_love_programming.wav"),
    DiffItemModel(
        engText: " programming is easy ",
        jpnText: "programming wa kantan",
        sound: "sounds/phrases/programming_is_easy.wav"),
    DiffItemModel(
        engText: "what is your name ",
        jpnText: "anata no namae wa nani desu ka",
        sound: "sounds/phrases/what_is_your_name.wav"),
    DiffItemModel(
        engText: "where are you going ",
        jpnText: "doko ni iki masu ka",
        sound: "sounds/phrases/where_are_you_going.wav"),
    DiffItemModel(
        engText: "yes i am coming ",
        jpnText: "hai 、 rai te iya masu",
        sound: "sounds/phrases/yes_im_coming.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff47a5cb),
        appBar: AppBar(
          shadowColor: Color(0xff47a5cb),
          backgroundColor: Color(0xff47a5cb),
          foregroundColor: Color(0xff47a5cb),
          surfaceTintColor: Color(0xff47a5cb),
          title: Text(
            'Phrases',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView.builder(
          itemCount: numberss.length,
          itemBuilder: (context, index) {
            return categoryOfDiffItem(
              itemModell: numberss[index],
              color: Color(0xff47a5cb),
            );
          },
        ));
  }
}
