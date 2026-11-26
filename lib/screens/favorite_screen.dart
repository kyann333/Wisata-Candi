import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/item_card.dart';

class FavoriteScreen extends StatelessWidget {
  final Set<String> favoriteNames;
  final ValueChanged<Candi> onFavoriteChanged;

  const FavoriteScreen({
    super.key,
    required this.favoriteNames,
    required this.onFavoriteChanged,
  });

  @override
  Widget build(BuildContext context) {
    final favorites = candiList
        .where((candi) => favoriteNames.contains(candi.name))
        .toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Candi Favorit')),
      body: favorites.isEmpty
          ? const Center(child: Text('Belum ada candi favorit'))
          : ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final candi = favorites[index];
                return SizedBox(
                  height: 280,
                  child: ItemCard(
                    candi: candi,
                    isFavorite: true,
                    onFavoritePressed: () => onFavoriteChanged(candi),
                  ),
                );
              },
            ),
    );
  }
}
