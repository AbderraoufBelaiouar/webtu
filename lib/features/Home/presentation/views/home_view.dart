import 'package:flutter/material.dart';
import 'package:webtu/features/Home/presentation/views/widgets/custom_navigation_bar.dart';
import 'package:webtu/features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: CustomBottomNavigationBar(
            selectedIndex: currentIndex,
            onItemTapped: (index) {
              currentIndex = index;
              setState(() {});
            },
          )),
      backgroundColor: const Color(0xFFF2F2F2),
      body: const HomeViewBody(),
    );
  }
}
