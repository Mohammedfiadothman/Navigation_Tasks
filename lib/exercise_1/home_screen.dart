import 'package:flutter/material.dart';
import 'details_screen.dart';

class Ex1HomeScreen extends StatelessWidget {
  const Ex1HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('الشاشة الرئيسية'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Ex1DetailsScreen()),
            );
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

          child: const Text(
            'الانتقال إلى شاشة التفاصيل',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
