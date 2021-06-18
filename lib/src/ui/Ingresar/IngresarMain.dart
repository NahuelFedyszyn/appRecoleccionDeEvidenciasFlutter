import 'package:app_recoleccion_de_evidencia/src/components/CircularButton.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Link.dart';
import 'package:app_recoleccion_de_evidencia/src/components/MainTitle.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Scaffold/ScaffoldBody.dart';
import 'package:flutter/material.dart';

class IngresarMain extends StatelessWidget {
  const IngresarMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleTap() => Navigator.pushNamed(context, "/RegistroMain");

    return Scaffold(
        body: scaffoldBody(
      Center(
        child: SafeArea(
          child: ListView(
            children: [
              mainTitle("Ingresar"),
              SizedBox(
                height: 10,
              ),
              Image.asset("images/imagenLogin.png"),
              SizedBox(
                height: 20,
              ),
              circularButton("Iniciar", "Iniciar sesión", () => handleTap),
              SizedBox(
                height: 20,
              ),
              link("Registrarme")
            ],
          ),
        ),
      ),
    ));
  }
}
