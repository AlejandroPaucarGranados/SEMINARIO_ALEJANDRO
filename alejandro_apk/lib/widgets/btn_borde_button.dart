import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Expanded Btn_bordebutton(BuildContext context,
    {required String texto, required String pagina}) {
  return Expanded(
    child: ElevatedButton(
      onPressed: () {
        // Navegar a la página de inicio de sesión al presionar el botón
        Navigator.pushNamed(context, pagina);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 5, 7, 5),
            width: 2,
          ),
        ),
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}