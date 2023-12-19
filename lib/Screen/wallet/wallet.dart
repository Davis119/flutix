import 'package:flutix/Screen/wallet/topup.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dompet',
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
      backgroundColor: Color(0xFF130B2B),
      body: Center(
        child: Column(
          children: [
            
            SizedBox(
              height: 50,
            ),
            Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(color: Color(0xFFf9f7f7)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/icon-wallet.png',
                            width: 11.16 * 8,
                            height: 4.77 * 8,
                          ),
                          SizedBox(width: 8), // Jarak antara Icon dan Text

                          // Transform.rotate(
                          //   angle: 90 * 3.141592653589793 / 180,
                            
                          // ),
                          
                          SizedBox(width: 2), // Jarak antara Icon dan Text
                          Text(
                            'Balance',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        'IDR 280.094.000',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Divider(),
                      Text(
                        'Available Balance',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 24,
            ),
            Text(
              'Riwayat Transaksi',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFB6116B),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Topup()));
        },
        child: Icon(
          Icons.add,
          color: Colors.white, // Warna ikon
        ),
      ),
    );
  }
}