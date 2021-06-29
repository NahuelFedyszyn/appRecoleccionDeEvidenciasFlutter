import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget genrePickerButton(String imagePath, String title, Function callback) =>
    GestureDetector(
      onTap: callback(),
      child: Container(
          child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover),
                  color: Colors.transparent),
              height: 36,
              width: 36,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      )),
    );
