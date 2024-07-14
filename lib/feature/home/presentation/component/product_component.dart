import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/models/product_model.dart';
import 'CustomHeartIcon.dart';
import 'DisplayPriceProduct.dart';
import 'display_image_product.dart';
import 'display_name_product.dart';
import 'display_rating_product.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({
    super.key,
    required this.productModel
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      height: 250.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.lightBlue,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [

            // Image And Heart Icon
            Stack(
              children: [
                // Image And Error Image
                DisplayImageProduct(productModel: productModel),

                // Heart Icon
                const CustomHeartIcon()
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // display Name Product
                  DisplayNameProduct(productModel: productModel),
                  // Desc Product
                  Text(
                    productModel.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.primary,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),

                  SizedBox(
                    height: 10.h,
                  ),

                  // Price
                  DisplayPriceProduct(productModel: productModel),

                  SizedBox(
                    height: 10.h,
                  ),

                  // Rating
                  DisplayRatingProduct(productModel: productModel),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

