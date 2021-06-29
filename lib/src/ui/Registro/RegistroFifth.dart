import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButton.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButtonDisabled.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Inputs/PasswordInput.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/Link.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/MainTitle.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Scaffold/ScaffoldBody.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Inputs/TextInput.dart';
import 'package:flutter/material.dart';

class RegistroFifth extends StatefulWidget {
  const RegistroFifth({Key? key}) : super(key: key);

  @override
  _RegistroFifthState createState() => _RegistroFifthState();
}

class _RegistroFifthState extends State<RegistroFifth> {
  @override
  Widget build(BuildContext context) {
    void handleContinuar =
        () => {}; //Navigator.pushNamed(context, "/RegistroMain/Third");

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
                  passwordInput("Contraseña:"),
                  SizedBox(
                    height: 10,
                  ),
                  passwordInput("Repetir Contraseña"),
                  SizedBox(
                    height: 150,
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
                  textInput("Contraseña:"),
                  SizedBox(
                    height: 10,
                  ),
                  textInput("Repetir Contraseña"),
                  SizedBox(
                    height: 130,
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
    }
  }
}
