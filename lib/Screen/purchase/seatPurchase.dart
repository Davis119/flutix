import 'package:flutix/Screen/purchase/purchaseDetail.dart';
import 'package:flutter/material.dart';

class SeatPurchase extends StatefulWidget {
  const SeatPurchase({super.key});

  @override
  State<SeatPurchase> createState() => _SeatPurchaseState();
}

class _SeatPurchaseState extends State<SeatPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF130B2B),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: false,
        ),
        backgroundColor: Color(0xFF130B2B),
        body: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                height: 20,
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Layar Bioskop'),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Image(
                image: AssetImage('assets/images/Kursi-kursi.png'),
              ),
               SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
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
                        MaterialPageRoute(builder: (context) => PurchaseDetail()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .transparent, 
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    ),
                    child: Text(
                      'Confirm your book',
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
       );
  }
}
