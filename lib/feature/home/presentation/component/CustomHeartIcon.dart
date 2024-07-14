import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/utils/app_colors.dart';

class CustomHeartIcon extends StatelessWidget {
  const CustomHeartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              IconlyLight.heart,
            ),
          ),
        ),
      ),
    );
  }
}


