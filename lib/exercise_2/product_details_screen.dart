import 'package:flutter/material.dart';
import 'product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product; // استقبال البيانات من الشاشة السابقة

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.image,
              size: 100,
              color: Colors.grey,
            ), // صورة افتراضية
            const SizedBox(height: 20),
            Text(
              'الاسم: ${product.name}',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'الوصف: ${product.description}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'السعر: \$${product.price}',
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Pop مع إرسال بيانات (رسالة) إلى الشاشة السابقة
                  Navigator.pop(
                    context,

                    "تم الرجوع بنجاح من منتج: ${product.name}",
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.lightBlue,
                ),

                child: const Text(
                  'رجوع مع تأكيد',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
