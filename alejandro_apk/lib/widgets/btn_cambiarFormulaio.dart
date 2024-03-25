// ignore: file_names
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Expanded Btn_cambiarformulario(BuildContext context, {required String texto, required String pagina}) {
    return Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, pagina);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 12, 19, 13),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Text(
                            texto,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
  }