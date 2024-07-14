import 'package:flutter/material.dart';
import '../cubits/product_cubit.dart';
import 'display_products_grid_view.dart';
import 'header_product_screen.dart';

class DisplayFieldSearchAndProducts extends StatelessWidget {
  const DisplayFieldSearchAndProducts({
    super.key,
    required this.cubit,
  });

  final ProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        HeaderProductScreen(cubit: cubit),
        // Products View
        Expanded(
            child: DisplayProductsGridView(cubit: cubit,)
        ),
      ],
    );
  }
}