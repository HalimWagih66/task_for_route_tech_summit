import 'package:flutter/material.dart';
import '../component/body_product_screen.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyProductScreen(),
    );
  }
}

