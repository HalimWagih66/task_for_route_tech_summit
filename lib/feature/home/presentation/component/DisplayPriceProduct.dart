import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/models/product_model.dart';

class DisplayPriceProduct extends StatelessWidget {
  const DisplayPriceProduct({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Text(
            'EGP: ${productModel.discountPercentage}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.primary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
            '${productModel.price} EGP',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: AppColors.lightBlue,
              fontSize: 14.sp,
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

