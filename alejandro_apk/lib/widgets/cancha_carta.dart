import 'package:flutter/material.dart';
/* import 'package:rating_bar/rating_bar.dart'; */

Container canchaCarta(BuildContext context, {required String linckImagen, required String titulo, required String descripcion, required String precio } ) {
    return Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.asset(
                  linckImagen,
                  height: 150,
                ),
              ),
              Text(
                titulo,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                descripcion, // "AV. calle de julio 7"
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              /* RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemSize: 16,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                onRatingUpdate: (rating) {},
              ), */
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    precio, // "\S/. 20"
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 96, 29, 24),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(255, 96, 29, 24),
                    size: 28,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }

