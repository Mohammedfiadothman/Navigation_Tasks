import 'package:flutter/material.dart';
import 'product_model.dart';
import 'product_details_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Product> products = [
    Product(
      name: 'لابتوب',
      description: 'لابتوب مخصص للمبرمجين',
      price: 1200.0,
    ),
    Product(name: 'شاشة', description: 'شاشة 27 بوصة بدقة 4K', price: 300.0),
    Product(
      name: 'لوحة مفاتيح',
      description: 'لوحة مفاتيح ميكانيكية',
      price: 80.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,

        centerTitle: true,
        title: const Text('قائمة المنتجات '),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            color: Colors.lightBlue,
            child: ListTile(
              title: Text(product.name),
              subtitle: Text('${product.price} \$'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsScreen(product: product),
                  ),
                );

                // التأكد من أن النتيجة غير فارغة وأن الشاشة لا زالت معروضة
                if (result != null && context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(result.toString()),
                      backgroundColor: Colors.lightBlue,
                      duration: const Duration(seconds: 3),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
