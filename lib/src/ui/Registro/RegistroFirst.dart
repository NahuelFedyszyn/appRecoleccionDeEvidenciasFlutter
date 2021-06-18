import 'package:app_recoleccion_de_evidencia/src/constants/k_styles.dart';
import 'package:flutter/material.dart';

class RegistroFirst extends StatefulWidget {
  const RegistroFirst({Key? key}) : super(key: key);

  @override
  _RegistroFirstState createState() => _RegistroFirstState();
}

class _RegistroFirstState extends State<RegistroFirst> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Nombre:",
                  labelStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                decoration: inputTextDecoration("Apellido:"),
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "DNI:",
                    labelStyle: TextStyle(color: Colors.white)),
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
