import 'package:flutter/material.dart';
import 'package:toku/component/components.dart';
import '../models/ItemModel.dart';

// ignore: must_be_immutable
class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({
    super.key,
  });

  final List<ItemModel> numbers = [
    ItemModel(
        image: "images/family_members/family_daughter.png",
        engText: "family doughter",
        jpnText: "musume",
        sound: "sounds/family_members/daughter.wav"),
    ItemModel(
        image: "images/family_members/family_older_brother.png",
        engText: "older brother",
        jpnText: "ani",
        sound: "sounds/family_members/older bother.wav"),
    ItemModel(
        image: "images/family_members/family_older_sister.png",
        engText: "older sister",
        jpnText: "ane",
        sound: "sounds/family_members/older sister.wav"),
    ItemModel(
        image: "images/family_members/family_younger_brother.png",
        engText: "younger brother",
        jpnText: "otouto",
        sound: "sounds/family_members/younger brohter.wav"),
    ItemModel(
        image: "images/family_members/family_younger_sister.png",
        engText: "younger sister",
        jpnText: "imoto",
        sound: "sounds/family_members/younger sister.wav"),
    ItemModel(
        image: "images/family_members/family_son.png",
        engText: "son",
        jpnText: "musuko",
        sound: "sounds/family_members/son.wav"),
    ItemModel(
        image: "images/family_members/family_mother.png",
        engText: "mother",
        jpnText: "haha",
        sound: "sounds/family_members/mother.wav"),
    ItemModel(
        image: "images/family_members/family_father.png",
        engText: "father",
        jpnText: "chichi",
        sound: "sounds/family_members/father.wav"),
    ItemModel(
        image: "images/family_members/family_grandmother.png",
        engText: "grand mother",
        jpnText: "sobo",
        sound: "sounds/family_members/grand mother.wav"),
    ItemModel(
        image: "images/family_members/family_grandfather.png",
        engText: "grand father",
        jpnText: "sofu",
        sound: "sounds/family_members/grand father.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff528032),
        appBar: AppBar(
          shadowColor: Color(0xff528032),
          backgroundColor: Color(0xff528032),
          foregroundColor: Color(0xff528032),
          surfaceTintColor: Color(0xff528032),
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
              color: Color(0xff528032),
            );
          },
        ));
  }
}
