import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_for_route_tech_summit/feature/home/presentation/component/search_and_cart_component.dart';

import '../../../../core/utils/app_assets.dart';
import '../cubits/product_cubit.dart';

class HeaderProductScreen extends StatelessWidget {
  const HeaderProductScreen({
    super.key,
    required this.cubit,
  });

  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60.h,
        ),

        // Logo App
        Image.asset(
          AppAssets.appLogoSvg,
          width: 70.w,
        ),

        SizedBox(
          height: 10.h,
        ),

        // Search Product And Add Product To Cart
        SearchAndCartComponent(
          cubit: cubit,
        ),
      ],
    );
  }
}