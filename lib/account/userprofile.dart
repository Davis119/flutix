import 'package:flutix/Screen/account/confirmation.dart';
import 'package:flutter/material.dart';

class RegisterGenre extends StatefulWidget {
  const RegisterGenre({super.key, required this.fullname});
  final String fullname;
  @override
  State<RegisterGenre> createState() => _RegisterGenreState();
}

class _RegisterGenreState extends State<RegisterGenre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Select Your',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Genre',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(
                  child: Wrap(
                    // spacing: 5,
                    children: <Widget>[
                      Container(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/genre/horor.png'),
                                width: 150,
                                height: 150,
                              )),
                          Text('Horror')
                        ],
                      )),
                      Container(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/genre/music.jpg'),
                                width: 150,
                                height: 150,
                              )),
                          Text('Music')
                        ],
                      )),
                      Container(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/genre/tes2.jpg'),
                                width: 150,
                                height: 150,
                              )),
                          Text('Action')
                        ],
                      )),
                      Container(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/genre/drama.jpg'),
                                width: 150,
                                height: 150,
                              )),
                          Text('Drama')
                        ],
                      )),
                      Container(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/genre/war.jpg'),
                                width: 150,
                                height: 150,
                              )),
                          Text('War')
                        ],
                      )),
                      Container(
                          child: Column(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Image(
                                image: AssetImage('assets/genre/crime.jpg'),
                                width: 150,
                                height: 150,
                              )),
                          Text('Crime')
                        ],
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            gradient: LinearGradient(
                              colors: [
                                Color(
                                    0xFFB6116B), // Hex untuk warna awal gradien
                                Color(
                                    0xFF3B1578), // Hex untuk warna akhir gradien
                              ],
                            ),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterConfirm(
                                      fullname: widget.fullname),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 16),
                            ),
                            child: Text(
                              'Continue to Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
