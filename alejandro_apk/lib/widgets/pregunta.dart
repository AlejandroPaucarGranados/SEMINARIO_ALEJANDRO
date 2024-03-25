import 'package:flutter/material.dart';

Positioned pregunta(BuildContext context, {required String texto}) {
  return Positioned(
    bottom: 200, // Modifica este valor según tu diseño
    left: 16,
    right: 16,
    child: SizedBox(
      width: 208, // Ancho del botón
      height: 50, // Altura del botón
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
              color: Color.fromARGB(255, 230, 233, 234),
              fontSize: 20,
            ),
          ),
        ),
      ),
    ),
  );
}

