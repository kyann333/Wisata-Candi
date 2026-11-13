import 'package:flutter/material.dart';
// Import file model Candi Anda di sini, contoh:
// import 'models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO: 1 Deklarasikan Variabel yang dibutuhkan dan pasang pada konstruktor
  final dynamic candi; // Ganti 'dynamic' dengan tipe objek Anda (misal: Candi)

  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) { // Perbaikan: 'Widget' huruf W besar
    return Card(
      // TODO: 2. Tetapkan parameter shape, margin, dan elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(4), // Perbaikan: ditambah koma (,)
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO: 3 Buat Image sebagai anak dari column
          Expanded(
            // TODO: 7. implementasi hero animation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset( // Perbaikan: 'Image.asset' huruf I besar
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover, // Tambahan opsional agar gambar rapi
              ),
            ),
          ),
        ],
      ),
    ); // Perbaikan: Kurung tutup dan titik koma yang kurang
  }
}