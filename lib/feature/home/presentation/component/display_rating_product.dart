import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:task_for_route_tech_summit/feature/home/data/models/product_model.dart';

import '../../../../core/utils/app_colors.dart';

class DisplayRatingProduct extends StatelessWidget {
  const DisplayRatingProduct({
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
            'Review (${productModel.rating})',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(
                color: AppColors.primary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(
            IconlyBold.star,
            size: 20.sp,
            color: AppColors.yellow,
          ),
          SizedBox(
            width: 4.w,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(50),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.add,
                  color: AppColors.white,
                  size: 19.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

