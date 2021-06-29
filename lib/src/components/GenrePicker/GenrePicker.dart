import 'package:app_recoleccion_de_evidencia/src/components/GenrePicker/GenrePickerButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget genrePicker(
        Function femalePress, Function malePress, Function otherPress) =>
    Container(
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      TextField(
                        style: TextStyle(color: Colors.white, fontSize: 1),
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            labelText: "Genero:",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            contentPadding:
                                EdgeInsets.only(bottom: 0, top: 10)),
                        readOnly: true,
                      ),
                      Row(
                        children: [
                          genrePickerButton(
                              "images/mujer.png", "Mujer", () => femalePress),
                          SizedBox(
                            width: 5,
                          ),
                          genrePickerButton(
                              "images/hombre.png", "Hombre", () => malePress),
                          SizedBox(
                            width: 5,
                          ),
                          genrePickerButton(
                              "images/otros.png", "Otros", () => otherPress),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )
                    ],
                  ),
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(1, 1, 33, 100),
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.2, 0.2),
                          spreadRadius: 0.2)
                    ],
                  ),
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 0),
                ),
                SizedBox(
                  width: 150,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
