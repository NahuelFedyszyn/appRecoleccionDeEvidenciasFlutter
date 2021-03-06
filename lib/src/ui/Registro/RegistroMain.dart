import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButton.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButtonDisabled.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/Link.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/MainTitle.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Scaffold/ScaffoldBody.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Inputs/TextInput.dart';
import 'package:flutter/material.dart';

class RegistroMain extends StatefulWidget {
  const RegistroMain({Key? key}) : super(key: key);

  @override
  _RegistroMainState createState() => _RegistroMainState();
}

class _RegistroMainState extends State<RegistroMain> {
  @override
  Widget build(BuildContext context) {
    void handleContinuar =
        () => Navigator.pushNamed(context, "/RegistroMain/Second");

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
                  textInput("Nombre:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Apellido:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("DNI:"),
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
                  textInput("Nombre:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Apellido:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("DNI:"),
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
