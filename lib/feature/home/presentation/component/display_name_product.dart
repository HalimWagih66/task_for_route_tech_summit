import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/models/product_model.dart';

class DisplayNameProduct extends StatelessWidget {
  const DisplayNameProduct({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      productModel.title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(color: AppColors.primary, fontSize: 16.sp, fontWeight: FontWeight.w500),
    );
  }
}

