import 'package:flutter/material.dart';
import 'package:wisata_candi/screens/profile_screen.dart'; // Bisa diganti sign_in_screen.dart jika diperlukan

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
        // Pengaturan tema aplikasi sesuai modul Wisata Candi
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.deepPurple),
          titleTextStyle: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple).copyWith(
          primary: Colors.deepPurple,
          surface: Colors.deepPurple[50],
        ),
        useMaterial3: true,
      ),
      // Menjadikan ProfileScreen sebagai halaman awal aplikasi (home)
      home: const ProfileScreen(),
    );
  }
}