import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../cubits/product_cubit.dart';
import '../cubits/product_state.dart';
import 'custom_loading.dart';
import 'display_field_search_and_products.dart';

class BodyProductScreen extends StatelessWidget {
  const BodyProductScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: BlocConsumer<ProductCubit, ProductState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = BlocProvider.of<ProductCubit>(context);
          switch(state){
            case GetAllProductLoadingState():
            //display loading if there is no response from the server
              return const CustomLoading();
            case GetAllProductSuccessState():
            // Display data if data exists
              return DisplayFieldSearchAndProducts(cubit: cubit);
            case GetAllProductErrorState():
            // Display error message
              return Center(child: Text(state.errorMessage!));
            case SearchResultsState():
            //Show data if the products you are looking for exist
              return DisplayFieldSearchAndProducts(cubit: cubit);
          }
          return const SizedBox();
        },
      ),
    );
  }
}

