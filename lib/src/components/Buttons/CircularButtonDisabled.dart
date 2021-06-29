import 'package:flutter/material.dart';

Widget circularButtonDisabled(String innerText, String titleText) => Container(
      child: Column(
        children: [
          Text(
            titleText,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Text(
                innerText,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/botonCancelado.png"),
                  fit: BoxFit.fill),
              //color: Colors.red,
            ),
            height: 80,
            width: 80,
          ),
        ],
      ),
    );
