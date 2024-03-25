import 'package:alejandro_apk/pages/canchas.dart';
import 'package:alejandro_apk/pages/inicio.dart';
import 'package:alejandro_apk/pages/login.dart';
import 'package:alejandro_apk/pages/registro.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> rutas = {
  'Inicio': (context) => const Inicio(),
  'Registro': (context) => const Registro(),
  'Login': (context) => const Login(),
  'Canchas': (context) => const Canchas(),
};