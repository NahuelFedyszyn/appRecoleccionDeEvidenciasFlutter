import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButton.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButtonDisabled.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/Link.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/MainTitle.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Scaffold/ScaffoldBody.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Inputs/TextInput.dart';
import 'package:flutter/material.dart';

class RegistroThird extends StatefulWidget {
  const RegistroThird({Key? key}) : super(key: key);

  @override
  _RegistroThirdState createState() => _RegistroThirdState();
}

class _RegistroThirdState extends State<RegistroThird> {
  @override
  Widget build(BuildContext context) {
    void handleContinuar =
        () => Navigator.pushNamed(context, "/RegistroMain/Fourth");

    if (true) {
      return Scaffold(
        body: scaffoldBody(
          Center(
            child: SafeArea(
              child: ListView(
                children: [
                  mainTitle("Registro"),
                  SizedBox(
                    height: 50,
                  ),
                  textInput("Correo electronico:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Provincia:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Ciudad:"),
                  SizedBox(
                    height: 80,
                  ),
                  circularButton(
                      "Continuar", "Siguiente", () => handleContinuar),
                  SizedBox(
                    height: 20,
                  ),
                  link("Iniciar Sesión"),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: scaffoldBody(
          Center(
            child: SafeArea(
              child: ListView(
                children: [
                  mainTitle("Registro"),
                  SizedBox(
                    height: 50,
                  ),
                  textInput("Correo electronico:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Provincia:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Ciudad:"),
                  SizedBox(
                    height: 80,
                  ),
                  circularButtonDisabled("Continuar", "Siguiente"),
                  SizedBox(
                    height: 20,
                  ),
                  link("Iniciar Sesión")
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
