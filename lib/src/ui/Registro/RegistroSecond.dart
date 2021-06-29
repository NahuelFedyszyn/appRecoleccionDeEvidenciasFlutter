import 'package:app_recoleccion_de_evidencia/src/components/Buttons/CircularButton.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Inputs/DateInput.dart';
import 'package:app_recoleccion_de_evidencia/src/components/GenrePicker/GenrePicker.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/Link.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Labels/MainTitle.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Scaffold/ScaffoldBody.dart';
import 'package:app_recoleccion_de_evidencia/src/components/Inputs/TextInput.dart';
import 'package:flutter/material.dart';

class RegistroSecond extends StatefulWidget {
  const RegistroSecond({Key? key}) : super(key: key);

  @override
  _RegistroSecondState createState() => _RegistroSecondState();
}

class _RegistroSecondState extends State<RegistroSecond> {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  void doNothing = () => {};

  @override
  Widget build(BuildContext context) {
    void handleContinuar =
        () => Navigator.pushNamed(context, "/RegistroMain/Third");
    return Scaffold(
      body: scaffoldBody(Center(
        child: SafeArea(
          child: ListView(
            children: [
              mainTitle("Registro"),
              SizedBox(
                height: 50,
              ),
              dateInput(
                  "Nacimiento:",
                  "${selectedDate.toLocal()}".split(' ')[0],
                  () => _selectDate(context)),
              SizedBox(height: 10),
              textInput("Telefono:"),
              SizedBox(
                height: 10,
              ),
              genrePicker(() => doNothing, () => doNothing, () => doNothing),
              SizedBox(
                height: 50,
              ),
              circularButton("Continuar", "Siguiente", () => handleContinuar),
              SizedBox(
                height: 20,
              ),
              link("Iniciar sesión")
            ],
          ),
        ),
      )),
    );
  }
}
