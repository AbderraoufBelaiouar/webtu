import 'package:flutter/material.dart';
import 'package:webtu/features/Home/presentation/views/widgets/custom_logo.dart';
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
            ),
          ),
          ServicesGridView(),
        ],
      ),
    );
  }
}
