import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:task_for_route_tech_summit/feature/home/presentation/component/shop_component.dart';
import '../../../../core/component/widget/custom_text_form_field.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../cubits/product_cubit.dart';

class SearchAndCartComponent extends StatelessWidget {
  const SearchAndCartComponent({
    super.key,
    required this.cubit,
  });

  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 9,
          child: SizedBox(
            height: 55.h,
            child: CustomTextField(
              onChange: (val){
                cubit.searchProduct(val);
              },
              hintText: AppStrings.hintSearch,
              prefixIcon: Icon(
                IconlyLight.search,
                size: 35.sp,
                color: AppColors.primary,
              ),
              borderRadius: BorderRadius.circular(50),
              coloBorder: AppColors.primary,
              colorEnabledBorder: AppColors.primary,
              colorFocusedBorder: AppColors.primary,
            ),
          ),
        ),
        const Flexible(child: ShopComponent()),
      ],
    );
  }
}
