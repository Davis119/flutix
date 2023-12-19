import 'package:flutix/Screen/wallet/success.dart';
import 'package:flutter/material.dart';

class Topup extends StatefulWidget {
  const Topup({super.key});

  @override
  State<Topup> createState() => _TopupState();
}

class _TopupState extends State<Topup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF130B2B),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Tambah Saldo',
          style: TextStyle(
            color: Color(0xFFf9f7f7),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white10,
        iconTheme: IconThemeData(
          color: Color(0xFFf9f7f7),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Text(
            'Jumlah',
          ),
          Container(
            width: 200,
            height: 80,
            child: TextFormField(
              style: TextStyle(color: Colors.black), // Warna teks
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white, // Warna latar belakang
                hintText: 'IDR',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  // Membuat border
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none, // Menghilangkan border
                ),
              ),
            ),
          ),
          Text('Atau'),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Color(0xffd9d9d9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        '25.000',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                  width: 100,
                  height: 80,
                  color: Color(0xffd9d9d9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        '50.000',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Color(0xffd9d9d9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        '100.000',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                  width: 100,
                  height: 80,
                  color: Color(0xffd9d9d9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        '150.000',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  color: Color(0xffd9d9d9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        '200.000',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                  width: 100,
                  height: 80,
                  color: Color(0xffd9d9d9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'IDR',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        '250.000',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Success()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors
                      .transparent, // Gunakan warna transparan untuk latar belakang tombol
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                child: Text(
                  'Top Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          
        ],
      ),
    );
  }
}