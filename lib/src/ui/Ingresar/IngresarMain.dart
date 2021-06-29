import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButton.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/Link.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/MainSubtitle.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/MainTitle.dart';
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
              mainSubtitle(
                  "Bienvenido, por favor registrate o inicia sesión para empezar."),
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
