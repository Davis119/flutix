import 'package:flutix/Screen/profile/edit.dart';
import 'package:flutix/Screen/splash/splash_screen.dart';
import 'package:flutix/Screen/wallet/wallet.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF130B2B),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[
           CircleAvatar(
  radius: 60,
  child: ClipOval(
    child: Image.network(
      'https://png.pngtree.com/png-clipart/20210711/original/pngtree-blank-whatsapp-bussiness-man-photo-profile-png-image_6512221.jpg',
      width: 2 * 60, // Lebar gambar = 2 * radius
      height: 2 * 60, // Tinggi gambar = 2 * radius
      fit: BoxFit.cover,
    ),
  ),
),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Text(
                    'Nama Pengguna',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Email Pengguna',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: Color(0xFFFFFFFF),
                    ),
                    label: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wallet()),
                      );
                    },
                    icon: Icon(
                      Icons.account_balance_wallet,
                      color: Color(0xFFFFFFFF),
                    ),
                    label: Text(
                      'My Wallet',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.language,
                      color: Color(0xFFFFFFFF),
                    ),
                    label: Text(
                      'language',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.help_center,
                      color: Color(0xFFFFFFFF),
                    ),
                    label: Text(
                      'Help Center',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                      );
                    },
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Color(0xFFFFFFFF),
                    ),
                    label: Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        );
  }
}
