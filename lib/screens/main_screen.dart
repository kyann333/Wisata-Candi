import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
import 'package:wisata_candi/screens/home_screen.dart';
import 'package:wisata_candi/screens/profile_screen.dart';
import 'package:wisata_candi/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final Set<String> favoriteNames = {};

  void changeFavorite(Candi candi) {
    setState(() {
      if (favoriteNames.contains(candi.name)) {
        favoriteNames.remove(candi.name);
      } else {
        favoriteNames.add(candi.name);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final children = [
      HomeScreen(
        favoriteNames: favoriteNames,
        onFavoriteChanged: changeFavorite,
      ),
      SearchScreen(
        favoriteNames: favoriteNames,
        onFavoriteChanged: changeFavorite,
      ),
      FavoriteScreen(
        favoriteNames: favoriteNames,
        onFavoriteChanged: changeFavorite,
      ),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
