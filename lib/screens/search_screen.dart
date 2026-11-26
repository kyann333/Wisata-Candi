import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/item_card.dart';

class SearchScreen extends StatefulWidget {
  final Set<String> favoriteNames;
  final ValueChanged<Candi> onFavoriteChanged;

  const SearchScreen({
    super.key,
    required this.favoriteNames,
    required this.onFavoriteChanged,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final result = candiList
        .where(
          (candi) =>
              candi.name.toLowerCase().contains(searchText.toLowerCase()),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Cari Candi')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Cari nama candi',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => setState(() => searchText = value),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: result.length,
              itemBuilder: (context, index) {
                final candi = result[index];
                return SizedBox(
                  height: 280,
                  child: ItemCard(
                    candi: candi,
                    isFavorite: widget.favoriteNames.contains(candi.name),
                    onFavoritePressed: () => widget.onFavoriteChanged(candi),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
