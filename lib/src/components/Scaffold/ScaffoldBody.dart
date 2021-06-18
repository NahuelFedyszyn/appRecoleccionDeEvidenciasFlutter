import 'package:flutter/material.dart';

Widget scaffoldBody(Widget child) => Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
