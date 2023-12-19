import 'package:flutix/Screen/purchase/successPurchase.dart';
import 'package:flutter/material.dart';

class PurchaseDetail extends StatefulWidget {
  const PurchaseDetail({super.key});

  @override
  State<PurchaseDetail> createState() => _PurchaseDetailState();
}

class _PurchaseDetailState extends State<PurchaseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF130B2B),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Check Out',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFf9f7f7),
          ),
        ),
        centerTitle: false,
      ),
      backgroundColor: Color(0xFF130B2B),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Check details below \nbefore checkout',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/don1.jpg'),
                      width: 70,
                      height: 90,
                    ),
                    SizedBox(width: 18),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DON'),
                        Text('Komedi'),
                        Text('******    7/10'),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(),
              Text('ID Order                              2208199612389'),
              SizedBox(height: 18),
              Text('Cinema                          paris van java mall'),
              SizedBox(height: 18),
              Text('Date & Time                            sat,21-12-00'),
              SizedBox(height: 18),
              Text('2 Tickets                                     C1,C2'),
              SizedBox(height: 18),
              Text('Seat                                   Rp 500.000X2'),
              SizedBox(height: 18),
              Text('Fees                                    Rp20.0000X2'),
              SizedBox(height: 18),
              Text('Total                                  Rp,1,200.000'),
              SizedBox(height: 18),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Saldo Wallet'),
                        Text('Rp. {80.000}'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFB6116B),
                              Color(0xFF3B1578),
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SuccessPurchase(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16),
                          ),
                          child: Text(
                            'Checkout Now',
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
            ],
          ),
        ),
      ),
    );
  }
}
