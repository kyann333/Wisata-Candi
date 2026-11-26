import 'package:flutter/material.dart';
<<<<<<< HEAD
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
=======
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  final Candi candi;
  final bool isFavorite;
  final VoidCallback? onFavoritePressed;

  const ItemCard({
    super.key,
    required this.candi,
    this.isFavorite = false,
    this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(4),
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                candi: candi,
                isFavorite: isFavorite,
                onFavoritePressed: onFavoritePressed,
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: candi.name,
                child: Image.network(
                  candi.imageAsset,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: Icon(Icons.temple_hindu, size: 56)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 4, 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      candi.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: onFavoritePressed,
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
