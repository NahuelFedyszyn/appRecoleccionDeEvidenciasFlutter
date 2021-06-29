import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButton.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButtonDisabled.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/Link.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/MainTitle.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Scaffold/ScaffoldBody.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Inputs/TextInput.dart';
import 'package:flutter/material.dart';

class RegistroFourth extends StatefulWidget {
  const RegistroFourth({Key? key}) : super(key: key);

  @override
  _RegistroFourthState createState() => _RegistroFourthState();
}

class _RegistroFourthState extends State<RegistroFourth> {
  @override
  Widget build(BuildContext context) {
    void handleContinuar =
        () => Navigator.pushNamed(context, "/RegistroMain/Fifth");

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
                  textInput("Barrio:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Calle:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Numero:"),
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
                  textInput("Barrio:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Calle:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Numero:"),
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
