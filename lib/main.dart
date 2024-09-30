import 'package:flutter/material.dart';
import 'package:webtu/features/Home/presentation/views/home_view.dart';

void main() {
  runApp(const Webtu());
}

class Webtu extends StatelessWidget {
  const Webtu({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
