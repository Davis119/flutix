import 'package:flutter/material.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Detail tiket',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFf9f7f7),
          ),
        ),
        centerTitle: false,
      ),
      backgroundColor: Color(0xFF130B2B),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto Film
            Image.network(
              'https://akcdn.detik.net.id/community/media/visual/2023/08/24/film-terbaru-a-haunting-in-venice-2023.jpeg?w=620&q=90',
              width: 500,
              height: 300,
              //width: double.infinity,
              fit: BoxFit.cover,
            ),
            
            SizedBox(height: 16.0),

            // Nama Film
            Text(
              'Haunting in Venice',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8.0),

            // Rating Film
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.grey),
                SizedBox(width: 8.0),
                Text('4.0', style: TextStyle(fontSize: 16.0)),
              ],
            ),

            SizedBox(height: 16.0),


            // Get Genre
            // ElevatedButton(
            //   onPressed: () {
            //     // Handle Get Genre button click
            //   },
            //    style: ElevatedButton.styleFrom(
            //   primary: Color(0xFFB6116B), // Warna latar belakang
            // ),
            //   child:  Text(
            //   'Get Genre',
            //   style: TextStyle(
            //     color: Colors.white, // Warna teks
            //   ),
            // ),
            // ),

            SizedBox(height: 16.0),

            // Cinema, Date & Time, Seat, Name, Price
            Text('Cinema: Your Cinema'),
            Text('Date & Time: November 10, 2023 - 7:00 PM'),
            Text('Seat: A12, A13'),
            Text('Name: Your Name'),
            Text('Price: \$20.00'),

            SizedBox(height: 16.0),
          ],
        ),
      ), 
    );
  }
}