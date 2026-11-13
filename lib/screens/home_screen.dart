import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override 
  State<HomeScreen> createState() => _HomeScreenState();
}
  class _HomeScreenState extends State<HomeScreen>{
    @override 
    Widget build(BuildContext context) {
      return Scaffold(
        // Todo : 1 Buat appbar dengan Judul Wisata Candi
        // Todo : 2 Buat Body dengan GridView.builder
        // Todo : 3 Buat ItemCard sebagai return value dari GridView.builder
      );
    }
  }

