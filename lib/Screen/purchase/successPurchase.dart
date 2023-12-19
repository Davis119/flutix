import 'package:flutix/Screen/dashboard/homescreen.dart';
import 'package:flutter/material.dart';

class SuccessPurchase extends StatefulWidget {
  const SuccessPurchase({Key? key}) : super(key: key);

  @override
  State<SuccessPurchase> createState() => _SuccessPurchaseState();
}

class _SuccessPurchaseState extends State<SuccessPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF130B2B),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Succes check out',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFf9f7f7),
          ),
        ),
        centerTitle: false,
      ),
      backgroundColor: Color(0xFF130B2B),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/lanjut.png'),
                width: 600,
                height: 250, 
              ),
              SizedBox(height: 16),
              Text(
                'Happy Watching!',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'You  Hape Succesfully    \n Bought The Ticket',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('My Ticket',
                style: TextStyle(color: Colors.white), 
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFB6116B),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  'Back To Home',
                  style: TextStyle(color: Color.fromRGBO(249, 245, 245, 1)), 
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 139, 136, 137), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
