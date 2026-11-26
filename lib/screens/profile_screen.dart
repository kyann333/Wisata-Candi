import 'package:flutter/material.dart';
import 'package:wisata_candi/screens/sign_in_screen.dart';
import 'package:wisata_candi/widgets/profile_info_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSignedIn = true;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;

  void signIn() => setState(() => isSignedIn = true);
  void signOut() => setState(() => isSignedIn = false);

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
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            radius: 50,
                            child: Icon(Icons.person, size: 56),
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
                  onEditPressed: () => debugPrint('Icon edit ditekan ...'),
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
                isSignedIn
                    ? TextButton(
                        onPressed: signOut,
                        child: const Text('Sign Out'),
                      )
                    : TextButton(
                        onPressed: () async {
                          final result = await Navigator.push<bool>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInScreen(),
                            ),
                          );
                          if (result == true && mounted) signIn();
                        },
                        child: const Text('Sign In'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
