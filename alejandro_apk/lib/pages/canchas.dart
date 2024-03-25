import 'package:alejandro_apk/widgets/cajaContenido.dart';
import 'package:alejandro_apk/widgets/cancha_carta.dart';
import 'package:alejandro_apk/widgets/titulo.dart';
import 'package:flutter/material.dart';

class Canchas extends StatelessWidget {
  const Canchas({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'Inicio');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green),
                    ),
                    child: const Text(
                      'Salir',
                      style: TextStyle(
                        color: Color.fromARGB(255, 11, 11, 11),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.person_rounded,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 50,
                ),
              ],
            ),
            titulo(context, titulo: 'Cancha De Alejandro'),
            const SizedBox(height: 35),
            const Text(
              'Inicio    Buscar   Cancha       Buscar     Contacto:  989765897', // "\S/. 20"
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35),
            // Utilizando Expanded para dividir en dos columnas
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      cajaContenido(context, icono: 'buscar', dato: 'Buscar tipos de canchas'),
                      const SizedBox(height: 20),
                      canchaCarta(context,
                          linckImagen: 'assets/image/toro.jpeg',
                          titulo: 'El toro',
                          descripcion: 'AV.julio calle 7',
                          precio: 'S/. 40'),
                      const SizedBox(height: 47),
                      canchaCarta(context,
                          linckImagen: 'assets/image/el cesar.jpeg',
                          titulo: 'El cesar',
                          descripcion: 'av. sonomoro',
                          precio: 'S/. 35'),
                      const SizedBox(height: 47),
                      canchaCarta(context,
                          linckImagen: 'assets/image/toro.jpeg',
                          titulo: 'primax',
                          descripcion: 'jiron san martin',
                          precio: 'S/. 55'),
                      const SizedBox(height: 120),
                      ElevatedButton(
                        onPressed: () {
                          // Acción cuando se presione el botón "Reservar mi cancha"
                        },
                        child: Text(
                          'Reservar mi cancha',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      canchaCarta(context,
                          linckImagen: 'assets/image/primax.jpeg',
                          titulo: 'Bombonera',
                          descripcion: 'por colegio cesar',
                          precio: 'S/. 50'),
                      const SizedBox(height: 47),
                      canchaCarta(context,
                          linckImagen: 'assets/image/grass.jpg',
                          titulo: 'la vaca',
                          descripcion: 'Dirección de otro lugar',
                          precio: 'S/. 30'),
                      const SizedBox(height: 47),
                      canchaCarta(context,
                          linckImagen: 'assets/image/primax.jpeg',
                          titulo: 'El rayo',
                          descripcion: 'Dirección de otro lugar',
                          precio: 'S/. 25'),
                      const SizedBox(height: 47),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
