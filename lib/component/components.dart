import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toku/models/DiffItemModel.dart';
import 'package:toku/models/ItemModel.dart';

Widget categoryForHomePage(
        {required String text,
        required Color color,
        required String image,
        required Function() ontap}) =>
    GestureDetector(
      onTap: ontap,
      child: Container(
          height: 300,
          width: 150,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 216, 205, 205),
                backgroundImage: AssetImage(
                  image,
                ),
                radius: 70,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Cairo'),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );

Future NavigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));

Widget categoryOfItem({
  required ItemModel itemModel,
  required Color color,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8, top: 8),
    child: Container(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 212, 212, 212),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            child: Image.asset(
              itemModel.image!,
              width: 100,
              height: 100,
            ),
          ),
          Container(
            width: 185,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.engText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Cairo'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  itemModel.jpnText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Cairo'),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                final player = AudioPlayer();

                player.play((AssetSource(
                  itemModel.sound!,
                )));
              },
              child: Container(
                width: 75,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 212, 212),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Image.asset(
                  'images/homepage/audio-waves.png',
                  height: 50,
                  width: 50,
                ),
              ))
        ],
      ),
    ),
  );
}

Widget categoryOfDiffItem({
  required DiffItemModel itemModell,
  required Color color,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8, top: 8),
    child: Container(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 285,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModell.engText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Cairo'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  itemModell.jpnText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: 'Cairo'),
                ),
              ],
            ),
          ),
          GestureDetector(
              onTap: () {
                final player = AudioPlayer();

                player.play((AssetSource(
                  itemModell.sound!,
                )));
              },
              child: Container(
                width: 75,
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 212, 212, 212),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Image.asset(
                  'images/homepage/audio-waves.png',
                  height: 50,
                  width: 50,
                ),
              ))
        ],
      ),
    ),
  );
}
