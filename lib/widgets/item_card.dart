import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  //TODO: 1 Deklarasikan Variabel yang dibutuhkan dan pasang pada konstruktor

  const ItemCard({super.key});

  @override
  widget build(BuildContext context) {
    return Card(
      //TODO: 2. Tetapkan parameter shape, margin, dan elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(4)
      elevation: 1,
      child: Column(
        children: [
          //TODO: 3 Buat Image sebagai anak dari column
          //TODO: 4 Buat Image sebagai anak dari column
          //TODO: 5 Buat Image sebagai anak dari column
        ]
      )
    )
  }
}