import 'package:flutter/material.dart';
import 'package:webtu/features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: HomeViewBody(),
    );
  }
}
