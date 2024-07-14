
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/utils/app_colors.dart';

class ShopComponent extends StatelessWidget {
  const ShopComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        IconlyLight.buy,
        size: 35.sp,
        color: AppColors.primary,
      ),
    );
  }
}
