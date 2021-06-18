import 'package:flutter/material.dart';

mainTitle(String title) => Center(
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        height: 80,
      ),
    );
