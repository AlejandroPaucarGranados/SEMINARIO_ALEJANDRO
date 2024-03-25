import 'package:alejandro_apk/widgets/fondo.dart';
import 'package:alejandro_apk/widgets/loginButton.dart';
import 'package:alejandro_apk/widgets/pregunta.dart';
import 'package:alejandro_apk/widgets/titulo.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
  fit: StackFit.expand,
  children: [
    fondo(),
    titulo(context, titulo: 'Cancha De Alejandro'),
    loginButton(context, texto: 'INICIAR SESION'),
    pregunta(context, texto: 'REGISTRARME'),
  ],
),
    );
  }
}