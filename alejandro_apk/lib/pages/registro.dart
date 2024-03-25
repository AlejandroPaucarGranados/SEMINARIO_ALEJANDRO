import 'package:alejandro_apk/widgets/botons.dart';
import 'package:alejandro_apk/widgets/btn_borde_button.dart';
import 'package:alejandro_apk/widgets/btn_cambiarFormulaio.dart';
import 'package:alejandro_apk/widgets/cajaContenido.dart';
import 'package:alejandro_apk/widgets/imgCirculo.dart';
import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300], // Color de fondo plomo para todo el body
        child: Stack(
          children: [
            imgCirculo(),
            Positioned(
              top: (MediaQuery.of(context).size.height - 539) / 2,
              left: (MediaQuery.of(context).size.width - 364) / 2,
              child: Container(
                width: 364,
                height: 539,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 127, 197, 210),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 76, 148, 148),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Btn_bordebutton(context, texto: 'Iniciar Sesion', pagina: 'Login'),
                            Btn_cambiarformulario(context, texto: 'Registrarse', pagina: 'Registro')
                          ],
                        ),
                      ),
                      const SizedBox(height: 70),
                      cajaContenido(context, icono: 'persona', dato: 'Nombre Completo'),
                      const SizedBox(height: 20),
                      cajaContenido(context, icono: 'persona', dato: 'Usuario'),
                      const SizedBox(height: 20),
                      cajaContenido(context, icono: 'contraseña', dato: 'Contraseña'),
                      const SizedBox(height: 20),
                      cajaContenido(context, icono: 'celular', dato: 'Celular'),
                      const SizedBox(height: 20),
                      botons(context, texto: 'Regístrate', pagina: 'Login')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}