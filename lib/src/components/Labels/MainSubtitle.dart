import 'package:flutter/material.dart';

mainSubtitle(String subtitle) => Center(
      child: Container(
        child: Center(
          child: Text(
            subtitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        width: 250,
      ),
    );
