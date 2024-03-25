// ignore: file_names
import 'package:flutter/material.dart';

Positioned loginButton(BuildContext context, {required String texto}) {
  return Positioned(
    bottom: 200, // Modifica este valor según tu diseño
    left: 16,
    right: 16,
    child: SizedBox(
      width: 200, // Ancho del botón
      height: 300, // Altura del botón
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'Login');
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 44, 93, 185),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24), // Radio del botón
              ),
            ),
          ),
          child: Text(
            texto,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  );
}
