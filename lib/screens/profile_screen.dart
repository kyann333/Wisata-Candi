import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:wisata_candi/screens/sign_in_screen.dart';
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
import 'package:wisata_candi/widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = true;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;

  // TODO: 5. Implementasi fungsi signIn
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  // TODO: 6. Implementasi fungsi signOut
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO: 2. Buat bagian ProfileHeader yang berisi gambar profil
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
<<<<<<< HEAD
                            border: Border.all(color: Colors.deepPurple, width: 2),
=======
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            radius: 50,
<<<<<<< HEAD
                            backgroundImage:
                                AssetImage('images/placeholder_image.png'),
=======
                            backgroundImage: AssetImage(
                              'images/placeholder_image.png',
                            ),
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurple[50],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 4),
<<<<<<< HEAD
                
=======

>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
                // TODO: 3. Buat bagian ProfileInfo yang berisi info profil
                ProfileInfoItem(
                  icon: Icons.lock,
                  label: 'Pengguna',
                  value: userName,
                  iconColor: Colors.amber,
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 4),
                ProfileInfoItem(
                  icon: Icons.person,
                  label: 'Nama',
                  value: fullName,
                  showEditIcon: isSignedIn,
                  onEditPressed: () {
                    debugPrint('Icon edit ditekan ...');
                  },
                  iconColor: Colors.blue,
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 4),
                ProfileInfoItem(
                  icon: Icons.favorite,
                  label: 'Favorit',
                  value: favoriteCandiCount > 0 ? '$favoriteCandiCount' : '',
                  iconColor: Colors.red,
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                const SizedBox(height: 20),

                // TODO: 4. Buat ProfileActions yang berisi TextButton sign in/out
                isSignedIn
                    ? TextButton(
                        onPressed: signOut,
                        child: const Text('Sign Out'),
                      )
                    : TextButton(
<<<<<<< HEAD
                        onPressed: signIn,
=======
                        onPressed: () async {
                          final result = await Navigator.push<bool>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ),
                          );
                          if (result == true && mounted) {
                            signIn();
                          }
                        },
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
                        child: const Text('Sign In'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 3949607 ( penambahan tombol navigasi, detail dan mekanisme penghubungan)
