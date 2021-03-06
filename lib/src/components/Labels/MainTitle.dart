import 'package:flutter/material.dart';

mainTitle(String title) => Center(
      child: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
