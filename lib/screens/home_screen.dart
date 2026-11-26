import 'package:flutter/material.dart';
<<<<<<< HEAD
// Import file data candi dan ItemCard Anda di sini, contoh:
// import 'models/candi.dart';
// import 'widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}); // Perbaikan: spasi berlebih dihilangkan

  @override 
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      // Todo: 1 Buat appbar dengan Judul Wisata Candi
      appBar: AppBar(
        title: const Text('Wisata Candi'), // Perbaikan teks dari 'cande'
      ),
      // Todo: 2 & 3 Buat Body dengan GridView.builder dan ItemCard
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Menampilkan 2 kolom ke samping
          crossAxisSpacing: 8, // Jarak antar kolom
          mainAxisSpacing: 8,  // Jarak antar baris
          childAspectRatio: 3 / 4, // Perbandingan lebar dan tinggi item
        ),
        itemCount: 10, // Ganti dengan panjang data asli Anda, misal: candiList.length
        itemBuilder: (context, index) {
          // TODO: Ambil data spesifik berdasarkan index, lalu pasang ke ItemCard
          // final candi = candiList[index];
          
          // return ItemCard(candi: candi);
          
          // Contoh placeholder jika ItemCard belum dipanggil dengan data:
          return const Card(
            child: Center(child: Text('Item Card')),
=======
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  final Set<String> favoriteNames;
  final ValueChanged<Candi> onFavoriteChanged;

  const HomeScreen({
    super.key,
    required this.favoriteNames,
    required this.onFavoriteChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wisata Candi')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 3 / 4,
        ),
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          final candi = candiList[index];
          return ItemCard(
            candi: candi,
            isFavorite: favoriteNames.contains(candi.name),
            onFavoritePressed: () => onFavoriteChanged(candi),
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
          );
        },
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
