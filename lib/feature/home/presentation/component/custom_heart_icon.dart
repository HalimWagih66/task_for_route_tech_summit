import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/product_model.dart';

class DisplayImageProduct extends StatelessWidget {
  const DisplayImageProduct({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(1.0),
      child: productModel.images[0].isNotEmpty ? Image.network(
        productModel.images[0],
        fit: BoxFit.cover,
        height: 80.w,
        width: double.infinity,
      ) : const Icon(
        Icons.error,
        size: 25,
      ),
    );
  }
}