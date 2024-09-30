import 'package:flutter/material.dart';
import 'package:webtu/core/utils/app_colors.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.2,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: AppColors.kPrimaryColor,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/progress.jpg'),
          ),
        ),
      ),
    );
  }
}
