import 'package:flutter/material.dart';
import 'package:webtu/core/utils/app_colors.dart';
import 'package:webtu/features/Home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:webtu/features/Home/presentation/views/widgets/services_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: HomeViewAppBar(),
          ),
          SliverToBoxAdapter(
            child: CustomLogo(),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 10,
          )),
          ServicesGridView(),
        ],
      ),
    );
  }
}

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
