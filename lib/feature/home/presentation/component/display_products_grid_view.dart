import 'package:flutter/material.dart';
import 'package:task_for_route_tech_summit/feature/home/presentation/component/product_component.dart';
import '../../data/models/product_model.dart';
import '../cubits/product_cubit.dart';

class DisplayProductsGridView extends StatelessWidget {
  const DisplayProductsGridView({super.key, required this.cubit});
  final ProductCubit cubit;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8),
      itemCount: cubit.search!.length,
      itemBuilder: (context, index) {
        return ProductComponent(
          productModel: ProductModel(
            title: cubit.search![index].title,
            description: cubit.search![index].description,
            discountPercentage: cubit.search![index].discountPercentage,
            rating: cubit.search![index].rating,
            price: cubit.search![index].price,
            id: cubit.search![index].id,
            images: cubit.search![index].images
          ),
        );
      },
    );
  }
}
