import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutix/Screen/account/userprofile.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => RegisterState();
}

class RegisterState extends State<Register> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> _signupAccount() async {
    String fullname = _fullNameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();

    if (email.isEmpty || fullname.isEmpty || password.isEmpty) {
      _alertDialog('Error', 'Isi data diri dengan benar!');
    } else if (password != confirmPassword) {
      _alertDialog('Error', 'Password tidak sama');
    } else {
      bool emailUsed = await _isEmailUsed(email);

      if (emailUsed) {
        _alertDialog('Error', 'Email sudah digunakan!');
      } else {
        CollectionReference user =
            FirebaseFirestore.instance.collection('user');

        DateTime now = DateTime.now();
        Timestamp createdAt = Timestamp.fromDate(now);

        user.add({
          'name': fullname,
          'email': email,
          'password': password,
          'created_at': createdAt,
        }).then(
          (DocumentReference document) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterGenre(
                  fullname: fullname,
                ),
              ),
            );
            _alertDialog('Success', 'Berhasil membuat akun');
          },
        ).catchError(
          (e) {
            _alertDialog('Error', '$e');
          },
        );
      }
    }
  }

  Future<bool> _isEmailUsed(String email) async {
    CollectionReference user = FirebaseFirestore.instance.collection('user');

    QuerySnapshot querySnapshot =
        await user.where('email', isEqualTo: email).get();

    return querySnapshot.docs.isNotEmpty;
  }

  void _alertDialog(String title, String content) {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: Text(title),
          content: Text(
            content,
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            )
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF130B2B),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Your',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 241, 239, 236),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.account_circle,
                            size: 80,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom:
                            0, // Mengatur posisi ikon plus di bawah ikon person
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 186, 15, 132), // Warna lingkaran ikon plus
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 24,
                              color: Colors.yellow[800], // Warna ikon plus
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 16,
                ),
                Text('Full Name', style: TextStyle(color: Colors.white)),
                TextFormField(
                  controller: _fullNameController,
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Email Address', style: TextStyle(color: Colors.white)),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Password', style: TextStyle(color: Colors.white)),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Confirm Password', style: TextStyle(color: Colors.white)),
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Type here...',
                    hintStyle: TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow[800]!,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     TextButton(
                //       onPressed: () {
                //         Navigator.pop(context);
                //       },
                //       child: Text(
                //         'Lanjut ke Masuk',
                //         style: TextStyle(
                //           color: Colors.yellow[800],
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //     Container(
                //       decoration: BoxDecoration(
                //         color: Colors.yellow[800],
                //         shape: BoxShape.circle,
                //       ),
                //       child: TextButton(
                //         onPressed: () {
                //           _signupAccount();
                //         },
                //         child: Icon(
                //           Icons.navigate_next,
                //           color: Colors.white,
                //         ),
                //       ),
                //     )
                //   ],
                // ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFB6116B), // Hex untuk warna awal gradien
                          Color(0xFF3B1578), // Hex untuk warna akhir gradien
                        ],
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        _signupAccount();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors
                            .transparent, // Gunakan warna transparan untuk latar belakang tombol
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      ),
                      child: Text(
                        'Continue to Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
