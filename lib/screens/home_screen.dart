import 'package:flutter/material.dart';
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
          );
        },
      ),
    );
  }
}
